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

import javax.validation.Valid;
import javax.validation.Validator;
import java.util.List;




@Controller
@RequestMapping("/gift")
public class GiftController {



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


    @RequestMapping(value = "/addGift", method = RequestMethod.GET)
    public String addGift(@RequestParam long id, Model model){


        User giftUser = userRepository.findOne(id);

        model.addAttribute("giftUser", giftUser);

        model.addAttribute("gift", new Gift());

        return "/gift/addGift";



    }
    @RequestMapping(value = "/addGift", method = RequestMethod.POST)
    public String saveGift(@Valid Gift gift, BindingResult result, User user, @RequestParam long id, Model model) {


        User giftUser = userRepository.findOne(id);

        model.addAttribute(giftUser);



        if (result.hasErrors()) {

            return "/gift/addGift";

        }

        giftRepository.save(gift);

        return "redirect:/gift/userGifts?id=" + giftUser.getId();





    }
    @RequestMapping("/userGifts")
    public String userGifts(@RequestParam long id, Model model){


        User giftUser = userRepository.findOne(id);

        List<Gift> userGifts = giftRepository.findByUserId(id);

        model.addAttribute("giftUser", giftUser);
        model.addAttribute("userGifts",userGifts);

        return "/gift/userGifts";



    }
    @RequestMapping(value = "/gifts", produces = "text/html; charset=utf-8")
    public String viewGifts(Model model) {

        List<Gift> gifts = giftRepository.findAll();

        model.addAttribute("gifts", gifts);

        return "/gift/gifts";



    }
    @RequestMapping("/deleteGift")
    public String deleteGift(@RequestParam long id){


        Gift deleteGift = giftRepository.findOne(id);

        giftRepository.delete(deleteGift);


        return "redirect:/gift/gifts";

    }

































}
