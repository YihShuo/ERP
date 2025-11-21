package com.tyxuan.iqcpanel;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.tyxuan.listitem.MySimpleAdapter;
import com.tyxuan.listitem.droplist;


import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.SimpleAdapter;
import android.widget.Spinner;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemSelectedListener;

public class iqcdefect extends AbstractMainActivity implements OnItemSelectedListener {
	static Activity iqcdefectActivity;
	//
    
	private Spinner RY_Spin;
	private EditText RY_Edit;
    private Spinner DepID_Spin;
    private Spinner Stage_Spin;
    private int RYlist_index;
    private int Deplist_index;
    private int Stagelist_index;
    private droplist  Deplist=new droplist();
    private droplist RYlist = new droplist();
    private droplist Stagelist = new droplist();
    private GridView gridview=null;
    private MySimpleAdapter adapter=null;
    private boolean IsInitial=false;
    
    //
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		iqcdefectActivity=this;	
		//GetUserID
		Bundle params = this.getIntent().getExtras();
		UserID= params.getString("UserID");
		UserPW= params.getString("UserPW");		
		this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","GetDepList","Stage" }, new String[] {UserID,UserPW,"GetDepList","A" });
		InitalSpinner();
		//
		TextView Qty_Edit=(TextView)findViewById(R.id.Qty_Edit);
		TextView NG_Edit=(TextView)findViewById(R.id.NG_Edit);
		Qty_Edit.setEnabled(false);Qty_Edit.setClickable(false);
		NG_Edit.setEnabled(false);NG_Edit.setClickable(false);
		//
		ImageView backimg=(ImageView)findViewById(R.id.backimg);
		backimg.setOnClickListener(this);				
		//test click save
		ImageView saveimg=(ImageView)findViewById(R.id.saveimg);
		saveimg.setOnClickListener(this);	
		//test take photo
		ImageView cameraimg=(ImageView)findViewById(R.id.cameraimg);
		cameraimg.setOnClickListener(this);	
		//exit
		ImageView exitimg=(ImageView)findViewById(R.id.exitimg);
		exitimg.setOnClickListener(this);	
		//defect Query
		Button DefectBtn=(Button)findViewById(R.id.DefectBtn);
		DefectBtn.setOnClickListener(this);		
		//
		TableRow tr=(TableRow)findViewById(R.id.tableRow3);
		tr.setVisibility(View.INVISIBLE);
	}
	
	@Override
	public int getlayoutId(){
		return R.layout.qcdefect;
	}
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
					if(responseStr.indexOf("DepList")>0){//
						ShowDepList(responseStr);	
					}else if(responseStr.indexOf("OrderList")>0){//
						ShowOrderList(responseStr);	
					}else if(responseStr.indexOf("DefectList")>0){//
						ShowDefectList(responseStr);	
					}else if(responseStr.indexOf("Response Success")>0){//	
						Toast.makeText(getApplicationContext(), "Success", Toast.LENGTH_SHORT).show();
					}else{
						Toast.makeText(getApplicationContext(), NetInfo3+responseStr, Toast.LENGTH_SHORT).show();
					}
				}
				dialog.dismiss();
			}
		});	
	}
	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
	}
	@Override
	public void onClick(View v){
		switch(v.getId()){
	       case R.id.cameraimg:	
	    	   if (RYlist_index>=0){
				  Intent it=new Intent(this,takephoto.class);	
		       	  Bundle params = new Bundle();//
		       	  params.putString("UserID", UserID);
		       	  params.putString("UserPW", UserPW);
		       	  params.putString("Shoe_Folder", RYlist.Value.get(RYlist_index));
		       	  it.putExtras(params);				  
				  this.startActivity(it);	
	    	   }else{
	    		   Toast.makeText(getApplicationContext(), "Please Choice RY", Toast.LENGTH_SHORT).show();
	    	   }
	    	   break;
		   case R.id.saveimg:
			    AlertDialog.Builder  dlg = new AlertDialog.Builder(iqcdefect.this);
				dlg.setTitle("Save").setMessage("OK input defect?");
				dlg.setPositiveButton("OK",new DialogInterface.OnClickListener() {

							@Override
							public void onClick(DialogInterface dialog,
									int which) {
								SaveDefectData(); 
							}

						});//
				dlg.setNegativeButton("Cancel",new DialogInterface.OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog,
							int which) {
						dialog.dismiss();
					}

				});//
		       //	
		       dlg.create().show();			   			   
			   break;
		   case R.id.backimg:
			   this.onBackPressed(); 
			   break;			   
	       case R.id.exitimg:
	    	   ExitAllActivity();    
	       case R.id.DefectBtn:
	    	   if(Stagelist_index>-1){
	    	     this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","GetDefectList","Stage" }, new String[] {UserID,UserPW,"GetDefectList",Stagelist.ID.get(Stagelist_index) });	
	    	     //Hide input
	    	     InputMethodManager inputMethodManager =(InputMethodManager)iqcdefectActivity.getApplicationContext().
	    	 			getSystemService(Context.INPUT_METHOD_SERVICE); 
	    	     EditText editText = (EditText)findViewById(R.id.order_edit); 
	    	     inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
	    	   }
	    	   break;
	   }		
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	//Initial spinner
	private void InitalSpinner(){
		//Spinner
		Stage_Spin = (Spinner) findViewById(R.id.stage_spinner);
		Stage_Spin.setOnItemSelectedListener(this);			
		DepID_Spin = (Spinner) findViewById(R.id.dep_spinner);
		DepID_Spin.setOnItemSelectedListener(this);		
		RY_Spin = (Spinner) findViewById(R.id.order_spinner);
		RY_Spin.setOnItemSelectedListener(this);		
		RY_Edit = (EditText) findViewById(R.id.order_edit);
		ShowStage();
	}
	//ShowStageList
	public void ShowStage(){
		Stagelist.Value.clear();
		Stagelist.setValue("C", "C");
		Stagelist.setValue("S", "C+S");
		Stagelist.setValue("A", "A");
		Stagelist.setValue("AR", "AR");
        adapterData(Stagelist.ID,Stage_Spin);
        Stage_Spin.setTag("1");	
        Stage_Spin.setSelection(2);//default
        
	}
	//ShowDepList
	public void ShowDepList(String InfoList){
		
		try{
			//
			JSONObject jsonObject = new JSONObject(InfoList);
			JSONArray  jsonListObject=jsonObject.getJSONArray("DepList");
	        JSONObject jsonChildObject;	
	        Deplist.ID.clear();
	        Deplist.Value.clear();
	        for(int i=0;i<jsonListObject.length();i++)
	        {
	        	jsonChildObject=(JSONObject)jsonListObject.opt(i);
	        	//
	        	Deplist.setValue(jsonChildObject.getString("ID"), jsonChildObject.getString("Name"));
	        }
	        adapterData(Deplist.Value,DepID_Spin);
	        DepID_Spin.setTag("1");

		} catch (Exception e) {
			  e.printStackTrace();
			  Log.d(TAG,e.toString());
			  Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
		}        
	}
	//ShowOrderList
	public void ShowOrderList(String InfoList){
		try{
			//
			JSONObject jsonObject = new JSONObject(InfoList);
			JSONArray  jsonListObject=jsonObject.getJSONArray("OrderList");
	        JSONObject jsonChildObject;
	        RYlist.ID.clear();
	        RYlist.Value.clear();	        
	        for(int i=0;i<jsonListObject.length();i++)
	        {
	        	jsonChildObject=(JSONObject)jsonListObject.opt(i);
	        	RYlist.setValue(jsonChildObject.getString("ZLBH"), jsonChildObject.getString("Name"));
	        }
	        adapterData(RYlist.ID,RY_Spin);
	        RY_Spin.setTag("1");
	        //Clear defect list
	        if (adapter!=null){ 
	        	adapter.items.clear();
	        	adapter.notifyDataSetChanged();
	        }	        
		} catch (Exception e) {
			  e.printStackTrace();
			  Log.d(TAG,e.toString());
			  Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
		} 	  
	}
	//Show DefectList GridView
	public void ShowDefectList(String InfoList){
		try{
			//
			JSONObject jsonObject = new JSONObject(InfoList);
			JSONArray  jsonListObject=jsonObject.getJSONArray("DefectList");
	        JSONObject jsonChildObject;	
	        //
	        gridview=(GridView)findViewById(R.id.defect_gridView);
	        List<Map<String,Object>> items=new ArrayList<Map<String,Object>>();
            if(jsonListObject.length()>0){
        	   //

            }
	        for(int i=0;i<jsonListObject.length();i++)
	        {
	        	   jsonChildObject=(JSONObject)jsonListObject.opt(i);
	        	   //
	        	   HashMap<String,Object> item=null;
	        	   item=new HashMap<String,Object>();	 
	        	   item.put("Defect_ID", jsonChildObject.getString("ID"));
	      		   item.put("Defect_Value","["+jsonChildObject.getString("ID")+"]"+jsonChildObject.getString("Name")); 
	      		   item.put("Defect_Qty","0");
	      		   items.add(item);
	      		   //
	        }
	        adapter=null;
	        adapter=new MySimpleAdapter(this,items,R.layout.defect_detail_view,
	    			  new String[]{"Defect_Value","Defect_Qty"},new int[]{ R.id.defect_value,R.id.defect_qty});
	        adapter.iqcdefectActivity=this;
	        //
	    	gridview.setAdapter(adapter);	  
	    	gridview.setOnItemClickListener(this);
	    	
			//NG and Qty
			TableRow tr=(TableRow)findViewById(R.id.tableRow3);
			tr.setVisibility(View.VISIBLE);	 
			//
			TextView NG_Edit=(TextView)findViewById(R.id.NG_Edit);	
			TextView Qty_Edit=(TextView)findViewById(R.id.Qty_Edit);
			Qty_Edit.setText("5");
			NG_Edit.setText("0");
	    	//adapter.gridview=gridview;
            /*
	    	gridview.setOnItemClickListener(new OnItemClickListener(){
	            @Override
	            public void onItemClick(AdapterView<?> parent, View view,
	                    int position, long id) {
	                Toast.makeText(getApplicationContext(),
	                        "Item Clicked: " + position, Toast.LENGTH_SHORT).show();

	            }
	        });
	        */
		} catch (Exception e) {
			  e.printStackTrace();
			  Log.d(TAG,e.toString());
			  Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
		} 	  
	}
	//Update Defect Information
	private void SaveDefectData(){
		//
		if((RYlist_index>-1) || (RY_Edit.getText().toString()!="")){
			String Data="";
			TextView Qty_Edit=(TextView)findViewById(R.id.Qty_Edit);
			TextView NG_Edit=(TextView)findViewById(R.id.NG_Edit);

			
			String jsonData="{\"Defect\":{\"Order\":\""+RY_Edit.getText().toString()+"\",\"DepID\":\""+Deplist.ID.get(Deplist_index)+"\",\"GXLB\":\""+Stagelist.Value.get(Stagelist_index)+"\",\"Qty\":\""+Qty_Edit.getText()+"\",\"NG\":\""+NG_Edit.getText()+"\",\"Data\":[";
			
			if(adapter!=null){
				for(int i=0;i<adapter.items.size();i++)
				{						
		            HashMap<String,Object> item=(HashMap<String,Object>)adapter.items.get(i);
		            int Qty= Integer.parseInt(item.get("Defect_Qty").toString());
					if (Qty>0){
						Data=Data+"{ \"ID\":\"" +  item.get("Defect_ID").toString() + "\", \"Value\":\"" + item.get("Defect_Qty").toString() + "\" },";
					}
				}
				if (Data!=""){
					 jsonData=jsonData+Data.substring(0, Data.length()-1)+"]}}";
					 this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","SaveQcDefect" }, new String[] {UserID,UserPW,jsonData });
					 //					             
				}else{
					jsonData=jsonData+"]}}";
					this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","SaveQcDefect" }, new String[] {UserID,UserPW,jsonData });
				}
			}
		}else{
			Toast.makeText(getApplicationContext(), "Plese choice RY", Toast.LENGTH_SHORT).show();
		}
    }

	//Binding List and spinner
	private void adapterData(List<String> list,Spinner spin){
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,list);	
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spin.setAdapter(adapter);
		//it will auto touch 
		//spin.setOnItemSelectedListener(this);
		//spin.setSelection(1, true);	
	}	
	

	//ItemSelect
	@Override
	public void onItemSelected(AdapterView<?> adapterView, View view, int position,
			long id) {
		switch (adapterView.getId()) {
		case R.id.stage_spinner:
			Stagelist_index=position;
			if (Stage_Spin.getTag()=="1"){
				Deplist_index=-1;
				Stage_Spin.setTag("2");
			}else{
			 this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","GetDepList","Stage" }, new String[] {UserID,UserPW,"GetOrderList",Stagelist.ID.get(Stagelist_index) });
			}
			break;			
		case R.id.dep_spinner:
			Deplist_index=position;
			//Get OrderList			
			if (DepID_Spin.getTag()=="1"){
				RYlist_index=-1;
				DepID_Spin.setTag("2");
			}else{
			 this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","GetOrderList","DepNo","Stage"  }, new String[] {UserID,UserPW,"GetOrderList",Deplist.ID.get(Deplist_index),Stagelist.ID.get(Stagelist_index) });
			}
			break;
		case R.id.order_spinner:
			RYlist_index=position;
			//Set RY Editext
			RY_Edit.setText(RYlist.ID.get(RYlist_index));
	   	    //Hide input
	   	    InputMethodManager inputMethodManager =(InputMethodManager)iqcdefectActivity.getApplicationContext().
	   	 			getSystemService(Context.INPUT_METHOD_SERVICE); 
	   	    EditText editText = (EditText)findViewById(R.id.order_edit); 
	   	    inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);			
			//Get Defect reason
			if (RY_Spin.getTag()=="1"){
				RY_Spin.setTag("2");
			}else{		
			  this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","GetDefectList","Stage" }, new String[] {UserID,UserPW,"GetDefectList",Stagelist.ID.get(Stagelist_index) });	
			}
			break;
		}
	}
	@Override
	public void onNothingSelected(AdapterView<?> arg0) {
		DepID_Spin.setSelection(0);
		RY_Spin.setSelection(0);
	}

	
}