package com.crud.gradle.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
@RequestMapping("api/v1")
public class HelloController {

    @RequestMapping("/hello")
    public String helloWorld() {
        return "Hello World all BOYS AND GIRLS this is my message";
    }

}
