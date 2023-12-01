package model;

public class User {
    private String Email;
    private String Password;
    private Boolean IsAuthent;
    private String Phone;
    private String FullName;

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

    public String getPhone() {
        return this.Phone;
    }

    public void setPhone(String phone) {
        this.Phone = phone;
    }

    public String getFullName() {
        return this.FullName;
    }

    public void setFullName(String fullName) {
        this.FullName = fullName;
    }

    public Boolean getIsAuthent() {
        return this.IsAuthent;
    }

    public void setIsAuthent(Boolean isAuthent) {
        this.IsAuthent = isAuthent;
    }

}
