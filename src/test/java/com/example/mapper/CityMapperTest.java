package com.example.mapper;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import org.apache.ibatis.jdbc.SQL;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CityMapperTest {
	
	@Autowired
	CityMapper mapper;
	
	@Test
	void xxx() {
		assertThat(mapper).isNotNull();
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
		System.out.println(list);
		System.out.println(list.size());
		System.out.println(list.get(0));
		
		assertThat(list.size()).isEqualTo(4079);
	}
	
	@Test
	void selectConutryCodes() {
		var list = mapper.selectConutryCodes();
		list.forEach(m -> System.out.println(m));
//		list.forEach(m -> System.out.println(m.get("CODE")));
	}
	
	@Test
	void selectByCode() {
		var list = mapper.selectAllByCode("");
		assertThat(list).isEmpty();
		
		list = mapper.selectAllByCode("KOR");
		list.forEach(c -> System.out.println(c));
		
//		assertThatThrownBy(() -> {
//			mapper.selectAllByCode(null);
//		}).isInstanceOf(MaBatisSysremException.class);
	}
	
	@Test
	void searchAll() {
		System.out.println("1. null, null");
		System.out.println(searchSQL(null, null));
		System.out.println("2. \"\", null");
		System.out.println(searchSQL("", null));
	}
	
	String searchSQL(String code, Long population) {
		var s = new SQL();
		s.SELECT("*");
		s.FROM("city");
		if(code != null && !code.trim().equals(""))
			s.WHERE(String.format("country_code = '%s'", code));
		if(population != null)
			s.WHERE(String.format("population >= %d", population));
		
		return s.toString();
	}
	
	@Test
	void searchAll2() {
		var list = mapper.searchAll(null, null);
		assertThat(list.size()).isEqualTo(4079);
		list = mapper.searchAll("     ", null);
		assertThat(list.size()).isEqualTo(4079);
		
		list = mapper.searchAll("KOR", null);
		list.forEach(c -> System.out.println(c));
		list = mapper.searchAll(null, 9000000L);
		list = mapper.searchAll("KOR", 9000000L);
		
		
	}
}
