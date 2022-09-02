package org.encheres.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class WelcomeController {
	
	@Autowired
	SessionLocaleResolver localeResolver;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String rootageVersWelcome(ModelMap map) {
		return "welcome";
	}
	
	@RequestMapping(value = "/i18n", method = RequestMethod.GET)
	public String choixDeLaLangue(String lg) {
		Locale locale = new Locale(lg);
		localeResolver.setDefaultLocale(locale);
		return "welcome";
	}
}