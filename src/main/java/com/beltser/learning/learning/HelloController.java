package com.beltser.learning.learning;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        return "<h1>Greetings from Spring Boot!</h1>";
    }

    @RequestMapping("/home")
    public String home() {
        return "<h1>Home page</h1>";
    }

}