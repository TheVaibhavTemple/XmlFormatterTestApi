package com.example.demo;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
class DemoController {
	
	@Autowired
	private DemoTransformer dt;
	
    private static final Logger log = LoggerFactory.getLogger(DemoController.class);

    @PostMapping(value="/transform", produces=MediaType.APPLICATION_XML_VALUE)
    public ResponseEntity<String> transform(@RequestBody String data){
    	return new ResponseEntity<String>(dt.transform(data), HttpStatus.OK);
    }


}