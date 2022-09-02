package org.encheres;

import java.util.Locale;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@SpringBootApplication
public class EncheresOrgApplication {

	public static void main(String[] args) {
		SpringApplication.run(EncheresOrgApplication.class, args);
	}
	

	@Bean
	public WebServerFactoryCustomizer<ConfigurableServletWebServerFactory>
	  webServerFactoryCustomizer() {
	    return factory -> factory.setContextPath("");
	}
	
	@Bean
    public SessionLocaleResolver localeResolver(){
        SessionLocaleResolver r = new SessionLocaleResolver();
        r.setDefaultLocale(Locale.FRANCE);
        return r;
    }

}
