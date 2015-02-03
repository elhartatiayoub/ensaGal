package com.ensa.controller.spring;

import com.ensa.controller.shiro.StringHash;
import com.ensa.form.UserInscriptionForm;
import com.ensa.form.UserSignForm;

import com.ensa.model.User;
import com.ensa.model.controller.UserDAO;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresGuest;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    private UserDAO userService;



    @RequiresGuest
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String addUser(@Valid @ModelAttribute("UserInscriptionForm") UserInscriptionForm p, BindingResult result, Model model) {
        User user = new User();
        if (result.hasErrors()) {
            System.out.println(result.getFieldError().getField());
            user.setEmail(p.getEmail());
            user.setPassHash(StringHash.hash(p.getPassword()));
            user.setName(p.getUsername());
            this.userService.addUser(user);
            model.addAttribute("user", user);
            return "index";
        } else {
            return "signup";
        }
    }
//     @RequestMapping(value = "/connect")
//    public String connUser(@Valid @ModelAttribute("UserSignForm") UserSignForm p ,BindingResult result, Model model) {
//        User user = new User();
//        if (result.hasErrors()) {
////            System.out.println(result.getFieldError().getField());
////            user.setName(p.getUsername());
////            user.setPassHash(StringHash.hash(p.getPass()));
////            user.setName(p.getUsername());
////            this.userService.addUser(user);
//           user = this.userService.listUser().get(0);
//            model.addAttribute("user", user);
//            return "index";
//        }else{
//            return "signin";
//        }
//    }

    @RequiresGuest
    @RequestMapping(value = "/connect", method = RequestMethod.POST)
    public String submitLoginForm(@Valid UserSignForm loginUser, BindingResult result, Model m, HttpServletRequest request) {
        if (!result.hasErrors()) {
            try {
                User userTemp = new User();
                userTemp.setEmail(loginUser.getUsername());
                userTemp.setPassHash(loginUser.getPass());

                Subject subject = SecurityUtils.getSubject();
                subject.login(new UsernamePasswordToken(userTemp.getEmail(), userTemp.getPassHash(), loginUser.isField()));
                Session session = subject.getSession(true);
                session.setAttribute("user", userTemp);
                session.setTimeout(24 * 3600000);
                m.addAttribute("message", "Successfully logged in person");
                String referer = request.getHeader("referer");
                if (referer != null && !referer.isEmpty()) {
                    return "redirect:" + referer;
                }
                referer = (String) SecurityUtils.getSubject().getSession().getAttribute("fallback");
                if (referer != null && !referer.isEmpty()) {
                    return "redirect:" + referer;
                }
            } catch (AuthenticationException ex) {
                ex.printStackTrace();
                m.addAttribute("message", "It seems your email is not registered.");
            }
        }
        return "login";
    }

}
