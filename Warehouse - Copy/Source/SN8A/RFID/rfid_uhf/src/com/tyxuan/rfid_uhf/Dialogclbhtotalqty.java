package com.tyxuan.rfid_uhf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.AdapterView.OnItemSelectedListener;

public class Dialogclbhtotalqty extends Activity implements OnClickListener {

	private ImageView exitimg;
	private MyAdapter adapter=null;	
	private ListView listView;
	List<Map<String, ?>> listviewlist = new ArrayList<Map<String, ?>>();
	String[] Coname = new String[]{"NO", "MAT  DATA", "Qty"};
	private droplist  Matlist=new droplist(); 
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.activity_dialogclbhtotalqty);		
		exitimg=(ImageView) findViewById(R.id.exitimg);
		exitimg.setOnClickListener(this);
		listView = (ListView) findViewById(R.id.listView_epctotallist);
		//Title
		Map<String, String> h = new HashMap<String, String>();
        for (int i = 0; i < Coname.length; i++)
            h.put(Coname[i], Coname[i]);
        listviewlist.add(h);
        //Show listview
        ShowListView();
              
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.dialogclbhtotalqty, menu);
		return true;
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
	public void onClick(View v){
		   switch(v.getId()){
		   case R.id.exitimg:
			   this.finish();
			   break;		  
		   }
	       		
	}
	//
	private void SumCLBHTotalQty(String CLBH,String Qty)
	{
		boolean IsExists=false;
		String newQty="0";
	    for(int i=0;i<Matlist.ID.size();i++)
	    {
	    	Log.e("RFID",String.valueOf(i) +" Exists CLBH: "+Matlist.getID(i)+" CLBHStr:"+CLBH);	
	      if (CLBH.equals(Matlist.getID(i))==true){
	    	  IsExists=true;
	    	  newQty=String.valueOf( Float.valueOf(Matlist.getValue(i))+Float.valueOf(Qty) );
	    	  Matlist.setValue(i, newQty);
	    	  break;
	      }
	    }
	    if(IsExists==false) {
	    	Matlist.ID.add(CLBH);
	    	Matlist.Value.add(Qty);
	    }
	}
	private void ShowListView()
	{
    	if(MainActivity.adapter!=null){
    		String CLBH="";
    		String Qty="";
    		Matlist.ID.clear();
    		Matlist.Value.clear();
    		if(MainActivity.adapter.items.size()>1) {
	    		for(int i=1;i<MainActivity.adapter.items.size();i++)
	    		{				
	    			HashMap<String,Object> item=(HashMap<String,Object>)MainActivity.adapter.items.get(i);  	
	    			CLBH=item.get("EPC  DATA").toString().substring(8, 18);	
	    			Qty=item.get("Qty").toString();
	    			SumCLBHTotalQty(CLBH,Qty);
	    		}    			
    		}
    	}
        //data  
    	for(int i=0;i<Matlist.ID.size();i++) {
    		Map<String, String> m = new HashMap<String, String>();
    		m.put(Coname[0], String.valueOf(i+1));
    		m.put(Coname[1], Matlist.getID(i));
    		m.put(Coname[2], Matlist.getValue(i));
    		listviewlist.add(m);    		
    	}
    	//Log.e("RFID", "Total: Step2");
    	adapter=null;
        adapter = new MyAdapter(this, listviewlist,
                R.layout.listitemview_invtotal, Coname, new int[]{
                R.id.textView_readsort, R.id.textView_readepc,
                R.id.textView_readcnt});
        listView.setClickable(true); 
        listView.setAdapter(adapter);  
	}
	//

}
