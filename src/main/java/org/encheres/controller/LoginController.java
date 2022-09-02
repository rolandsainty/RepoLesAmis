package org.encheres.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;


import java.util.Locale;

public class LoginController {
    @Autowired
    private SessionLocaleResolver localeResolver;


    @RequestMapping(value = "/i18n", method = RequestMethod.GET)
    public String choixDeLaLangue(String lg){
        Locale locale = new Locale(lg);
        localeResolver.setDefaultLocale(locale);
        return"login";
    }
}
