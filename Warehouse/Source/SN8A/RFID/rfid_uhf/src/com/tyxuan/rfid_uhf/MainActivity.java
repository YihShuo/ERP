package com.tyxuan.rfid_uhf;

import static com.tyxuan.rfid_uhf.Comm.isrun;
import static com.tyxuan.rfid_uhf.Comm.checkDevice;
import static com.tyxuan.rfid_uhf.Comm.isQuick;
import static com.tyxuan.rfid_uhf.Comm.context;
import static com.tyxuan.rfid_uhf.Comm.soundPool;
import static com.tyxuan.rfid_uhf.Comm.moduleType;
import static com.tyxuan.rfid_uhf.Comm.rfidOperate;
import static com.tyxuan.rfid_uhf.Comm.Awl;
import static com.tyxuan.rfid_uhf.Comm.lsTagList;
import static com.tyxuan.rfid_uhf.Comm.tagListSize;
import static com.uhf.uhf.UHF1.UHF001.Devaddrs;
import static com.uhf.uhf.UHF1.UHF001.UHF1handler;
import static com.tyxuan.rfid_uhf.Comm.opeT;
import static com.tyxuan.rfid_uhf.Comm.playSound;
import static com.tyxuan.rfid_uhf.Comm.UHF005connect;
import static com.tyxuan.rfid_uhf.Comm.myapp;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tyxuan.rfid_uhf.MyAdapter;
import com.tyxuan.rfid_uhf.R;
import com.tyxuan.rfid_uhf.Comm;
import com.tyxuan.rfid_uhf.MainActivity;
import com.uhf.api.cls.Reader;
import com.uhf.api.cls.Reader.TAGINFO;
import com.uhf.uhf.UHF1.UHF001;
import com.uhf.uhf.UHF1Function.AndroidWakeLock;
import com.uhf.uhf.UHF1Function.SPconfig;
import com.uhf.uhf.UHF1Function.ScreenListener;
import com.uhf.uhf.UHF1Function.ScreenListener.ScreenStateListener;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.TabActivity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.provider.Settings.Secure;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;

@SuppressWarnings("deprecation")
public class MainActivity extends  AbstractMainTabActivity {
	static Tab2activity tab2activity;
	static MyAdapter adapter=null;	
    //UHF variable
	TabHost tabHost;
    TextView tv_state, tv_tags;
    Button button_read, button_stop, button_clean, button_uploaderp, button_total;
    private ListView listView;
    private ProgressDialog pd;
    ScreenListener l;
    List<Byte> LB = new ArrayList();
    int scanCode = 0;
    List<Map<String, ?>> listviewlist = new ArrayList<Map<String, ?>>();
    TabWidget tw;
    String[] Coname = new String[]{"NO", "EPC  DATA", "Qty"};
    //
    View tab1view,tab2view,tab3view;
    EditText etData_matid,etData_matnm,etData_matpack,etData_matpackqty,etData_mattotalqty,etData_matkcbh,etData_matmemo;
    EditText etData_docno,etData_userdate,etData_zsno,etData_dwbh;
    EditText etData_scanclbh;
    //UHF class
    public class MyEpListAdapter extends ArrayAdapter<Object> {

        @SuppressWarnings("unchecked")
        public MyEpListAdapter(Context context, int resource,
                               int textViewResourceId,
                               @SuppressWarnings("rawtypes") List objects) {
            super(context, resource, textViewResourceId, objects);
            // TODO Auto-generated constructor stub
        }

    }

    private Handler uhfhandler = new Handler() {
        @SuppressWarnings({"unchecked", "unused"})
        @Override
        public void handleMessage(Message msg) {
            try {
                switch (msg.what) {
                    case Comm.UHF5MESSAGE_TEXT:
                        tagListSize = lsTagList.size();
                        if (tagListSize > 0) {
                            showlist();
                        }
                        break;
                    case Comm.UHF1MESSAGE_TEXT:
                        Bundle bd = msg.getData();
                        String strR = bd.get("Result").toString();
                        int readCount = bd.getInt("readCount");
                        if (readCount > 0)
                            tv_state.setText(String.valueOf(readCount));
                        if (strR == "SUCCEED")
                            showlist();
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };

    public Handler connectH = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            Bundle bd = msg.getData();
            String strMsg = bd.get("Msg").toString();
            if (moduleType == Comm.Module.UHF001) {

                if (!strMsg.equals("") && strMsg != null) {
                    tv_state.setText(strMsg);
                    UHF001.mhandler = uhfhandler;
                    myapp.needreconnect = false;
                    l = new ScreenListener(MainActivity.this);
                    l.begin(new ScreenStateListener() {
                        @Override
                        public void onScreenOn() {
                        }

                        @Override
                        public void onScreenOff() {
                            if (button_stop.isEnabled())
                                button_stop.performClick();
                            

                            if (myapp.Mreader != null)
                                myapp.Mreader.CloseReader();

                            if (myapp.Rpower != null)
                                myapp.needreconnect = true;
                        }
                    });
                } else
                    tv_state.setText("模式打開失败");
            } else if (moduleType == Comm.Module.UHF005) {
                if (!strMsg.equals("") && strMsg != null)
                    tv_state.setText(strMsg);
                else
                    tv_state.setText("模式打開失败");
                rfidOperate.mHandler = uhfhandler;
            }
        }
    };  
    private boolean checkcolumnlistIsExists() {
    	boolean IsExists=false;
    	if(adapter!=null){
    		String MatERP="";  
    		HashMap<String,Object> item=(HashMap<String,Object>)adapter.items.get(0);
    		if(item.get("EPC  DATA").toString().equals("EPC  DATA"))
    		{
    			IsExists=true;
    		}
    	}
    	return IsExists;
    }
    private boolean checkdatalistIsExists(String tmpMatERP) {
    	boolean IsExists=false;
    	if(adapter!=null){
    		String MatERP=""; 
    		String Scanclbh=etData_scanclbh.getText().toString().toUpperCase();
    		for(int i=1;i<adapter.items.size();i++)
    		{						
    			HashMap<String,Object> item=(HashMap<String,Object>)adapter.items.get(i);  	
    			MatERP=item.get("EPC  DATA").toString().substring(0,21);	
    			tmpMatERP=tmpMatERP.substring(0,21);
    			if(MatERP.equals(tmpMatERP)) {
    				IsExists=true;
    				break;
    			}
    		}
    		//Check Searh CLBH
    		if(IsExists==false) {
    			if(!Scanclbh.equals("")) {
    			  if (tmpMatERP.substring(8,18).indexOf(Scanclbh)==-1)
    			  {
    				  IsExists=true;  
    			  }
    			}
    		}
    	}
    	return IsExists;
    }
    private void showlist() {
        try {
            int index = 1;
            int ReadCnt = 0;//銝芣
            //listviewlist.clear();
            if(checkcolumnlistIsExists()==false) {
              Map<String, String> h = new HashMap<String, String>();
              for (int i = 0; i < Coname.length; i++)
                h.put(Coname[i], Coname[i]);
              listviewlist.add(h);
            }
            
            String epcstr = "";//epc
            String MatERP = "";
            if (moduleType == Comm.Module.UHF001) {
                if (Devaddrs.size() > 0)
                    tv_tags.setText(String.valueOf(Devaddrs.size()));
                if(isQuick&&!Comm.isrun)
                    tv_state.setText(String.valueOf("正在處理數據，請稍候...."));
                if (!isQuick || !Comm.isrun) {
                    Iterator<Entry<String, TAGINFO>> iesb;
                    synchronized (this) {
                        Map<String, TAGINFO> Devaddrs2 = new LinkedHashMap<String, TAGINFO>();
                        Devaddrs2.putAll(Devaddrs);
                        iesb = Devaddrs2.entrySet().iterator();
                    }
                    while (iesb.hasNext()) {
                        // int ListIndex = 0;
                        Map<String, String> m = new HashMap<String, String>();
                        TAGINFO bd = iesb.next().getValue();
                        epcstr = Reader.bytes_Hexstr(bd.EpcId);
                        if (epcstr.length() > 4) {
                            m.put(Coname[0], String.valueOf(index));
                            index++;
                            epcstr = String.format("%-24s", epcstr);
                            m.put(Coname[1], epcstr);
                            String cs = m.get("time");
                            if (cs == null)
                                cs = "0";
                            ReadCnt = Integer.parseInt(cs) + bd.ReadCnt;
                            m.put(Coname[2], String.valueOf(ReadCnt));
                            listviewlist.add(m);
                        }
                    }
                }
            } else if (moduleType == Comm.Module.UHF005) {
                try {
                    int ListIndex = 0;
                    if (tagListSize > 0)
                        tv_tags.setText(String.valueOf(tagListSize));
                    if(isQuick&&!Comm.isrun)
                        tv_state.setText(String.valueOf("正在處理數據，請稍候...."));
                    if (!isQuick || !Comm.isrun) {
                        while (tagListSize > 0) {
                            epcstr = lsTagList.get(ListIndex).strEPC;
                            //Log.e("RFID", "list view epcstr:"+epcstr+" length:"+Integer.valueOf(epcstr.length()));
                            MatERP =epcstr.toString().replaceAll(" ","");                            
                            MatERP=Tab2activity.RFIDDeCodeMatERP_Pack(MatERP);//解碼成ERP材料	
                            //Log.e("RFID", "MatERP:"+MatERP+" length:"+Integer.valueOf(MatERP.length()));
                            //
                            if(checkdatalistIsExists(MatERP)==false) {
                              if (epcstr.length() > 4) {
                                Map<String, String> m = new HashMap<String, String>();
                                m.put(Coname[0], String.valueOf(index));
                                m.put(Coname[1], MatERP);
                                m.put(Coname[2], MatERP.substring(21,MatERP.length()));
                                ReadCnt = lsTagList.get(ListIndex).nReadCount;
                                //m.put(Coname[2], String.valueOf(ReadCnt));
                                index++;
                                listviewlist.add(m);
                              }
                              ListIndex++;
                            }
                            tagListSize--;
                        }
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
//            tv_tags.setText(String.valueOf(list.size() - 1));
            if (!isQuick || !Comm.isrun) {
            	adapter=null;
                adapter = new MyAdapter(this, listviewlist,
                        R.layout.listitemview_inv, Coname, new int[]{
                        R.id.textView_readsort, R.id.textView_readepc,
                        R.id.textView_readcnt});
                listView.setClickable(true); 
                listView.setAdapter(adapter);
                listView.setOnItemClickListener(this);
                //               
                tv_tags.setText(String.valueOf(adapter.items.size()-1));
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        if(!isrun)
            tv_state.setText(String.valueOf("等待操作..."));
    }

    public class listThread extends Thread {
        private int ticket = 100;//瘥葵蝥輻��賣��00撘巨

        public listThread() {
        }

        public listThread(String name) {
            super(name);
        }

        @Override
        public void run() {

        }
    }


    private void ReadHandleUI() {
        this.button_read.setEnabled(false);
        this.button_stop.setEnabled(true);
        this.button_uploaderp.setEnabled(false);
        this.button_clean.setEnabled(false);
        TabWidget tw = Comm.supoinTabHost.getTabWidget();
        tw.getChildAt(1).setEnabled(false);
        tw.getChildAt(2).setEnabled(false);

    }

    private void StopHandleUI() {
        button_read.setEnabled(true);
        button_stop.setEnabled(false);
        this.button_uploaderp.setEnabled(true);
        this.button_clean.setEnabled(true);
        TabWidget tw = Comm.supoinTabHost.getTabWidget();
        tw.getChildAt(1).setEnabled(true);
        tw.getChildAt(2).setEnabled(true);
    }
    
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
       
    	if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_DOWN) {

            if ((System.currentTimeMillis() - myapp.exittime) > 2000) {
                Toast.makeText(getApplicationContext(), "Touch again to exit",
                        Toast.LENGTH_SHORT).show();
                myapp.exittime = System.currentTimeMillis();
            } else {
            	//Log.e("RFID", "@@keyCode:"+Integer.valueOf(keyCode)+" "+Integer.valueOf(event.getAction()));
                if (UHF1handler != null)
                    Comm.stopScan();
                if (myapp.Mreader != null)
                    myapp.Mreader.CloseReader();
                if (myapp.Rpower != null)
                    myapp.Rpower.PowerDown();
                Comm.powerDown();
                finish();
                // System.exit(0);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (scanCode == 261 && isrun)
            button_stop.performClick();
        else if (scanCode == 261 && !isrun)
            button_read.performClick();
        return super.onKeyUp(keyCode, event);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent e) {
        try {
            scanCode = e.getScanCode();
            return super.dispatchKeyEvent(e);
        } catch (Exception ex) {
            // TODO: handle exception
            ex.printStackTrace();
            return false;
        }
    }
    //
    private void ConductEPCMat(String EPCMat) {
    	try {
    		JSONObject jsonObject = new JSONObject(EPCMat);
    		JSONArray  jsonListObject=jsonObject.getJSONArray("EPCMat");
            JSONObject jsonChildObject;	  
	        for(int i=0;i<jsonListObject.length();i++)
	        {
	        	jsonChildObject=(JSONObject)jsonListObject.opt(i);
	        	etData_matnm.setText(jsonChildObject.getString("MatNM"));
	        	etData_mattotalqty.setText(jsonChildObject.getString("TotalQty"));
	        	etData_matkcbh.setText(jsonChildObject.getString("KCBH"));
	        	etData_matmemo.setText(jsonChildObject.getString("Memo"));
	        	etData_docno.setText(jsonChildObject.getString("Docno"));
	        	etData_userdate.setText(jsonChildObject.getString("Userdate"));
	        	etData_zsno.setText(jsonChildObject.getString("Zsno"));
	        	etData_dwbh.setText(jsonChildObject.getString("Dwbh"));
	        	//
	        }
		} catch (Exception e) {
			  e.printStackTrace();
			  Log.d(TAG,e.toString());
			  Toast.makeText(getApplicationContext(), "Error:"+e.toString(), Toast.LENGTH_SHORT).show();
		} 
  	
    }
    //
    public  void SaveEPCDataList(String YearMonth) {
   	
		//
    	if(adapter!=null){
    		if(adapter.items.size()>1) {
	    		String Data="";
	    		String jsonData="";
	    		//String RFID="";
	    		String MatERP="";
	    		Data=Data+"{\"EPC\":[";
	    		for(int i=1;i<adapter.items.size();i++)
	    		{						
	    			HashMap<String,Object> item=(HashMap<String,Object>)adapter.items.get(i);  	
	    			MatERP=item.get("EPC  DATA").toString();	
	    			Data=Data+"\""+MatERP+"\",";	
	    		}
	    		if (Data!=""){
	    			jsonData=jsonData+Data.substring(0, Data.length()-1)+"]}";
	    			//this.sendPostDataToInternet(URL+"ERP_iqcGetData.aspx", new String[] {"ID", "PW","SaveQcDefect" }, new String[] {UserID,UserPW,jsonData });
	    			this.sendPostDataToInternet(URL+"EPCData.aspx", new String[] {"ID", "PW","YYYYMM","EPCStock"}, new String[] {UserID,UserPW,YearMonth,jsonData });
	    			//					             
	    		}else{
	    			jsonData=jsonData+"]}}";
	    			this.sendPostDataToInternet(URL+"EPCData.aspx", new String[] {"ID", "PW","YYYYMM","EPCStock" }, new String[] {UserID,UserPW,YearMonth,jsonData });
	    		}
    		}else {
    			Toast.makeText(getApplicationContext(), "No Tag Data", Toast.LENGTH_SHORT).show();
    		}
    	}else{
    		Toast.makeText(getApplicationContext(), "No Tag Data", Toast.LENGTH_SHORT).show();
    	}
    	
    }
    //==================================================================
    private View createIndicatorView(Context context, TabHost tabHost, int title) {
    	View tabIndicator = LayoutInflater.from(context).inflate(R.layout.tab_indicator_horizontal, null);
    	final TextView titleView = (TextView) tabIndicator.findViewById(R.id.tv_indicator_hor);
        titleView.setText(title);
        return tabIndicator;
        //return null;
    }
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		//mainActivity=this;
		setContentView(R.layout.activity_main);
		Bundle params = this.getIntent().getExtras();
		UserID= params.getString("UserID");
		UserPW= params.getString("UserPW");			
		//		
        Comm.app = getApplication();
        Comm.spConfig = new SPconfig(this);
        context = MainActivity.this;
        
        soundPool = new SoundPool(10, AudioManager.STREAM_SYSTEM, 5);
        soundPool.load(this, R.raw.beep51, 1);
       	
		tabHost = (TabHost)findViewById(android.R.id.tabhost);
		//
		tabHost.setup();
		tabHost.getTabWidget().setOrientation(LinearLayout.HORIZONTAL);
		//		
		tab1view=createIndicatorView(this, tabHost, R.string.tab1textview);
		tabHost.addTab(tabHost.newTabSpec("tab1").setIndicator(tab1view).setContent(R.id.tab1));
		tab2view=createIndicatorView(this, tabHost, R.string.tab2textview);
		tabHost.addTab(tabHost.newTabSpec("tab2").setIndicator(tab2view).setContent(new Intent(this, Tab2activity.class)));		
		tab3view=createIndicatorView(this, tabHost, R.string.tab3textview);
		tabHost.addTab(tabHost.newTabSpec("tab3").setIndicator(tab3view).setContent(R.id.tab3));				
		//
	    etData_matid= (EditText) findViewById(R.id.edData_matid);
	    etData_matnm= (EditText) findViewById(R.id.edData_matnm);
	    etData_matpack= (EditText) findViewById(R.id.edData_matpack);
	    etData_matpackqty= (EditText) findViewById(R.id.edData_matpackqty);
	    etData_mattotalqty= (EditText) findViewById(R.id.edData_mattotalqty);
	    etData_matkcbh= (EditText) findViewById(R.id.edData_matkcbh);
	    etData_matmemo= (EditText) findViewById(R.id.edData_matmemo);
	    etData_docno= (EditText) findViewById(R.id.edData_docno);
	    etData_userdate= (EditText) findViewById(R.id.edData_userdate);
	    etData_zsno= (EditText) findViewById(R.id.edData_zsno);
	    etData_dwbh= (EditText) findViewById(R.id.edData_dwbh);
		//	
        
		Comm.supoinTabHost = tabHost;
        tw = Comm.supoinTabHost.getTabWidget();
        //
        button_read = (Button) findViewById(R.id.button_start);
        button_stop = (Button) findViewById(R.id.button_stop);
        button_stop.setEnabled(false);
        button_clean = (Button) findViewById(R.id.button_readclear);
        button_uploaderp = (Button) findViewById(R.id.button_uploaderp);
        button_total= (Button) findViewById(R.id.button_total);
        listView = (ListView) findViewById(R.id.listView_epclist);

        tv_state = (TextView) findViewById(R.id.textView_invstate);
        tv_tags = (TextView) findViewById(R.id.textView_readallcnt);
        etData_scanclbh=(EditText)findViewById(R.id.edData_scanclbh); 
        //etData_scanclbh.clearFocus(); 
        
        tv_state.setText("模塊打開失敗");
        
        Awl = new AndroidWakeLock((PowerManager) getSystemService(Context.POWER_SERVICE));

        button_read.setOnClickListener(new OnClickListener() {
            @SuppressWarnings("unused")
            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
                try {
                    tv_state.setText("開始讀取...");
                    Awl.WakeLock();
                    Comm.startScan();
                    ReadHandleUI();
                } catch (Exception ex) {
                    Toast.makeText(MainActivity.this,
                            "ERR" + ex.getMessage(), Toast.LENGTH_SHORT)
                            .show();
                }
            }
        });
        button_stop.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
                Awl.ReleaseWakeLock();
                tv_state.setText("停止讀取");
                Comm.stopScan();
                showlist();
                StopHandleUI();
            }

        });
        button_clean.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
        		StringBuffer sb = new StringBuffer();
        		sb.append("are you sure clear list ?");
        		Dialog dlg = new AlertDialog.Builder(MainActivity.this)
        				.setTitle("RFID clean").setMessage(sb.toString())
        				.setPositiveButton("OK",new DialogInterface.OnClickListener() {

        							@Override
        							public void onClick(DialogInterface dialog,
        									int which) {
        				                tv_tags.setText("0");
        				                tv_state.setText("清空完成，等待操作");
        				                Comm.clean();
        				                adapter=null;
        				                listviewlist.clear();
        				                showlist();
        							}

        						})
				        .setNegativeButton("No",
						new DialogInterface.OnClickListener() {
							public void onClick(DialogInterface dialog,
									int whichButton) {
								//
								
							}
						}).create();//
        		//	
        		dlg.show();
            }
        });
        button_uploaderp.setOnClickListener(this);
        button_total.setOnClickListener(this);
        //
        tabHost.setOnTabChangedListener(new OnTabChangeListener() {

            @Override
            public void onTabChanged(String arg0) {
                int j = tabHost.getCurrentTab();
                //連線分頁切換連線
                if(j==1) {
                 if(MainActivity.tab2activity!=null) {
                	 MainActivity.tab2activity.ButtonClickDisConnect();
                	 MainActivity.tab2activity.ButtonClickConnect();
                 }
                }
                //
                tw.getChildAt(j).setBackgroundColor(Color.parseColor("#FF8C00"));
                if (j != 0) {
                    tw.getChildAt(0).setBackgroundColor(Color.parseColor("#696969"));
                }
                if (j != 1) {
                    tw.getChildAt(1).setBackgroundColor(Color.parseColor("#696969"));
                }
                if (j != 2) {
                    tw.getChildAt(2).setBackgroundColor(Color.parseColor("#696969"));
                }
            }
        });
        tw.getChildAt(0).setBackgroundColor(Color.parseColor("#FF8C00"));
        checkDevice();
        if (!Comm.powerUp()) {
            Comm.powerDown();
            Toast.makeText(MainActivity.this, R.string.powerUpFalse,
                    Toast.LENGTH_SHORT).show();
            Log.d("Main", "powerUp false");
        }
        Log.d("Main", "powerUp SEC");
        Comm.connecthandler = connectH;
        Comm.Connect();
        Log.d("Main", "connect SUC");
        
        
	}
    
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
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
    public void onResume() {
        // TODO Auto-generated method stub
        super.onResume();
        if (moduleType == Comm.Module.UHF005)
            rfidOperate.onResume(this);
    }
    //

    @Override
    public void onStop() {
        super.onStop();// ATTENTION: This was auto-generated to implement the App Indexing API.
    }
    //
	@Override
	public void onClick(View v){
		   switch(v.getId()){
		   case R.id.button_uploaderp:
			   //SaveEPCDataList();
			   Intent it1=new Intent(this,DialogUpdteERPActivity.class);	
			   this.startActivityForResult(it1,1 );
			   break;	
		   case R.id.button_total:
			   Intent it2=new Intent(this,Dialogclbhtotalqty.class);	
			   //
			   Bundle params = new Bundle();//
			   
		       params.putString("UserID", UserID);
		       params.putString("UserPW", UserPW);
		       it2.putExtras(params);	
			   //
		       this.startActivity(it2);
			   break;
		   }
	       
		
	}
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
       
        if(resultCode == RESULT_OK && data.getExtras().containsKey("YearMonth")) {
            String datestr = data.getExtras().getString("YearMonth");
            //Update ERP 
            SaveEPCDataList(datestr);
        }
    } 
	@Override
	public int getlayoutId()
	{
		return R.layout.activity_main;
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
					if(responseStr.indexOf("UpdOK")>0){//
						Toast.makeText(getApplicationContext(), "ERP Update OK", Toast.LENGTH_SHORT).show();
					}else if(responseStr.indexOf("EPCMat")>0){//
						ConductEPCMat(responseStr); //Get Material Info
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
		
		HashMap<String,Object> item=(HashMap<String,Object>)adapter.items.get(position);  
	    String MatERP=item.get("EPC  DATA").toString();
	    if(MatERP.length()>21) {
		    tab3view.performClick();//切換第三頁	
		    etData_matid.setText(MatERP.substring(8,18));
		    etData_matpack.setText(MatERP.substring(18,21));
		    etData_matpackqty.setText(MatERP.substring(21,MatERP.length()));
		    etData_matmemo.setText("RKNO:"+MatERP.substring(0,8));
		    //
		    String jsonData="{\"EPC\":[\""+MatERP+"\"]}";
		    this.sendPostDataToInternet(URL+"EPCData.aspx", new String[] {"ID", "PW","EPCMat" }, new String[] {UserID,UserPW,jsonData });    
	    }
	}	
}
