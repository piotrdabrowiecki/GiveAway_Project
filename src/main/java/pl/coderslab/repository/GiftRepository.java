package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.model.Gift;
import pl.coderslab.model.Institution;

import java.util.List;

public interface GiftRepository extends JpaRepository<Gift, Long> {


    List<Gift> findByUserId(Long UserId);





}
