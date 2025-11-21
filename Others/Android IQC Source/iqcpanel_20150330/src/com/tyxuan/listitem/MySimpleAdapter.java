package com.tyxuan.listitem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tyxuan.iqcpanel.R;


import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;



public class MySimpleAdapter extends SimpleAdapter  {
	        public List<Map<String,Object>> items=null;
	        
			public MySimpleAdapter(Context context,List<? extends Map<String,?>>data, int resource,String[] from,int[] to)
	        {				
				super(context, data, resource, from, to);
				this.items = (List < Map<String,Object> > ) data;					
			}
		
			@Override
			public View getView(int position, View convertView, ViewGroup parent) {
				// TODO Auto-generated method stub
				final int mPosition = position;
				
				convertView = super.getView(position, convertView, parent);
				//if(mPosition==0){	
				    //
					
					ImageView imgAdd=(ImageView)convertView.findViewById(R.id.imgAdd);	
					imgAdd.setOnClickListener(new View.OnClickListener() {
						@Override
						public void onClick(View v) {
								// TODO Auto-generated method stub
								mHandler.obtainMessage(R.id.imgAdd, mPosition, 0).sendToTarget();
						}			  
					});
				    ImageView imgMin=(ImageView)convertView.findViewById(R.id.imgMin);	
				    imgMin.setOnClickListener(new View.OnClickListener() {
						@Override
						public void onClick(View v) {
								// TODO Auto-generated method stub
								mHandler.obtainMessage(R.id.imgMin, mPosition, 0).sendToTarget();
						}			  
					});					

				//}
				return convertView;
			}
			private Handler mHandler = new Handler() {
				
				@Override
				public void handleMessage(Message msg) {
					// TODO Auto-generated method stub
					super.handleMessage(msg);
					
					switch(msg.what){
					  case R.id.imgAdd:
						  
						  //Log.d("iqc_debug","step0:"+msg.arg1);
						  HashMap<String,Object> item1=(HashMap<String,Object>)items.get(msg.arg1);
						  int Qty1= Integer.parseInt(item1.get("Defect_Qty").toString());
						  item1.put("Defect_Qty", String.valueOf(Qty1+1));
						  notifyDataSetChanged();
						  /*
						  View viewItem1 =gridview.getChildAt(msg.arg1);
						  if (viewItem1 != null) { 
						    TextView addtv=(TextView)viewItem1.findViewById(R.id.defect_value); 
						    if (addtv!=null){Log.d("iqc_debug","step0 null:"+addtv.getText());}
						  }
						  */
						  //addtv.setText("OK+1");
						  //addtv.invalidate();
						break;
					  case R.id.imgMin:
						  HashMap<String,Object> item2=(HashMap<String,Object>)items.get(msg.arg1);
						  int Qty2= Integer.parseInt(item2.get("Defect_Qty").toString());
						  if ((Qty2-1)>=0){
						    item2.put("Defect_Qty", String.valueOf(Qty2-1));
						    notifyDataSetChanged();	
						  }
						  /*
						  Log.d("iqc_debug","step1:"+msg.arg1);
						  View viewItem2 =gridview.getChildAt(msg.arg1);
						  if (viewItem2 != null) { 
						    TextView mintv=(TextView)viewItem2.findViewById(R.id.defect_value); 
						    if (mintv!=null){Log.d("iqc_debug","step1 null:"+mintv.getText());}
						  }
						  */
						  //mintv.setText("OK-1");	
						  //mintv.invalidate();
						break;
					}

				}
		
			};
}
