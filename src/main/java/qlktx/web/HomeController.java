package qlktx.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    private Environment env;

    // @Value("${JAVA_PATH}")
    // private String myVariable;
    @Autowired
    HomeController(Environment env) {
        this.env = env;
    }

    @GetMapping("/")
    public String home(Model model) {
        // System.out.println("==========> " + myVariable);
        System.out.println("+++++++++++ " + env.getProperty("JAVA_HOME"));
        model.addAttribute("page", "Trang chủ");
        return "home";
    }
}