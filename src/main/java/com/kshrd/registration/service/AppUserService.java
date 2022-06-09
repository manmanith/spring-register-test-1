package com.kshrd.registration.service;

import com.kshrd.registration.exception.AppExceptionHandler;
import com.kshrd.registration.model.AppUser;
import com.kshrd.registration.payload.request.EmailReq;
import com.kshrd.registration.payload.response.AppUserRes;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface AppUserService extends UserDetailsService {
    AppUserRes addNewUser(EmailReq email) throws AppExceptionHandler;
    AppUserRes verifyByToken(String token) throws Exception;
//    AppUser signIn(AppUserSigninReq signInReq);
}
