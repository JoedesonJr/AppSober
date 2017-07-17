package br.ufsm.sober.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class SoberController {

    @RequestMapping("programacao")
    public String programacao() {
        return "programacao";
    }

    @RequestMapping("programacao/dia")
    public String programaçaoDia(HttpServletRequest request, Model model) {
        model.addAttribute("dia", request.getParameter("d").replaceAll("Â", ""));
        return "programacao-dia";
    }
}
