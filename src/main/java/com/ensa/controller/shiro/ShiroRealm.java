package com.ensa.controller.shiro;

import com.ensa.exception.UniqueCorruptionException;
import com.ensa.model.User;
import com.ensa.model.controller.UserDAO;
import java.util.HashSet;
import java.util.Set;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class ShiroRealm extends AuthorizingRealm {

    @Autowired
    private UserDAO userManager;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        try {
            UsernamePasswordToken upat = (UsernamePasswordToken) token;
            User user = userManager.getUser(upat.getUsername(), null);
            if (user != null && user.getPassHash().equals(new String(upat.getPassword()))) {
                return new SimpleAuthenticationInfo(new UserPrincipal(user), token.getCredentials(), getName());
            } else {
                throw new AuthenticationException("Invalid username/password combination!");
            }
        } catch (UniqueCorruptionException ex) {
            throw new AuthenticationException("Unique key corrupted on user at email!");
        }
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection pc) {
        if (pc == null) {
            throw new AuthorizationException("PrincipalCollection method argument cannot be null.");
        }

        User user = userManager.getCurrentUser();

        // Retrieve roles and permissions from database
        Set<String> roleNames = new HashSet<>();
        roleNames.add("user");

        Set<String> permissions = new HashSet<>();
        permissions.add("user");

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roleNames);
        info.setStringPermissions(permissions);
        return info;

    }
}
