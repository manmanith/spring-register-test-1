package com.kshrd.registration.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class FileConfig implements WebMvcConfigurer {

    //Be careful: "src/main/resources/images" error without slash;
    String serverPath = "src/main/resources/images/";

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        WebMvcConfigurer.super.addResourceHandlers(registry);

        //change resource path "src/main/resources/images/" to "/images/**";
        registry.addResourceHandler("/images/**").addResourceLocations("file:" + serverPath);
        //file: (type of path from where?) is root directory from project file: src/main/resources/images/

    }
}
