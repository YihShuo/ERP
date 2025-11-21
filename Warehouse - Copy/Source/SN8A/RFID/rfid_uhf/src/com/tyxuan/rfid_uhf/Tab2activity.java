package com.tyxuan.rfid_uhf;


import com.tyxuan.rfid_uhf.R;
import com.uhf.uhf.UHF1.UHF1Application;
import com.uhf.uhf.UHF5Base.StringTool;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.TabHost.OnTabChangeListener;

import static com.tyxuan.rfid_uhf.Comm.opeT;
import static com.tyxuan.rfid_uhf.Comm.operateType.nullOperate;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;

import static com.tyxuan.rfid_uhf.Comm.opeT;
import static com.tyxuan.rfid_uhf.Comm.operateType.nullOperate;

import com.tyxuan.rfid_uhf.Comm;


import static com.tyxuan.rfid_uhf.Comm.strPwd;

public class Tab2activity extends Activity implements OnClickListener {
	//Socket Client
	Socket Socketclt = null;
	InetSocketAddress NetSocketAdd = null;
	MySocketHandler myHandler;
	DataOutputStream dataout;
	DataInputStream datain;
	MySocketThread mySocketThread;
	boolean MySocketinitOK=false;
	boolean MySocketThreadIsBreak=false;
	//
	Button button_conn, button_disconn, button_send;
	TextView textView_sockmsg = null;
	EditText etData_ip,etData_port,etData_msg;
	//
	class MySocketHandler extends Handler {
		public MySocketHandler() {
		}

		@Override
		public void handleMessage(Message msg) {
			// TODO Auto-generated method stub
			//Log.e("RFID", "handleMessage......");
			super.handleMessage(msg);
			//更新UI		
			Bundle bundle = msg.getData();
            String recemsg = bundle.getString("recemsg");
            String socketmsg = bundle.getString("socketmsg");
            if (recemsg.length()>0) {
              etData_msg.setText(recemsg);
              //Counduct ERP
              ERP_SendMatInfo_Write(recemsg);
            }
            if (socketmsg.length()>0) {
              textView_sockmsg.setText(socketmsg); 
            }
			
		}
	}
	class MySocketThread extends Thread {
		public void run() {
			String recemsg="";
			String socketmsg="";
			while (!MySocketThreadIsBreak) { //!isInterrupted()
				//Log.e("RFID", "handleMessage");
				try {
					Thread.sleep(200);
					recemsg="";
					socketmsg="";
					if (Socketclt != null && Socketclt.isConnected()) {					
						try {
							if (datain != null) {	
								if(datain.available()>0)
								{
								  byte[] buf = new byte[datain.available()]; 
								  int len = datain.read(buf);
								  recemsg=new String(buf,"Big5"); //Big5 或UTF-8才能正確顯示中文要配合傳送端文字編碼 				  
								}else{
									 
								}	
							}				
						} catch (IOException e) {
							// TODO Auto-generated catch block
							socketmsg="Socket error:"+e.getMessage();
							e.printStackTrace();
						}
					}else{
						socketmsg="Client disconn!";
					}
					
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					socketmsg="Socket error:"+e.getMessage();
					e.printStackTrace();
				}
				
				Message msg = Tab2activity.this.myHandler.obtainMessage(); //new Message();
				Bundle bundle = new Bundle();
                bundle.putString("recemsg", recemsg);
                bundle.putString("socketmsg", socketmsg);
                msg.setData(bundle);
				Tab2activity.this.myHandler.sendMessage(msg);
				
			}
		}
	}
	class SocketClientInitThread implements Runnable {
		@Override
		public void run() {
			    String socketmsg=""; 
				try {
					Socketclt = new Socket();
					//IP & Port 
					NetSocketAdd = new InetSocketAddress(etData_ip.getText().toString(),Integer.valueOf(etData_port.getText().toString()));
					Socketclt.connect(NetSocketAdd,2000);	
					dataout = new DataOutputStream(Socketclt.getOutputStream());
					datain = new DataInputStream(Socketclt.getInputStream());
					socketmsg="Connect OK";
					MySocketinitOK=true;
					//Log.e("RFID", "S0 MySocketinitOK:"+Boolean.toString(MySocketinitOK));
				} catch (UnknownHostException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					MySocketinitOK=false;
					socketmsg="Socket Error:"+e.getMessage();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					MySocketinitOK=false;
					e.printStackTrace();
					socketmsg="Socket error:"+e.getMessage();
				}	
				//hande message
				Message msg = Tab2activity.this.myHandler.obtainMessage(); //new Message();
				Bundle bundle = new Bundle();
				bundle.putString("recemsg", "");
                bundle.putString("socketmsg", socketmsg);               
                msg.setData(bundle);
				Tab2activity.this.myHandler.sendMessage(msg);		
				//
			    if( (mySocketThread==null) && (MySocketinitOK==true)) {
			      MySocketThreadIsBreak=false;
			      mySocketThread = new MySocketThread();
				  mySocketThread.start();
			    }
		}
	}
	//Button Click Connect
	public void ButtonClickConnect() {
	   if(myHandler==null) {			       
		   myHandler = new MySocketHandler();	
	   }
	   new Thread(new SocketClientInitThread()).start();
	}
	public void ButtonClickDisConnect() {
	   //
	   try {
		 if(Socketclt!=null) {
	        Socketclt.close();	
	        Socketclt=null;	
	        MySocketinitOK=false;
		 }
		 if(mySocketThread!=null) {	
			try {
				MySocketThreadIsBreak=true;
				mySocketThread=null;
			} catch (Exception e) {
			
			}
		  }
	   } catch (IOException e) {
			e.printStackTrace();
			textView_sockmsg.setText("Error:"+e.getMessage());				   
	   }		
	}
	//ERP 材料編碼 RFID tag
	public static String MatERPEncodeRFID(String RKNOStr,String MatNoStr,String QtyStr) {
    	String RKNO=RKNOStr ; //281299999 18(year)+09(month)+999999
    	char MatLB =MatNoStr.substring(0, 1).charAt(0);//'M'; 
    	String MatID=MatNoStr.substring(1, 10);//"010002798";
    	String MatQty=QtyStr;//"4638";//String.valueOf( Math.floor(Float.valueOf(etData_qty.getText().toString()) ) );//"4638";
    	String MatDec=QtyStr;
    	if(MatQty.indexOf('.')>0) {
    	  MatQty=MatQty.substring(0, MatQty.indexOf('.'));              	  
      	  MatDec=MatDec.substring(MatDec.indexOf('.')+1,MatDec.length());
      	  if(MatDec.length()<2) {MatDec=MatDec+"0";} 
    	}else {
    	  MatDec="00";	
    	}         	
    	//         	
    	String RKNO_Hex = String.format("%08x", Integer.parseInt(RKNO)).toUpperCase();
    	String MatLB_Hex = String.format("%02x", (int) MatLB).toUpperCase();
    	String MatID_Hex = String.format("%08x", Integer.parseInt(MatID)).toUpperCase();
    	String MatQty_Hex = String.format("%06x", Integer.parseInt(MatQty+MatDec)).toUpperCase();
		return RKNO_Hex+MatLB_Hex+MatID_Hex+MatQty_Hex;
	}
	public static String MatERPEncodeRFID_Pack(String RKNOStr,String MatNoStr,String QtyStr,String PackageStr) {
    	String RKNO=RKNOStr ; //28129999 18(year)+09(month)+9999
    	RKNO=RKNO.substring(2,4)+RKNO.substring(0,2)+RKNO.substring(4,8); //Month+Year+Number
    	char MatLB =MatNoStr.substring(0, 1).charAt(0);//'M'; 
    	String MatID=MatNoStr.substring(1, 10);//"010002798";
    	String MatQty=QtyStr;//"4638";//String.valueOf( Math.floor(Float.valueOf(etData_qty.getText().toString()) ) );//"4638";
    	String MatDec=QtyStr;
    	String MatPackage=PackageStr;
    	if(MatQty.indexOf('.')>0) {
    	  MatQty=MatQty.substring(0, MatQty.indexOf('.'));              	  
      	  MatDec=MatDec.substring(MatDec.indexOf('.')+1,MatDec.length());
      	  if(MatDec.length()<2) {MatDec=MatDec+"0";} 
    	}else {
    	  MatDec="00";	
    	}         	
    	//         	
    	String RKNO_Hex = String.format("%06x", Integer.parseInt(RKNO)).toUpperCase();
    	String MatLB_Hex = String.format("%02x", (int) MatLB).toUpperCase();
    	String MatID_Hex = String.format("%08x", Integer.parseInt(MatID)).toUpperCase();
    	String MatQty_Hex = String.format("%06x", Integer.parseInt(MatQty+MatDec)).toUpperCase();
    	String Package_Hex = String.format("%02x", Integer.parseInt(MatPackage)).toUpperCase();
		return RKNO_Hex+MatLB_Hex+MatID_Hex+MatQty_Hex+Package_Hex;		
	}
	public static String RFIDDeCodeMatERP(String RFIDStr) {
    	String RKNO=RFIDStr.substring(0, 8); //18(year)+09(month)+999999
    	String MatLB =RFIDStr.substring(8, 10); 
    	String MatID=RFIDStr.substring(10, 18); 
    	String MatQty=RFIDStr.substring(18, 24); 
    	String MatDec="";
    	//    
    	RKNO=String.format("%09d", Integer.parseInt(RKNO, 16));
        MatLB= String.valueOf((char)Integer.parseInt(MatLB, 16));
        MatID=String.format("%09d", Integer.parseInt(MatID, 16));
        MatQty=String.format("%d", Integer.parseInt(MatQty, 16));
        MatDec=MatQty.substring(MatQty.length()-2,MatQty.length());
        MatQty=MatQty.substring(0, MatQty.length()-2);
		return RKNO+MatLB+MatID+MatQty+"."+MatDec;
	}
	public static String RFIDDeCodeMatERP_Pack(String RFIDStr) {
    	String RKNO=RFIDStr.substring(0, 6); //18(year)+09(month)+9999
    	String MatLB =RFIDStr.substring(6, 8); 
    	String MatID=RFIDStr.substring(8, 16); 
    	String MatQty=RFIDStr.substring(16, 22); 
    	String MatDec="";
    	String Package=RFIDStr.substring(22, 24);
    	//    
    	RKNO=String.format("%08d", Integer.parseInt(RKNO, 16));
    	RKNO=RKNO.substring(2,4)+RKNO.substring(0,2)+RKNO.substring(4,8); //Month+Year+Number
    	MatLB= String.valueOf((char)Integer.parseInt(MatLB, 16));
        MatID=String.format("%09d", Integer.parseInt(MatID, 16));
        MatQty=String.format("%d", Integer.parseInt(MatQty, 16));
        MatDec=MatQty.substring(MatQty.length()-2,MatQty.length());
        MatQty=MatQty.substring(0, MatQty.length()-2);
        Package=String.format("%03d", Integer.parseInt(Package, 16));
		return RKNO+MatLB+MatID+Package+MatQty+"."+MatDec;	
	}
    //=============================
    Button button_readop, button_writeop, button_encode, button_decode;
    TabHost tabHost_op;
    EditText etDataR,etData_rkno,etData_matNo,etData_qty,etData_package;
    View tab1view,tab2view;
    //
    @SuppressWarnings("rawtypes")
    private ArrayAdapter arradp_bank, arradp_fbank, arradp_lockbank, arradp_locktype;
    UHF1Application myapp;

    private View createIndicatorView(Context context, TabHost tabHost, int title) {
        LayoutInflater inflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        View tabIndicator = inflater.inflate(R.layout.tab_indicator_vertical, tabHost.getTabWidget(), false);
        final TextView titleView = (TextView) tabIndicator.findViewById(R.id.tv_indicator);
        titleView.setText(title);
        return tabIndicator;
        //return null;
    }
    private void getTagPassword() {
        strPwd="";      
    }
    
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.tab2_tablelayout);
        Application app = getApplication();
        myapp = (UHF1Application) app;
        //指標
        MainActivity.tab2activity=this;
        
        //直列tabhost
        tabHost_op = (TabHost) findViewById(R.id.tabhost2);
        tabHost_op.setup();
        tabHost_op.getTabWidget().setOrientation(LinearLayout.VERTICAL);
       
        //
        tab1view=createIndicatorView(this, tabHost_op, R.string.tab2_layout_textView_tag_decode);
        tabHost_op.addTab(tabHost_op.newTabSpec("tab1").setIndicator(tab1view)
                .setContent(R.id.tab2_sub1));
        //
        tab2view=createIndicatorView(this, tabHost_op, R.string.tab2_layout_textView_conect);
        tabHost_op.addTab(tabHost_op.newTabSpec("tab2").setIndicator(tab2view)
                .setContent(R.id.tab2_sub2));
        //
        button_readop = (Button) findViewById(R.id.button_read);
        button_writeop = (Button) findViewById(R.id.button_write);
        etDataR = (EditText) findViewById(R.id.edData_tag);
        //
        button_encode = (Button) findViewById(R.id.button_encode);
        button_decode = (Button) findViewById(R.id.button_decode);
        etData_rkno = (EditText) findViewById(R.id.edData_rkno);
        etData_matNo = (EditText) findViewById(R.id.edData_matNo);
        etData_qty = (EditText) findViewById(R.id.edData_qty);
        etData_package = (EditText) findViewById(R.id.edData_package);
        //Socket Client   
        button_send = (Button) findViewById(R.id.button_Send);
        button_conn = (Button) findViewById(R.id.button_Conn);
        button_disconn = (Button) findViewById(R.id.button_Disconn);
        button_send.setOnClickListener(this);
        button_conn.setOnClickListener(this);
        button_disconn.setOnClickListener(this);
        etData_msg= (EditText) findViewById(R.id.edData_Msg);
        etData_ip= (EditText) findViewById(R.id.edData_IP);
        etData_port= (EditText) findViewById(R.id.edData_Port);
        textView_sockmsg = (TextView) findViewById(R.id.textView_Sockmsg);      
        //
        Comm.mRWLHandler=tagOpehandler;
        button_readop.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
                try {
                    etDataR.setText("");
                    opeT=Comm.operateType.readOpe;
                    int datatype = 0;//Comm.SortGroup(gr_wdatatype); //16 Hex(0) or ASCII (1)=>0
                    int ant = 0;//Comm.SortGroup(gr_opant); //antenna=> 0
                    int tagBank =1;// spinner_bankr.getSelectedItemPosition(); //EPC(0)=>1
                    String opCount ="6";// etCountR.getText().toString();//=>2
                    String startAdd ="2";// etStatrAddR.getText().toString(); //1各區塊 2 各字元，最多8各區塊 16個字員，只能write 16Hex 英文字
                    //weston test
                    //Log.e("RFID", "datatype:"+Integer.toString(datatype)+" ant:"+Integer.toString(ant));
                    //Log.e("RFID", "tagBank:"+Integer.toString(tagBank)+" opCount:"+opCount+" startAdd:"+startAdd);
                    getTagPassword();
                    Comm.readTag(ant,tagBank,opCount,startAdd,datatype);
                } catch (Exception e) {
                    Toast.makeText(Tab2activity.this, "Exception:" + e.getMessage(),
                            Toast.LENGTH_SHORT).show();
                }
            }

        });

        button_writeop.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
                // TODO Auto-generated method stub
                try {
                    opeT=Comm.operateType.writeOpe;
                    int datatype =0;// Comm.SortGroup(gr_wdatatype);
                    int ant =0;// Comm.SortGroup(gr_opant);
                    int tagBank =1;// spinner_bankw.getSelectedItemPosition();
                    String opCount ="6";// etCountW.getText().toString();
                    String startAdd ="2";// etStatrAddW.getText().toString();
                    String strWriteData = etDataR.getText().toString();

                    if(tagBank==1&&(startAdd.equals("0")||startAdd.equals("1"))){
                        Toast.makeText(Tab2activity.this, "寫入不能操作區塊0或1 ",
                                Toast.LENGTH_SHORT).show();
                    }

                    int len =0;
                    if(datatype==0&&strWriteData.length()%4==0){
                        String[] result = StringTool.stringToStringArray(strWriteData.toUpperCase(), 2);
                        len = (byte) ((result.length / 2 + result.length % 2) & 0xFF);
                    }else if (datatype==1&&strWriteData.length()%2==0){
                        len = strWriteData.length()/2;
                    }else if (datatype==2){
                        len = strWriteData.length();
                    }else
                        Toast.makeText(Tab2activity.this, "輸入數據長度不對 ",Toast.LENGTH_SHORT).show();
                    //int len = (byte) ((result.length / 2 + result.length % 2) & 0xFF);
                    //etCountW.setText(String.valueOf(len));
                    Toast.makeText(Tab2activity.this, "寫入長度:"+Integer.valueOf(len),
                            Toast.LENGTH_SHORT).show();
                    getTagPassword();
                    Comm.writeTag( ant, tagBank, opCount, startAdd, datatype,  strWriteData);
                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    Toast.makeText(Tab2activity.this, "Exception:" + e.getMessage(),
                            Toast.LENGTH_SHORT).show();
                }
            }

        });
        //
        button_encode.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {           	
            	//
            	//etDataR.setText(MatERPEncodeRFID(etData_rkno.getText().toString(),etData_matNo.getText().toString()
            	//		                         ,etData_qty.getText().toString()));
            	etDataR.setText(MatERPEncodeRFID_Pack(etData_rkno.getText().toString(),etData_matNo.getText().toString()
                                                 ,etData_qty.getText().toString(),etData_package.getText().toString()));            	
            }
        });   
        button_decode.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
            	String strWriteData = etDataR.getText().toString();
            	if(strWriteData.length()>=24) {
            		/*
            		String MatERP=RFIDDeCodeMatERP(strWriteData);
	            	etData_rkno.setText(MatERP.substring(0,9));
	            	etData_matNo.setText(MatERP.substring(9,19));
	            	etData_qty.setText(MatERP.substring(19,MatERP.length()));
	            	*/
            		String MatERP=RFIDDeCodeMatERP_Pack(strWriteData);
	            	etData_rkno.setText(MatERP.substring(0,8));
	            	etData_matNo.setText(MatERP.substring(8,18));
	            	etData_package.setText(MatERP.substring(18,21));
	            	etData_qty.setText(MatERP.substring(21,MatERP.length()));
            	}
            	
            }
        }); 
        tabHost_op.setOnTabChangedListener(new OnTabChangeListener() {

            @Override
            public void onTabChanged(String arg0) {
                // TODO Auto-generated method stub
                int j = tabHost_op.getCurrentTab();
                TabWidget tabIndicator = tabHost_op.getTabWidget();
                View vw = tabIndicator.getChildAt(j);
                vw.setBackgroundColor(Color.BLUE);
                int tc = tabHost_op.getTabContentView().getChildCount();
                for (int i = 0; i < tc; i++) {
                    if (i != j) {
                        View vw2 = tabIndicator.getChildAt(i);//51803
                        vw2.setBackgroundColor(Color.TRANSPARENT);
                    }
                }
            }

        });
        //Socket 連線
        ButtonClickDisConnect();
        ButtonClickConnect();
	}
    
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.tab2activity, menu);
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
    public void onStart()
    {
    	super.onStart();
		SharedPreferences remember = getSharedPreferences("RememberPreference",0);
		etData_ip.setText(remember.getString("ERP_ServerIP", "192.168.23.252"));
		etData_port.setText(remember.getString("ERP_ServerPort", "15000"));
    }
    @Override
    public void onStop()
    {
    	super.onStop();
    	SharedPreferences remember = getSharedPreferences("RememberPreference",0);
    	remember.edit().putString("ERP_ServerIP", etData_ip.getText().toString()).commit();
        remember.edit().putString("ERP_ServerPort", etData_port.getText().toString()).commit();	      
    }
    @Override
    protected void onResume()
    {
        super.onResume();
        //Socket 連線
        ButtonClickDisConnect();
        ButtonClickConnect();
    }
    private android.os.Handler tagOpehandler = new android.os.Handler() {
        @SuppressWarnings({"unchecked", "unused"})
        @Override
        public void handleMessage(Message msg) {
            try {
                switch (Comm.opeT) {
                    case readOpe:
                        Bundle rb = msg.getData();
                        String strErr=rb.getString("Err");
                        String strEPC = rb.getString("readData");
                        //weston test
                        //Log.e("RFID", "readOpe strEPC:"+strEPC+" strErr:"+strErr);
                        if (strEPC!="") {
                            etDataR.setText(strEPC);
                            button_decode.performClick();                 
                            SocketSendMsg("<MAT>"+etData_rkno.getText().toString()+etData_matNo.getText().toString()+etData_package.getText().toString()+etData_qty.getText().toString());
                        }else {
                        	SocketSendMsg("<MATNOK>");
                            Toast.makeText(Tab2activity.this,"Read Fail"+strErr,Toast.LENGTH_SHORT).show();
                        }
                        break;
                    case writeOpe:
                        Bundle wb = msg.getData();
                        boolean isWriteSucceed = wb.getBoolean("isWriteSucceed");
                        if (isWriteSucceed) {
                        	SocketSendMsg("<MATOK>");
                            Toast.makeText(Tab2activity.this,"Write Succeed",Toast.LENGTH_SHORT).show();
                        }else {
                        	SocketSendMsg("<MATNOK>");
                            Toast.makeText(Tab2activity.this,"Write Fail",Toast.LENGTH_SHORT).show();
                        }
                        break;
                    case lockOpe:
                        Bundle lb = msg.getData();
                        boolean isLockSucceed = lb.getBoolean("isLockSucceed");
                        if (isLockSucceed)
                            Toast.makeText(Tab2activity.this,"Lock Succeed",Toast.LENGTH_SHORT).show();
                        else
                            Toast.makeText(Tab2activity.this,"Lock Fail",Toast.LENGTH_SHORT).show();
                        break;
                    default:
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
                Toast.makeText(Tab2activity.this,"Fail",Toast.LENGTH_SHORT).show();
            }
            Comm.opeT = nullOperate;
        }
    };

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && event.getAction() == KeyEvent.ACTION_DOWN) {
            if ((System.currentTimeMillis() - myapp.exittime) > 2000) {
                Toast.makeText(getApplicationContext(), "Touch again to exit program!", Toast.LENGTH_SHORT).show();
                myapp.exittime = System.currentTimeMillis();
            } else {
                finish();
                // System.exit(0);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }	
    //

    @Override
	public void onClick(View v){
    	  
		   switch(v.getId()){
		   case R.id.button_Conn:
			    //
			    ButtonClickConnect();
			    break;		  
		   case R.id.button_Disconn:
			   //
			   ButtonClickDisConnect();
			   
			   break;	
		   case R.id.button_Send:
			   //
			   String sendText = etData_msg.getText().toString();	
			   SocketSendMsg(sendText);
			   break;
		   }
			
	}
    public void SocketSendMsg(String msg) {
		   if (MySocketinitOK==true) {   			   
			   try {
					byte[] buf = msg.getBytes("ASCII"); //"hello".getBytes("UTF-8"); 
					dataout.write(buf, 0, buf.length); 
					textView_sockmsg.setText("Send msg OK");
			   } catch (UnknownHostException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					textView_sockmsg.setText("Error:"+e.getMessage());
			   } catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					textView_sockmsg.setText("Error:"+e.getMessage());
			   }
		   }    	
    }
    //update RFID tag
    public void ERP_SendMatInfo_Write(String msg) {   	
    	if(msg.indexOf("<MAT>")>-1) {   
    		if(msg.length()>=20) {
            	etData_rkno.setText(msg.substring(5,13));
            	etData_matNo.setText(msg.substring(13,23));
            	etData_package.setText(msg.substring(23,26));
            	etData_qty.setText(msg.substring(26,msg.length()));	
            	//
            	button_encode.performClick();//編碼
            	tab1view.performClick();//切換第一頁
            	button_writeop.performClick();//寫入RFID
    		}
    	}
		if(msg.indexOf("<GETMAT>")>-1) { 
			tab1view.performClick();//切換第一頁
			button_readop.performClick();//讀取RFID
		}
    }
}
