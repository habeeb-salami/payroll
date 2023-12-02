package model;

public class User {
    private String Email;
    private String Password;
    private Boolean Status;
    // private String Phone;
    private String FullName;
    private String Role;

    public String getEmail() {
        return this.Email;
    }

    public void setEmail(String email) {
        this.Email = email;
    }

    public String getPassword() {
        return this.Password;
    }

    public void setPassword(String password) {
        this.Password = password;
    }

    // public String getPhone() {
    // return this.Phone;
    // }

    // public void setPhone(String phone) {
    // this.Phone = phone;
    // }
    public String getRole() {
        return this.Role;
    }

    public void setRole(String role) {
        this.Role = role;
    }

    public String getFullName() {
        return this.FullName;
    }

    public void setFullName(String fullName) {
        this.FullName = fullName;
    }

    public Boolean getStatus() {
        return this.Status;
    }

    public void setStatus(Boolean Status) {
        this.Status = Status;
    }

}
