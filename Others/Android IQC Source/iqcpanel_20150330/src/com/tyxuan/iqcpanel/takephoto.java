package com.tyxuan.iqcpanel;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import android.app.Activity;
import android.app.ProgressDialog;
import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.SensorManager;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.tyxuan.iqcpanel.R.color;



public class takephoto extends AbstractMainActivity  {
	static Activity takephotoActivity;
	//
	private String Shoe_Folder="";
	private Camera camera;
	private String upLoadServerUri = URL+"UploadFile.aspx";
	private int serverResponseCode = 0;
	private String imagepath=null;
	public static int ORIENTATION = 0;
	public int mScreenExifOrientation=0;
	private OrientationEventListener myOrientationEventListener;
	//Overlap
	//private Bitmap bitmap;
	public SurfaceView surfaceView=null;
	public DrawOnTop mDraw;
	public int PosX=200;
	public int PosY=200;
	public boolean IsDrawCircle=false;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);	
		takephotoActivity=this;	
		//SCREEN_ORIENTATION_FULL_SENSOR|SCREEN_ORIENTATION_PORTRAIT =>No use onConfigurationChanged function
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
		//GetUserID
		Bundle params = this.getIntent().getExtras();
		UserID= params.getString("UserID");
		UserPW= params.getString("UserPW");
		Shoe_Folder= params.getString("Shoe_Folder");
		//
        surfaceView = (SurfaceView) this.findViewById(R.id.surfaceview);
        
        //
		ImageView backimg=(ImageView)findViewById(R.id.backimg);
		backimg.setOnClickListener(this); 
		ImageView saveimg=(ImageView)findViewById(R.id.saveimg);
		saveimg.setVisibility(4);	
		ImageView cameraimg=(ImageView)findViewById(R.id.cameraimg);  
		cameraimg.setVisibility(4);
        //take photo
		ImageView takephotoimg=(ImageView)findViewById(R.id.takephotoimg);
		takephotoimg.setOnClickListener(this);   
        //drawcycle
		ImageView drawcircleimg=(ImageView)findViewById(R.id.drawcircleimg);
		drawcircleimg.setOnClickListener(this);		
		//exit
		ImageView exitimg=(ImageView)findViewById(R.id.exitimg);
		exitimg.setOnClickListener(this);
        //
		surfaceView.getHolder().setType(SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS);
		surfaceView.getHolder().setFixedSize(512, 384);
		surfaceView.getHolder().setKeepScreenOn(true);
		surfaceView.getHolder().addCallback(new SurfaceCallback());	
		//moblie Ratate identify
		myOrientationEventListener = new OrientationEventListener(takephoto.this,SensorManager.SENSOR_DELAY_NORMAL) {
			@Override
			public void onOrientationChanged(int i) {
				if(45 <= i && i < 135) {
                    mScreenExifOrientation = ExifInterface.ORIENTATION_ROTATE_180;
                    ORIENTATION=180; //right
                } else if(135 <= i && i < 225) {
                    mScreenExifOrientation = ExifInterface.ORIENTATION_ROTATE_270;
                    ORIENTATION=270;//down
                } else if(225 <= i && i < 315) {
                    mScreenExifOrientation = ExifInterface.ORIENTATION_NORMAL;
                    ORIENTATION=0;//up
                } else {
                    mScreenExifOrientation = ExifInterface.ORIENTATION_ROTATE_90;
                    ORIENTATION=90;//left
                }		
				
			}
		};
		myOrientationEventListener.enable();
		//Overlap Bitmap draw cycle		
		mDraw = new DrawOnTop(this);
		addContentView(mDraw, new LayoutParams (LayoutParams.WRAP_CONTENT,
		          LayoutParams.WRAP_CONTENT)); 	
		//	
	}
	@Override
	public void onDestroy() {
	 // TODO Auto-generated method stub
	 super.onDestroy();
	 myOrientationEventListener.disable();
	}
	@Override
	public void onClick(View v){
		if(camera != null)
		{
			switch (v.getId()) 
			{
			case R.id.takephotoimg:
				//
				camera.takePicture(null, null, new MyPictureCallback());
				break;
			case R.id.drawcircleimg:
				if(IsDrawCircle==false){
					PosX = (int) mDraw.getWidth()/2;
					PosY = (int) mDraw.getHeight()/2;
					mDraw.invalidate();
					ImageView drawcircleimg=(ImageView)findViewById(R.id.drawcircleimg);
					drawcircleimg.setImageDrawable(getResources().getDrawable( R.drawable.circle ));
					IsDrawCircle=true;	
				}else{
					IsDrawCircle=false;					
					mDraw.invalidate();
					ImageView drawcircleimg=(ImageView)findViewById(R.id.drawcircleimg);
					drawcircleimg.setImageDrawable(getResources().getDrawable( R.drawable.circle1 ));					
				}
				break;
		    case R.id.backimg:
				this.onBackPressed(); 
				break;	
	        case R.id.exitimg:
	    	    ExitAllActivity();    	   
		        break;				
			default:
				break;
			}	
		}
			
	}
	@Override
	public int getlayoutId()
	{
		return R.layout.takephoto;
	}
    //
	@Override
	protected void postResult(String s) {
		
	}
	//
	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

	}
	public  boolean isFileExit(String path){
        if(path == null){
            return false;
        }
        try{
            File f = new File(path);
            if(!f.exists()){
                return false;
            }
        }catch (Exception e) {
            // TODO: handle exception
        }
        return true;
    }
	//
	private final class MyPictureCallback implements PictureCallback
	{
		public void onPictureTaken(byte[] data, Camera camera) 
		{
			Bitmap bMap;
			try 
			{		
				bMap = BitmapFactory.decodeByteArray(data, 0, data.length);  
    	        Bitmap bMapRotate;  
    	        //BMP Rotate angle
	            Matrix matrix = new Matrix();  
	            matrix.reset();  
	            if (ORIENTATION==0){ 
	            	matrix.postRotate(ORIENTATION+1);//at least 1 angle, else show error for "Canvas canvas = new Canvas(bMap);"
	            }else{
	              matrix.postRotate(ORIENTATION);  
	            }
	            bMapRotate = Bitmap.createBitmap(bMap, 0, 0, bMap.getWidth(),  
	                    bMap.getHeight(), matrix, true); 
	            bMap = bMapRotate;	
	            //Draw cycle        
	            if(IsDrawCircle==true){
		            Canvas canvas = new Canvas(bMap);
		            Paint paint = new Paint();
		            paint.setAlpha(255);
		            paint.setColor(Color.RED);
		            paint.setStrokeWidth(10);
		            paint.setStyle(Paint.Style.STROKE);   
		            int drawPosX=(PosX-surfaceView.getLeft())*1024/surfaceView.getHeight(); //768/surfaceView.getHeight()
		            int drawPosY=PosY-surfaceView.getTop()*768/surfaceView.getHeight();
		            
		            if(ORIENTATION==90) {
		            	canvas.drawCircle(drawPosX-50, drawPosY-50 , 100, paint);	
		            }else if(ORIENTATION==270){
		            	canvas.drawCircle(768-(drawPosX-50), 1024-(drawPosY-50) , 100, paint);
		            }else if(ORIENTATION==0){
		            	canvas.drawCircle(drawPosY-50, 768-(drawPosX-50) , 100, paint);
		            }else if(ORIENTATION==180){
		            	canvas.drawCircle(1024-(drawPosY-50), drawPosX-50 , 100, paint);	
		            }
	            }	            
				//getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS)
				//Environment.getExternalStorageDirectory()
				//String.valueOf(java.lang.System.currentTimeMillis())
				SimpleDateFormat DATE_TIME_FORMAT = new SimpleDateFormat("yyyyMMddHHmmss");				
				imagepath=Environment.getExternalStorageDirectory().getAbsolutePath()+"/Download/"+DATE_TIME_FORMAT.format(new Date())+'_'+UserID+ ".jpg";
				//Toast.makeText(getApplicationContext(), imagepath, Toast.LENGTH_SHORT).show();
				File jpgFile = new File(imagepath);
				FileOutputStream outStream = new FileOutputStream(jpgFile);
				bMap.compress(Bitmap.CompressFormat.JPEG, 80, outStream);
				outStream.write(data);				
				outStream.close();
				//Upload
				 
	             dialog = ProgressDialog.show(takephoto.this, "", "Uploading file...", true);
	             new Thread(new Runnable() {
	                 public void run() {	                                      
	                      uploadFile(imagepath);	                                               
	                 }
	               }).start();   				
				//
				/*
				String data01 = "This is OutputStream Data01!";
		        String data02 = "\n";
		        String data03 = "Hello! This is Data02!!";
		        String data04 = "\n";
		        //建立FileOutputStream物件，路徑為SD卡中的output.txt
		        FileOutputStream output = new FileOutputStream(Environment.getExternalStorageDirectory().getAbsolutePath()+"/sdcard/output.txt");
		        output.write(data01.getBytes());  //write()寫入字串，並將字串以byte形式儲存。
		        output.write(data02.getBytes());   //利用getBytes()將字串內容換為Byte
		        output.write(data03.getBytes());
		        output.write(data04.getBytes());
		        output.close();
		        */
				camera.startPreview();
			} 
			catch (IOException e)
			{
				e.printStackTrace();
				Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
			}
		}
		
	}	
	//
	private final class SurfaceCallback implements android.view.SurfaceHolder.Callback
	{
		
		public void surfaceCreated(SurfaceHolder holder) 
		{
			try
			{
			  camera = Camera.open();	
			  camera.setPreviewDisplay(holder);
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}			
		}		
		public void surfaceChanged(SurfaceHolder holder, int format, int width, int heigh)
		{
			//
			Camera.Parameters parameters = camera.getParameters();
			//
			parameters.setPreviewFrameRate(5);
			parameters.setPictureSize( 1024,768);
			parameters.setJpegQuality(100);
			//Rotate Camera preview
			if (getWindowManager().getDefaultDisplay().getOrientation() == 0){
				parameters.setPreviewSize(1024, 768);
				camera.setDisplayOrientation(90);
			}else{
				parameters.setPreviewSize(768,1024);
				camera.setDisplayOrientation(0);
			}
			//
			camera.setParameters(parameters);		
			camera.startPreview();			
		}
		
		public void surfaceDestroyed(SurfaceHolder holder) 
		{
			if(camera != null)
			{
				camera.stopPreview();
				camera.release();
				camera = null;
			}	
		}	
	}
	@Override
	public boolean onTouchEvent(MotionEvent event) 
	{

		if(event.getAction() == MotionEvent.ACTION_DOWN)
		{			
			camera.autoFocus(null);
			//
			PosX = (int) event.getX();
			PosY = (int) event.getY();	
			mDraw.invalidate();
		}
		return super.onTouchEvent(event);	
	}	
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		int type = this.getResources().getConfiguration().orientation;
		if (type == Configuration.ORIENTATION_LANDSCAPE) { 
			ORIENTATION=90;
		}else if (type == Configuration.ORIENTATION_PORTRAIT) {
			ORIENTATION=0;
		}
		super.onConfigurationChanged(newConfig);
	}
	//
    public int uploadFile(String sourceFileUri) {
        
        
        String fileName = sourceFileUri;

        HttpURLConnection conn = null;
        DataOutputStream dos = null; 
        String lineEnd = "\r\n";
        String twoHyphens = "--";
        String boundary = "*****";
        int bytesRead, bytesAvailable, bufferSize;
        byte[] buffer;
        int maxBufferSize = 1 * 1024 * 1024;
        File sourceFile = new File(sourceFileUri);
         
        if (!sourceFile.isFile()) {
        	 dialog.dismiss();
             Log.d(TAG, "Source File not exist :"+imagepath);
             runOnUiThread(new Runnable() {
                 public void run(){
                 Toast.makeText(getApplicationContext(), "Source File not exist :"+ imagepath, Toast.LENGTH_SHORT).show();
                }
             });
             return 0;    
        }
        else
        {
             try { 
                 // open a URL connection to the Serve let
                 FileInputStream fileInputStream = new FileInputStream(sourceFile);
                 URL url = new URL(upLoadServerUri);
                  
                 // Open a HTTP  connection to  the URL
                 conn = (HttpURLConnection) url.openConnection();
                 conn.setDoInput(true); // Allow Inputs
                 conn.setDoOutput(true); // Allow Outputs
                 conn.setUseCaches(false); // Don't use a Cached Copy
                 conn.setRequestMethod("POST");
                 conn.setRequestProperty("Connection", "Keep-Alive");
                 conn.setRequestProperty("ENCTYPE", "multipart/form-data");
                 conn.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + boundary);
                 conn.setRequestProperty("uploaded_file", fileName);
                  
                 dos = new DataOutputStream(conn.getOutputStream());
        
                 dos.writeBytes(twoHyphens + boundary + lineEnd);
                 dos.writeBytes("Content-Disposition: form-data; name=\"uploaded_file\";filename=\""
                                           + fileName + "\"" + lineEnd);
                  
                 dos.writeBytes(lineEnd);
        
                 // create a buffer of  maximum size
                 bytesAvailable = fileInputStream.available();
        
                 bufferSize = Math.min(bytesAvailable, maxBufferSize);
                 buffer = new byte[bufferSize];
        
                 // read file and write it into form...
                 bytesRead = fileInputStream.read(buffer, 0, bufferSize); 
                    
                 while (bytesRead > 0) {
                      
                   dos.write(buffer, 0, bufferSize);
                   bytesAvailable = fileInputStream.available();
                   bufferSize = Math.min(bytesAvailable, maxBufferSize);
                   bytesRead = fileInputStream.read(buffer, 0, bufferSize);  
                    
                  }
        
                 // send multipart form data necesssary after file data...
                 dos.writeBytes(lineEnd);
                 //20150213 addition Post information
                 dos.writeBytes(twoHyphens + boundary + lineEnd);
                 dos.writeBytes("Content-Disposition: form-data; name=\"IQC_Folder\""+ lineEnd);
                 dos.writeBytes(lineEnd+Shoe_Folder+lineEnd);
                 
                 //ending
                 dos.writeBytes(twoHyphens + boundary + twoHyphens + lineEnd);
                 
                 // Responses from the server (code and message)
                 serverResponseCode = conn.getResponseCode();
                 String serverResponseMessage = conn.getResponseMessage();
                   
                 Log.d(TAG, "HTTP Response is : " + serverResponseMessage + ": " + serverResponseCode);
                 //
                 if(serverResponseCode == 200){                    
                     runOnUiThread(new Runnable() {
                          public void run() {
                              Toast.makeText(takephoto.this, "File Upload Complete.", Toast.LENGTH_SHORT).show();
                          }
                      });               
                 }                  
                 //close the streams //
                 fileInputStream.close();
                 dos.flush();
                 dos.close();
                   
            } catch (MalformedURLException ex) {                
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(takephoto.this, "MalformedURLException", Toast.LENGTH_SHORT).show();
                    }
                });
                 
                Log.d(TAG, "error: " + ex.getMessage(), ex); 
            } catch (Exception e) {               
                runOnUiThread(new Runnable() {
                    public void run() {
                        Toast.makeText(takephoto.this, "Get Exception", Toast.LENGTH_SHORT).show();
                    }
                });  
                Log.d(TAG, "error: " + e.getMessage(), e); 
            }
            dialog.dismiss();      
            return serverResponseCode;
             
         } // End else block
    }  
    
	//Overlap class
    class DrawOnTop extends View { 
        public DrawOnTop(Context context) { 
            super(context); 

        } 

       @Override 
       protected void onDraw(Canvas canvas) {
 	     //if (bitmap != null) {
 		   //canvas.drawBitmap(bitmap, 0, 0, null);
 	     //}
         super.onDraw(canvas); 
         if(IsDrawCircle==true){
	         Paint paint = new Paint();
	         paint.setAlpha(255);
	         paint.setColor(Color.RED);
	         paint.setStrokeWidth(10);
	         paint.setStyle(Paint.Style.STROKE);           
	         canvas.drawCircle(PosX-50, PosY-50 , 100, paint);	
         }
       } 
    }     
}
