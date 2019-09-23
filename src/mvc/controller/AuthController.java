package mvc.controller;
import org.springframework.stereotype.Controller;
import
org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthController {
 @RequestMapping("/")
 public String execute() {
 System.out.println("Lógica do MVC");
 return "info";
 }
 @RequestMapping("/register")
 public String register() {
 System.out.println("Lógica do MVC");
 return "register";
 }
}