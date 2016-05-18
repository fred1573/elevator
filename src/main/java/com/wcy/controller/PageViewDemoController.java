package com.wcy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author frd
 *         2016/5/18.
 */
@Controller
public class PageViewDemoController {

    @RequestMapping("/jsp")
    public String index() {
        return "demo";
    }
}
