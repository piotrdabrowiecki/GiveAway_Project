package pl.coderslab.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
import javax.validation.Valid;
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
    public String viewInstitutions(Model model) {

        List<Institution> institutions = institutionRepository.findAll();

        model.addAttribute("institutions", institutions);

        return "/institution/institutions";



    }
    @RequestMapping(value = "/editInstitutionDetails", method = RequestMethod.GET)
    public String updateInstitution(@RequestParam long id, Model model){


        Institution editInstitution = institutionRepository.findOne(id);

        model.addAttribute("editInstitution", editInstitution);


        return "/institution/editInstitutionDetails";



    }
    @RequestMapping(value = "/editInstitutionDetails", method = RequestMethod.POST)
    public String updatedInstitution(@ModelAttribute Institution institution, Model model, HttpSession session, @RequestParam long id){

        Institution editInstitution = institutionRepository.findOne(id);

        model.addAttribute(editInstitution);

        institutionRepository.save(editInstitution);

        // String login = editUser.getLogin();

        String sessionLogin = session.getAttribute("login").toString();


        return "redirect:/institution/institutions";






    }
    @RequestMapping("/deleteInstitution")
    public String deleteInstitution(@RequestParam long id){


        Institution deleteInstitution = institutionRepository.findOne(id);

        institutionRepository.delete(deleteInstitution);


        return "redirect:/institution/institutions";


    }
    @RequestMapping(value = "/addInstitution", method = RequestMethod.GET)
    public String addInstitution(Model model){

        model.addAttribute("institution", new Institution());

        return "/institution/addInstitution";



    }
    @RequestMapping(value = "/addInstitution", method = RequestMethod.POST)
    public String saveInstitution(@Valid Institution institution, BindingResult result) {

        if (result.hasErrors()) {

            return "/institution/addInstitution";

        }


        institutionRepository.save(institution);

        return "redirect:/institution/institutions";



    }





















}
