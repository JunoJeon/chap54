package com.example.json;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.jupiter.api.Test;

import com.example.util.Alpha;
import com.example.util.Color;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectMapperTest {
	ObjectMapper mapper = new ObjectMapper();
	
	@Test
	void stringify() throws JsonProcessingException {
		ObjectMapper mapper = new ObjectMapper();
		var alpha = new Alpha();
		System.out.println(alpha);
		var json = mapper.writeValueAsString(alpha);
		System.out.println(json);
	}
	
	@Test
	void parse() throws JsonMappingException, JsonProcessingException {
		String json = """
				 	{
						"line":		200,
				 		"column":	400,
				 		"fg": 		"Black",
				 		"bg":		"Red",
				 		"ch":		"J"
				 	}
				""";
		
		
		var alpha = mapper.readValue(json, Alpha.class);
		System.out.println(alpha.getLine());
		System.out.println(alpha);
	}
	
	@Test
	void array() throws JsonProcessingException {
		int[] arr = {10,20,30};
		System.out.println(mapper.writeValueAsString(arr));
		
		Alpha[] arr2 = {new Alpha(), new Alpha()};
		System.out.println(mapper.writeValueAsString(arr2));
		
		var list = new ArrayList<Alpha>();
		list.add(new Alpha());
		list.add(new Alpha());
		System.out.println(mapper.writeValueAsString(list));
		
		var map = new HashMap<String, Object>();
		map.put("line", 200);
		map.put("column", 400);
		map.put("fg", Color.Black);
		map.put("bg", Color.Cyan);
		map.put("ch", 'A');
		System.out.println(mapper.writeValueAsString(map));
		
	}
}
