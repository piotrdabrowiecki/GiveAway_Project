package pl.coderslab.model;


import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "gifts")
public class Gift {




    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @NotNull
    private String name;


    private String description;


    @ManyToOne
    private User user;

    @ManyToOne
    private Institution institution;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Institution getInstitution() {
        return institution;
    }

    public void setInstitution(Institution institution) {
        this.institution = institution;
    }


    @Override
    public String toString() {
        return "Gift{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", user=" + user +
                ", institution=" + institution +
                '}';
    }






}
