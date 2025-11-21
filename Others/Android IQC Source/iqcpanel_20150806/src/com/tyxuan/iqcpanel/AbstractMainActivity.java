package com.tyxuan.iqcpanel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;


import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import android.view.Menu;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.TextView;

public abstract class AbstractMainActivity extends Activity implements OnItemClickListener,OnClickListener {

	protected String NetInfo1="connect fail,please check internet!";
	protected String NetInfo2="server can't connect";
	protected String NetInfo3="JSON format is error";
	//
	protected String UserID="";
	protected String UserPW="";
	protected static final String TAG = "iqc_debug";
	//protected String URL="http://192.168.10.177/testApp/";
	protected String APKName="iqcpanel.apk";
	protected String URL="http://192.168.23.5:82/";
	protected String responseStr="";
	protected ProgressDialog dialog=null;
	protected abstract int getlayoutId();
	protected abstract void postResult(String s);

	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(getlayoutId());
		//
        //TextView columtext1=(TextView)findViewById(R.id.columtext1);
        //columtext1.setOnClickListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}	
	//
	protected void ExitAllActivity()
	{		   
		   if(Login.loginActivity!=null){ Login.loginActivity.finish();Login.loginActivity=null;}
		   if(iqcdefect.iqcdefectActivity!=null){ iqcdefect.iqcdefectActivity.finish();iqcdefect.iqcdefectActivity=null;}
		   if(takephoto.takephotoActivity!=null){ takephoto.takephotoActivity.finish();takephoto.takephotoActivity=null;}
		   System.exit(0);	
		   
	}
    //
	protected void sendPostDataToInternet(final String uriAPI,final String []key,final String []value){
		dialog = ProgressDialog.show(this, null, this.getResources().getText(R.string.process).toString(), true, true);
		new Thread() {
			public void run() {

				HttpPost httpRequest = new HttpPost(uriAPI);
				List<NameValuePair> params = new ArrayList<NameValuePair>();
				for(int i=0;i<key.length;i++){
					params.add(new BasicNameValuePair(key[i], value[i]));
				}
				String strResult = "";
				try{

					httpRequest.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));
					HttpResponse httpResponse = new DefaultHttpClient().execute(httpRequest);
					if (httpResponse.getStatusLine().getStatusCode() == 200){
						strResult = EntityUtils.toString(httpResponse.getEntity());
					}
				} catch (ClientProtocolException e){
					strResult = e.getMessage();

				} catch (IOException e){
					strResult = e.getMessage();

				} catch (Exception e){
					strResult = e.getMessage();
				}
				responseStr=strResult;//failure URL = null
				Log.d(TAG,"responseStr:"+responseStr);
				postResult(strResult);
				
			}

		}.start();
		
	}	
	//
	protected void sendGetDataToInternet(final String uriAPI){
		dialog = ProgressDialog.show(this, null, this.getResources().getText(R.string.process).toString(), true, true);
		new Thread() {
			public void run() {
				String strResult = "";
			    HttpClient client = new DefaultHttpClient();
			    HttpParams httpParams = client.getParams();
			    //
			    HttpConnectionParams.setConnectionTimeout(httpParams, 3000);
			    HttpConnectionParams.setSoTimeout(httpParams, 5000);
			    try {
			      HttpResponse httpResponse = client.execute(new HttpGet(uriAPI));
					if (httpResponse.getStatusLine().getStatusCode() == 200){
						strResult = EntityUtils.toString(httpResponse.getEntity());
					}			      
				} catch (ClientProtocolException e){
					strResult = e.getMessage();
	
				} catch (IOException e){
					strResult = e.getMessage();
	
				} catch (Exception e){
					strResult = e.getMessage();
				}	
				responseStr=strResult;//failure URL = null
				Log.d(TAG,"responseStr:"+responseStr);
				postResult(strResult);			    
				//
				
			}

		}.start();
		
	}	
	//
	public static int getVerCode(Context context) {
		int verCode = -1;
		try {
			verCode = context.getPackageManager().getPackageInfo(
					"com.tyxuan.iqcpanel", 0).versionCode;
		} catch (NameNotFoundException e) {
			Log.e(TAG, e.getMessage());
		}
		return verCode;
	}
	
	public static String getVerName(Context context) {
		String verName = "";
		try {
			verName = context.getPackageManager().getPackageInfo(
					"com.tyxuan.iqcpanel", 0).versionName;
		} catch (NameNotFoundException e) {
			Log.e(TAG, e.getMessage());
		}
		return verName;	

	}
	
	public static String getAppName(Context context) {
		String verName = context.getResources()
		.getText(R.string.app_name).toString();
		return verName;
	}	
	//
    @Override
    public void onStart()
    {
    	super.onStart();
    	Log.d(TAG,"onStart");
    }
    @Override
    public void onStop()
    {
    	super.onStop();
    	Log.d(TAG,"onStop");
    }
    @Override
    public void onPause()
    {
    	super.onPause();
    	Log.d(TAG,"onPause");
    }
    @Override 
    public void onResume()
    {
       super.onResume();	
       Log.d(TAG,"onResume");
    }
    @Override
    public void onRestart()
    {
      super.onRestart();	
      Log.d(TAG,"onRestart");
    }
    @Override
    public void onDestroy()
    {
    	super.onDestroy();
    	Log.d(TAG,"onDestroy");
    }	
   
}
