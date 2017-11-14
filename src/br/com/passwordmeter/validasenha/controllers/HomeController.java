package br.com.passwordmeter.validasenha.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//Anotação
@Controller
public class HomeController {	
	@RequestMapping("/")
	public String index() {
			System.out.println("Entrando na home do password meter");	
			return "home";
	}
}
