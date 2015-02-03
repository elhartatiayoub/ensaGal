package com.ensa.form;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Email;
import com.ensa.form.constraints.FieldMatch;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Size;

/**
 *
 * @author Iob
 */

@FieldMatch(first = "password", second = "confPass", message = "typeMismatch")
public class UserInscriptionForm {
    
    @Email
    @NotNull
    String email;
    @NotNull
    @Size(min = 3, max = 15)
    String username;
    @Size(min = 6, max = 32)
    @NotNull
    String password;
    @Size(min = 6, max = 32)
    @NotNull
    String confPass;
    
    @AssertTrue
    private boolean termsAndPolicy;

    public boolean isTermsAndPolicy() {
        return termsAndPolicy;
    }

    public void setTermsAndPolicy(boolean termsAndPolicy) {
        this.termsAndPolicy = termsAndPolicy;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getConfPass() {
        return confPass;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setConfPass(String confPass) {
        this.confPass = confPass;
    }

    @Override
    public String toString() {
        return "UserInscriptionForm{" + "email=" + email + ", username=" + username + ", password=" + password + ", confPass=" + confPass + '}';
    }
    
    
    
}
