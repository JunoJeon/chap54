package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CountryMapperTest {
	
	@Autowired
	CountryMapper mapper;
	
	@Test
	void test1() {
		
	}
	
	@Test
	void sutowired() {
		
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
		list.forEach(c -> System.out.println("[" + c.getGovernmentForm() + "]"));
	}
	
	@Test
	void selectContinents() {
		var continents = mapper.selectContinents();
		System.out.println(continents);
	}
	
	@Test
	void selectAllByContinent() {
//		var list = mapper.selectAllByContinent("Asia");
//		list.forEach(c -> System.out.println(c.getContinent()));
//		assertThat(list).allMatch(c -> c.getContinent().equals("Asia"));
	}
	
	@Test
	void allMatch() {
		var list = new ArrayList<Boolean>();
		list.add(true);
		list.add(true);
		list.add(true);
		assertThat(list).allMatch(e -> (boolean)e);
		
		var list2 = new ArrayList<Integer>();
		list2.add(10);
		list2.add(20);
		list2.add(30);
		assertThat(list2).allMatch(e -> e<40);
	}
	
	@Test
	void selectAllByContinentAndRegion() {
		var list = mapper.selectAllByContinentAndRegion("Asia", "Eastern Asia");
		assertThat(list).allMatch(c -> c.getContinent().equals("Asia") && c.getRegion().equals("Eastern Asia"));
	}
}
