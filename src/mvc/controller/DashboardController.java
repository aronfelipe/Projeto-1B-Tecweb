package mvc.controller;
import org.springframework.stereotype.Controller;
import
org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DashboardController {
	 @RequestMapping("/dashboard")
	 public String execute() {
	 System.out.println("Lógica do MVC");
	 return "dashboard";
	 }
	 
	 @RequestMapping("/store")
	 public String store() {
	 System.out.println("Lógica do MVC");
	 return "store";
	 }
	 
	 @RequestMapping("/remove")
	 public String remove() {
	 System.out.println("Lógica do MVC");
	 return "remove";
	 }
	 
	 @RequestMapping("/edit")
	 public String edit() {
	 System.out.println("Lógica do MVC");
	 return "edit";
	 }
}