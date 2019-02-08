package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Gift;
import pl.coderslab.model.Institution;
import pl.coderslab.model.User;
import pl.coderslab.repository.GiftRepository;
import pl.coderslab.repository.InstitutionRepository;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/")
public class HomeController {



    @Autowired
    Validator validator;


    @Autowired
    private GiftRepository giftRepository;


    @Autowired
    private InstitutionRepository institutionRepository;


    @Autowired
    private UserRepository userRepository;




    @ModelAttribute("users")
    public List<User> getUsers(){


        return userRepository.findAll();

    }


    @ModelAttribute("institutions")
    public List<Institution> getInstitutions(){


        return institutionRepository.findAll();

    }

    @ModelAttribute("gifts")
    public List<Gift> getGifts(){


        return giftRepository.findAll();

    }


    @RequestMapping(value = "/", produces = "text/html; charset=utf-8")
    public String viewIndex(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response, User user) {

        request.getSession(false);

        session.getAttribute("login");
        session.getAttribute("password");
        session.getAttribute("user");

        User sessionUser = (User)session.getAttribute("user");


        model.addAttribute("sessionUser", sessionUser);


        if(user != null){
            String username = user.getLogin();
        }



        return "index";


    }

























}
