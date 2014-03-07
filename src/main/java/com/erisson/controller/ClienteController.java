package com.erisson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.erisson.beans.Cliente;
import com.erisson.services.ClienteService;

@Controller
@RequestMapping("/cliente")
public class ClienteController {

	@Autowired
	private ClienteService clienteService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView lista() {
		ModelAndView model = new ModelAndView();
		model.setViewName("/cliente/lista");
		model.addObject("clientes", clienteService.getClientes());
		return model;
	}

	@RequestMapping(value = "/novo", method = RequestMethod.GET)
	public ModelAndView novo() {
		return new ModelAndView("cliente/cliente", "cliente", new Cliente());
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addCliente(@ModelAttribute("cliente") Cliente cliente,
			BindingResult result, final RedirectAttributes redirectAttributes) {
		if (result.hasErrors()) {
			return "/cliente/";
		}

		clienteService.addCliente(cliente);
				
		//obs.: com redirectAttributes é possível enviar objeto para view mesmo num redirecionamento.
		redirectAttributes.addFlashAttribute("msgSucesso", "Cliente Cadastrado Com Sucesso!!!");
		return "redirect:/cliente/";
	}
	
}
