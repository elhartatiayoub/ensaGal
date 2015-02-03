/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.controller;

import com.ensa.controller.spring.ImageController;
import com.ensa.controller.spring.RootController;
import com.ensa.controller.spring.UserController;
import com.ensa.controller.spring.config.SecurityConfig;
import com.ensa.controller.spring.config.WebConfig;
import java.util.EnumSet;
import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;

/**
 *
 * @author Olayinka
 */
public class WebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext container) {

        CharacterEncodingFilter encodingFilter = new org.springframework.web.filter.CharacterEncodingFilter();
        encodingFilter.setEncoding("UTF-8");
        encodingFilter.setForceEncoding(false);
        FilterRegistration.Dynamic encodingFilterDinamic = container.addFilter("charEncodingFilter", encodingFilter);
        encodingFilterDinamic.addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), true, "/*");

        // Create the 'root' Spring application context
        AnnotationConfigWebApplicationContext rootContext
                = new AnnotationConfigWebApplicationContext();
        rootContext.register(WebConfig.class);
        rootContext.register(SecurityConfig.class);

        // Manage the lifecycle of the root application context
        container.addListener(new ContextLoaderListener(rootContext));

        // Create the dispatcher servlet's Spring application context
        AnnotationConfigWebApplicationContext dispatcherContext
                = new AnnotationConfigWebApplicationContext();
        dispatcherContext.register(ImageController.class);
        dispatcherContext.register(RootController.class);
        dispatcherContext.register(UserController.class);

        // Register and map the dispatcher servlet
        ServletRegistration.Dynamic dispatcher
                = container.addServlet("imageBank", new DispatcherServlet(dispatcherContext));
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");

        DelegatingFilterProxy filterProxy = new DelegatingFilterProxy();
        filterProxy.setTargetFilterLifecycle(true);
        container.addFilter("shiroFilter", filterProxy)
                .addMappingForUrlPatterns(null, false, "/*");

        // encoding filter
    }

}
