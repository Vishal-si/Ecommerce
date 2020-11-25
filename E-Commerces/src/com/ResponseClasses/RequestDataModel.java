package com.ResponseClasses;

import java.util.Map;

public class RequestDataModel {
	
	public static void generateString(Map<String, String[]> reqmap) {
		reqmap.forEach((k, v) -> {
			System.out.print(k + " = [");
			for(int i=0; i<v.length-1; System.out.print(v[i++] + ", "));
			System.out.println(v[v.length-1] + "]");
		});
	}
	
}
