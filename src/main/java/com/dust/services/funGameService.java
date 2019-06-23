package com.dust.services;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface funGameService {
	List<String> playgame(String maxnum,String option);
}
