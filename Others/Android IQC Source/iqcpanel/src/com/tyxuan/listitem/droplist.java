package com.tyxuan.listitem;

import java.util.ArrayList;
import java.util.List;

public class droplist {


	public List<String> ID = new ArrayList<String>();
	public List<String> Value = new ArrayList<String>();
	
	public String getID(int Position) {
		return ID.get(Position);
	}
	public String getValue(int Position) {
		return Value.get(Position);
	}
	public void setValue(String IDStr,String ValueStr) {
		ID.add(IDStr);
		Value.add(ValueStr);
	}
}
