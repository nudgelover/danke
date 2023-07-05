package com.myservice;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.servlet.Filter;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {


    @Value("${imgdir}")
    String imgdir;
    @Value("${logdir}")
    String logdir;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/uimg/**").addResourceLocations(imgdir);
        registry.addResourceHandler("/logs/**").addResourceLocations(logdir);
    }

    //interceptor
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginCheckInterceptor()) //인터셉터 등록. 여기서 LoginCheckInterceptor()은 내가 구현한 클래스 이름이다.
                .order(1) //낮을 수록 먼저 호출
                .addPathPatterns("/**") //인터셉터를 적용할 url 패턴
                .excludePathPatterns("/", "/tools/**", "/sass/**", "/plugins/**", "/img/**", "/assets/**","/css/**", "/js/**"
                        , "/login", "/register","/register2","/registerimpl", "/loginimpl", "/vendor/**","/webjars/**"
                        , "/checkid", "/registercodeimpl", "/settings/pwdreset", "/settings/pwdimpl", "/pwdresetcodeimpl"
                        , "/settings/success", "/notification.js", "/firebase-messaging-sw.js")
        ; //인터셉터에서 제외할 패턴 지정

    }
}