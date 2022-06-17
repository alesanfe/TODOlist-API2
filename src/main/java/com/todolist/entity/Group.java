package com.todolist.entity;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.List;

@Table(name = "group")
@Entity
public class Group {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "idGroup")
    private long idGroup;

    @Column(name = "name")
    @Size(max = 50, message = "The name is too long.")
    private String name;

    @Column(name = "description")
    @Size(max = 500, message = "The description is too long.")
    private String description;

    @Column(name = "createdDate")
    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The createdDate is invalid.")
    private String createdDate;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "group_user", joinColumns = @JoinColumn(name = "idGroup"), inverseJoinColumns = @JoinColumn(name = "idUser"))
    private List<User> users;

    public Group() {
    }

    public Group(long idGroup, String name, String description, String createdDate) {
        this.idGroup = idGroup;
        this.name = name;
        this.description = description;
        this.createdDate = createdDate;
    }

    public long getIdGroup() {
        return idGroup;
    }

    public void setIdGroup(long idGroup) {
        this.idGroup = idGroup;
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

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
