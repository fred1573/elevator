package com.wcy.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author frd
 *         2016/5/18.
 */
@RestController
public class RestDemoController {

    @RequestMapping("/demo")
    public Demo index() {
        return new Demo(1, "a");
    }

}
