package com.example.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

//@Configuration
//@EnableWebMvc
@PropertySource("classpath:config.properties")
public class Beans {
	public static String movieDir= "D:\\dn\\[tvN] 미생.E01~20.HDTV.H264.720p-WITH";
}
