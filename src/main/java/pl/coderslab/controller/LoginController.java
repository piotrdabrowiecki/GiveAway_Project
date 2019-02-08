package pl.coderslab.controller;


import org.mindrot.jbcrypt.BCrypt;
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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/user")
public class LoginController {




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



    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginUser(Model model, User user){



        model.addAttribute("user", user);

        return "/user/login";





    }
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(Model model, User user, HttpServletRequest request, HttpServletResponse response) {


        HttpSession session = request.getSession(false);

        String password = user.getPassword();
       // String email = user.getEmail();

        String login = user.getLogin();


        User loginUser = userRepository.findByLogin(login);
        loginUser.getId();
        long id = loginUser.getId();



        if(loginUser != null){


            String databasePassword = userRepository.findOne(loginUser.getId()).getPassword();

            boolean passwordCheck = BCrypt.checkpw(password, databasePassword);


            if (passwordCheck  &&  !login.startsWith("admin")) {

                request.getSession(true);
                session.setAttribute("login", loginUser.getLogin());
                session.setAttribute("password", loginUser.getPassword());
                session.setAttribute("user", loginUser);


                return "redirect:/user/loggedUserView?id=" + loginUser.getId();

            }
            else if (passwordCheck && login.startsWith("admin")) {

                request.getSession(true);
                session.setAttribute("login", loginUser.getLogin());
                session.setAttribute("password", loginUser.getPassword());
                session.setAttribute("user", loginUser);


                return "redirect:/admin/loggedAdminView?id=" + loginUser.getId();

            }

        }
        else {


            return "/user/login";


        }


       return "/user/login";




    }
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {

        if(session != null) {
            session.invalidate();
        }

        return "redirect:/";





    }
    @RequestMapping("/loggedUserView")
    public String loggedUser(@RequestParam long id, Model model){


        User loggedUser = userRepository.findOne(id);

        model.addAttribute(loggedUser);

        return "/user/loggedUserView";



    }






























}
