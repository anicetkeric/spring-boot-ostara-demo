package com.bootlabs.ostarademo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

    @GetMapping("/metric")
    public String getMetricDemo() {
        return "Test OK controller";
    }
}
