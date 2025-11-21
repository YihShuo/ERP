package com.tyxuan.rfid_uhf;

import java.util.List;
import java.util.Map;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleAdapter;

public class MyAdapter extends SimpleAdapter{
	public List<Map<String,Object>> items=null;
	public MyAdapter(Context context, List<? extends Map<String, ?>> data,
			int resource, String[] from, int[] to) {
		super(context, data, resource, from, to);
		// TODO Auto-generated constructor stub
		cr=Color.WHITE;
		this.items = (List < Map<String,Object> > ) data;	
	}
    public void setColor(int color)
    {
    	cr=color;
    }
    private int cr;
	@Override      
	public View getView(final int position, View convertView, ViewGroup parent)
	{           
		// TODO Auto-generated method stub 
		// listview       
		// position          
		View view = null;           
		if (convertView != null) {
			  view = convertView;
		} else {
			  view = super.getView(position, convertView, parent);
		}
		int[] colors = {cr, Color.rgb(219, 238, 244) };//RGB 
		view.setBackgroundColor(colors[position % 2]);//
		return super.getView(position, view, parent); 
	}
	public void notifyDataSetChanged(){
		super.notifyDataSetChanged();
	}
}
