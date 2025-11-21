package com.tyxuan.rfid_uhf;


import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.AdapterView.OnItemSelectedListener;

public class DialogUpdteERPActivity extends  Activity implements OnItemSelectedListener,OnClickListener {

	Spinner Month_Spinner;
	Spinner Year_Spinner;
    private droplist  Yearlist=new droplist();
    private droplist Monthlist = new droplist();	
    Button saveerp_ok, saveerp_no;
	ArrayAdapter<String> listAdapter;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.activity_dialog_updte_erp);
		//
		Year_Spinner=(Spinner)findViewById(R.id.year_spinner);
		Month_Spinner=(Spinner)findViewById(R.id.month_spinner);
		Month_Spinner.setOnItemSelectedListener(this);	
		Year_Spinner.setOnItemSelectedListener(this);	
		saveerp_ok=(Button)findViewById(R.id.saveerp_ok);
		saveerp_no=(Button)findViewById(R.id.saveerp_no);
		saveerp_ok.setOnClickListener(this);
		saveerp_no.setOnClickListener(this);
		//
		ShowYear();
		ShowMonth();
		
	}
	//ShowStageList
	public void ShowYear(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		String currentDateandTime = sdf.format(Calendar.getInstance().getTime());
		Yearlist.Value.clear();
		Yearlist.newValue(currentDateandTime.substring(0, 4), currentDateandTime.substring(0, 4));
		if( Integer.valueOf(currentDateandTime.substring(4, 6))==1) {
		  String prioryear=String.valueOf(Integer.valueOf(currentDateandTime.substring(0, 4))-1);	
		  Yearlist.newValue(prioryear, prioryear);	
		}
		//
        adapterData(Yearlist.ID,Year_Spinner);
        Year_Spinner.setTag("1");	
        Year_Spinner.setSelection(0);//default     
	}
	public void ShowMonth(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		String currentDateandTime = sdf.format(Calendar.getInstance().getTime());
		Monthlist.Value.clear();
		Monthlist.newValue(currentDateandTime.substring(4, 6), currentDateandTime.substring(4, 6));
		if( Integer.valueOf(currentDateandTime.substring(4, 6))==1) {
			Monthlist.newValue("12", "12");
		}else {
			String priormonth=String.format("%02d",Integer.valueOf(currentDateandTime.substring(4, 6))-1);
			Monthlist.newValue(priormonth, priormonth);
		}	
        adapterData(Monthlist.ID,Month_Spinner);
        Month_Spinner.setTag("1");	
        Month_Spinner.setSelection(0);//default     
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.dialog_updte_er, menu);
		return true;
	}
	@Override
	public void onClick(View v){
		   switch(v.getId()){
		   case R.id.saveerp_ok:
			   //
			   Intent intent = getIntent();
			   String datestr = Year_Spinner.getSelectedItem().toString()+Month_Spinner.getSelectedItem().toString();
	           intent.putExtra("YearMonth", datestr);
	           setResult(RESULT_OK, intent);
	           this.finish();
			   break;
		   case R.id.saveerp_no:
			   this.finish();
			   break;		  
		   }
	       		
	}
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	@Override
	public void onItemSelected(AdapterView<?> adapterView, View view, int position, long id) {
		
	}
	@Override
	public void onNothingSelected(AdapterView<?> arg0) {

	}
	private void adapterData(List<String> list,Spinner spin){
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,list);	
		adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spin.setAdapter(adapter);

	}
}
