package com.wcy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by frd on 2016/5/15.
 */
@Controller
public class DemoController {

    @RequestMapping
    public String demo() {
        return "demo";
    }
}
