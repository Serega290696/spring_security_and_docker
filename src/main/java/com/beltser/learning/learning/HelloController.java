package com.beltser.learning.learning;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@RestController
public class HelloController {

    @RequestMapping("/")
    public String index() {
        String hostname = getHostname();
        return "<h1>Greetings from Spring Boot! Puh puh puh</h1>";
    }

    private String  getHostname() {
        String result = null;
        try {
            Runtime r = Runtime.getRuntime();

            Process p = r.exec("hostname");

            BufferedReader in =
                    new BufferedReader(new InputStreamReader(p.getInputStream()));
            String inputLine;
            while ((inputLine = in.readLine()) != null) {
                System.out.println(inputLine);
                result += inputLine;
            }
            in.close();
            return result;
        } catch (IOException e) {
            System.out.println(e);
        }
        return "Unknown";
    }

    @RequestMapping("/home")
    public String home() {
        return "<h1>Home page</h1>";
    }

}