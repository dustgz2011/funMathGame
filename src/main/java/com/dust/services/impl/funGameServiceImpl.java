package com.dust.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.dust.services.funGameService;

@Service
public class funGameServiceImpl implements funGameService {

	@Override
	public List<String> playgame(String maxnum, String option) {
		// TODO Auto-generated method stub
		List<String> numList = new ArrayList<>();

		int num = Integer.parseInt(maxnum);
		String numStr = "";
		for (int i = 1; i < num; i++) {
			numStr = String.valueOf(i);
			switch (option) {
			case "0":
				if (i % 5 == 0 && i % 3 == 0) {
					numList.add("FizzBuzz");
					break;
				}
				if (i % 3 == 0) {
					numList.add("Fizz");
					break;
				}
				if (i % 5 == 0) {
					numList.add("Buzz");
					break;
				}
				
			case "1":
				boolean blnFizz = (i % 3 == 0) || (numStr.indexOf("3") > 0);
				boolean blnBuzz = (i % 5 == 0) || (numStr.indexOf("5") > 0);
				if (blnFizz && blnBuzz) {
					numList.add("FizzBuzz");
					break;
				}
				if (blnFizz) {
					numList.add("Fizz");
					break;
				}
				if (blnBuzz) {
					numList.add("Buzz");
					break;
				}
			default: 
				numList.add(numStr);
			}
		}
		return numList;
	}

}
