package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.model.Gift;
import pl.coderslab.model.Institution;
import pl.coderslab.model.User;
import pl.coderslab.repository.GiftRepository;
import pl.coderslab.repository.InstitutionRepository;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {




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



    @RequestMapping(value = "/editUser", method = RequestMethod.GET)
    public String updateUser(@RequestParam long id, Model model){


        User editUser = userRepository.findOne(id);

        model.addAttribute("editUser", editUser);


        return "/user/editUser";



    }
    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String updatedUser(@ModelAttribute User user, Model model, HttpSession session, @RequestParam long id){

        User editUser = userRepository.findOne(id);

        model.addAttribute(editUser);

        userRepository.save(user);

        // String login = editUser.getLogin();

        String sessionLogin = session.getAttribute("login").toString();


        if(!sessionLogin.startsWith("admin")){

            return "redirect:/user/loggedUserView?id=" + editUser.getId();

        }
        else{

            return "redirect:/user/users";

        }







    }
























}
