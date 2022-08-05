package com.example.javagetheaders.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HeaderController {
	
	Logger logger = LoggerFactory.getLogger(HeaderController.class);

	@GetMapping("/listHeaders")
	public ResponseEntity<String> listAllHeaders(
	  @RequestHeader Map<String, String> headers) {
	    headers.forEach((key, value) -> {
	    	logger.info(String.format("Header '%s' = %s", key, value));
	    });

	    return new ResponseEntity<String>(
	      String.format("Listed %d headers", headers.size()), HttpStatus.OK);
	}
}