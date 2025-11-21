package com.tyxuan.iqcpanel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONObject;


import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

public class Login extends AbstractMainActivity  {
	
	static Activity loginActivity;
	//
	private Boolean isloadover=false;
	private Button loginBtn = null;
	private Button resetBtn = null;	
	private Button autogetIDBtn = null;
	private TextView accountText = null;
	private TextView pwdText = null;
	private CheckBox AutoLoginchkbox = null;

	public ProgressDialog pBar;
	private Handler handler = new Handler();
	private int newVerCode = 0;
	private String newVerName = "";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);		
		loginActivity=this;		
		ImageView backimg=(ImageView)findViewById(R.id.backimg);
		backimg.setVisibility(4);
		ImageView saveimg=(ImageView)findViewById(R.id.saveimg);
		saveimg.setVisibility(4);	
		ImageView cameraimg=(ImageView)findViewById(R.id.cameraimg);
		cameraimg.setVisibility(4);
		ImageView exitimg=(ImageView)findViewById(R.id.exitimg);
		exitimg.setOnClickListener(this);		
		//
		accountText = (TextView) findViewById(R.id.account);
		pwdText = (TextView) findViewById(R.id.passwd);
		loginBtn = (Button) findViewById(R.id.login);
		loginBtn.setOnClickListener(this);
		resetBtn = (Button) findViewById(R.id.reset);
		resetBtn.setOnClickListener(this);
		AutoLoginchkbox=(CheckBox)findViewById(R.id.AutoLogin);		
		//ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR | SCREEN_ORIENTATION_PORTRAIT
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
		//load setting
		
		if (isloadover==false) {
			isloadover=true;
			this.sendGetDataToInternet(URL+"ver.json");	//			
		}
		
	
	}
	//
	
	public void Rece_AutoGetID(String InfoList){
		try {
			JSONArray array = new JSONArray(InfoList);
			if (array.length() > 0) {
				JSONObject obj = array.getJSONObject(0);
				try {
					if(obj.getString("AutoGetID").compareTo("Y")==0){
						accountText.setText(obj.getString("ANDROID_ID"));
						pwdText.setText(obj.getString("ANDROID_ID"));
					}else{
						Toast.makeText(getApplicationContext(), "Create account error!", Toast.LENGTH_SHORT).show();
					}
				} catch (Exception e) {
					Log.e(TAG, e.getMessage());
				}
				//			
			}
		} catch (Exception e) {
			Log.e(TAG, e.getMessage());
		}			
	}
	//
	public void Send_LoginInfo() {
		//android_id
		String android_id = Secure.getString(this.getBaseContext().getContentResolver(), Secure.ANDROID_ID);
		SharedPreferences remember = getSharedPreferences("RememberPreference",0);
		accountText.setText(remember.getString("account", "guest"));
		pwdText.setText(remember.getString("password", "guest"));
		if(accountText.getText().toString().compareTo("")!=0) 
		//if((accountText.getText().toString().compareTo("")!=0) && (pwdText.getText().toString().compareTo("")!=0))
		{
			this.sendPostDataToInternet(URL+"CheckLogin.aspx", new String[] {"ID", "PW","ANDROID_ID" }, new String[] {accountText.getText().toString(),pwdText.getText().toString(),android_id });
		}
	}
	//
	public void Rece_Version(String InfoList)
	{
		try {
			JSONArray array = new JSONArray(InfoList);
			if (array.length() > 0) {
				JSONObject obj = array.getJSONObject(0);
				try {
					newVerCode = Integer.parseInt(obj.getString("verCode"));
					newVerName = obj.getString("verName");
				} catch (Exception e) {
					newVerCode = -1;
					newVerName = "";
				}
				//
				int vercode = getVerCode(this);
				if (newVerCode > vercode) {
					doNewVersionUpdate();
				} else {
					//notNewVersionShow();
					SharedPreferences remember = getSharedPreferences("RememberPreference",0);
					AutoLoginchkbox.setChecked(remember.getBoolean("autologin", false));
					
					//
					if(AutoLoginchkbox.isChecked()==true){
					  Send_LoginInfo(); 
					}
				}				
			}
		} catch (Exception e) {
			Log.e(TAG, e.getMessage());
		}	   
	}
	//
	public void Rece_LoginInfo(String InfoList)
	{
		try{
		  //
		  JSONObject jsonObject = new JSONObject(InfoList);
		  if(jsonObject.getString("Login").compareTo("Y")==0){
				SharedPreferences remember = getSharedPreferences("RememberPreference",0);
		        UserID=jsonObject.getString("ID");
		        UserPW=jsonObject.getString("PW");
				remember.edit().putString("account", UserID).commit();
		        remember.edit().putString("password", UserPW).commit();	
		        remember.edit().putBoolean("autologin", AutoLoginchkbox.isChecked()).commit();	

		        //
				Intent it=new Intent(this,iqcdefect.class);	
		       	Bundle params = new Bundle();//
		       	params.putString("UserID", UserID);
		       	params.putString("UserPW", UserPW);
		       	it.putExtras(params);				
				it.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP); 
				this.startActivity(it);		        
		        //Toast.makeText(getApplicationContext(), "Login ID/Password wrong!", Toast.LENGTH_SHORT).show();
		  }else{
			  Toast.makeText(getApplicationContext(), "Login ID/Password wrong!", Toast.LENGTH_SHORT).show();
		  }
		  //
		} catch (Exception e) {
			  e.printStackTrace();
			  Log.d(TAG,e.toString());
			  Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
		}		
	}	
	//
	@Override
	public void onClick(View v){
		   String android_id="";
		   switch(v.getId()){
		   case R.id.exitimg:
			   ExitAllActivity();
			   break;	
		   case R.id.login:
			   android_id = Secure.getString(this.getBaseContext().getContentResolver(), Secure.ANDROID_ID);
			   this.sendPostDataToInternet(URL+"CheckLogin.aspx", new String[] {"ID", "PW","ANDROID_ID"}, new String[] {accountText.getText().toString(),pwdText.getText().toString(),android_id }); 
		       break;
			case R.id.reset:
			   accountText.setText("");
			   pwdText.setText("");
			   break;
		   }
	}
	@Override
	public int getlayoutId()
	{
		return R.layout.login;
	}
    //
	@Override
	protected void postResult(String s) {
		runOnUiThread(new Runnable(){
			public void run(){
				if(responseStr == null){			  				    
					Toast.makeText(getApplicationContext(), NetInfo1, Toast.LENGTH_SHORT).show();
				}else if(responseStr==""){
					Toast.makeText(getApplicationContext(), NetInfo2, Toast.LENGTH_SHORT).show();
				}else if((responseStr.indexOf("refused")>-1) || (responseStr.indexOf("Unable to resolve host")>-1)){				
					Toast.makeText(getApplicationContext(), NetInfo1, Toast.LENGTH_SHORT).show();
				}else{	
					if(responseStr.indexOf("Login")>0){//
						Rece_LoginInfo(responseStr);
					}else if (responseStr.indexOf("verCode")>0){ 
						dialog.dismiss();
						Rece_Version(responseStr);
					}else if (responseStr.indexOf("AutoGetID")>0){
						Rece_AutoGetID(responseStr);
					}else{
						Toast.makeText(getApplicationContext(), NetInfo3+responseStr, Toast.LENGTH_SHORT).show();
					}
				}
				dialog.dismiss();
			}
		});			
	}
	//
	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

	}	
	//

	private void notNewVersionShow() {
		int verCode = getVerCode(this);
		String verName = getVerName(this);
		StringBuffer sb = new StringBuffer();
		sb.append("Version");
		sb.append(verName);
		sb.append(" Code:");
		sb.append(verCode);
		sb.append(",\nLastest version!");
		Dialog dlg = new AlertDialog.Builder(Login.this)
				.setTitle("App Update").setMessage(sb.toString())
				.setPositiveButton("OK",new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								finish();
							}

						}).create();//
		//	
		dlg.show();
	}

	private void doNewVersionUpdate() {
		int verCode = getVerCode(this);
		String verName = getVerName(this);
		StringBuffer sb = new StringBuffer();
		sb.append("Version:");
		sb.append(verName);
		//sb.append(verCode);
		sb.append(".Have a new version");
		sb.append(newVerName);
		//sb.append(newVerCode);
		sb.append(", If update?");
		Dialog dlg = new AlertDialog.Builder(Login.this)
				.setTitle("App Update")
				.setMessage(sb.toString())
				// 
				.setPositiveButton("Update",
						new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								pBar = new ProgressDialog(Login.this);
								pBar.setTitle("Downloading");
								pBar.setMessage("Please wait.");
								pBar.setProgressStyle(ProgressDialog.STYLE_SPINNER);
								downFile(URL+ APKName);
							}

						})
				.setNegativeButton("Not want to update,Close",
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog,
									int whichButton) {
								//
								finish();
							}
						}).create();//
		//
		dlg.show();
	}

	void downFile(final String url) {
		pBar.show();
		new Thread() {
			public void run() {
				HttpClient client = new DefaultHttpClient();
				HttpGet get = new HttpGet(url);
				HttpResponse response;
				try {
					response = client.execute(get);
					HttpEntity entity = response.getEntity();
					long length = entity.getContentLength();
					InputStream is = entity.getContent();
					FileOutputStream fileOutputStream = null;
					if (is != null) {

						File file = new File(Environment.getExternalStorageDirectory(),APKName);
						fileOutputStream = new FileOutputStream(file);

						byte[] buf = new byte[1024];
						int ch = -1;
						int count = 0;
						while ((ch = is.read(buf)) != -1) {
							fileOutputStream.write(buf, 0, ch);
							count += ch;
							if (length > 0) {
							}
						}

					}
					fileOutputStream.flush();
					if (fileOutputStream != null) {
						fileOutputStream.close();
					}
					down();
				} catch (ClientProtocolException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}.start();

	}

	void down() {
		handler.post(new Runnable() {
			public void run() {
				pBar.cancel();
				UpdateAppVersion();
			}
		});

	}

	void UpdateAppVersion() {

		Intent intent = new Intent(Intent.ACTION_VIEW);
		intent.setDataAndType(Uri.fromFile(new File(Environment
				.getExternalStorageDirectory(), APKName)),
				"application/vnd.android.package-archive");
		startActivity(intent);
	} 	
	
}
