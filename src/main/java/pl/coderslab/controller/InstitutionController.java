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

import javax.validation.Validator;
import java.util.List;

@Controller
@RequestMapping("/institution")
public class InstitutionController {





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



    @RequestMapping(value = "/institutions", produces = "text/html; charset=utf-8")
    public String viewProjects(Model model) {

        List<Institution> institutions = institutionRepository.findAll();

        model.addAttribute("institutions", institutions);

        return "/institution/institutions";



    }





















}
