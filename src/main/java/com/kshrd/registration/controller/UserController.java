package com.kshrd.registration.controller;

import com.kshrd.registration.payload.response.AppUserRes;
import com.kshrd.registration.payload.response.ResponseRes;
import com.kshrd.registration.security.JwtTokenUtil;
import com.kshrd.registration.service.AppUserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
@RequestMapping("/auth")
public class UserController {

    private final AppUserService appUserService;
    private final JwtTokenUtil jwtTokenUtil;

    public UserController(AppUserService appUserService, JwtTokenUtil jwtTokenUtil) {
        this.appUserService = appUserService;
        this.jwtTokenUtil = jwtTokenUtil;
    }

//    @PostMapping("/signup")
//    public AppUser addNewUser(@RequestBody AppUserReq userReq){
//        AppUser appUser = new AppUser();
//        appUser = appUserService.addNewUser(userReq);
//        return appUser;
//    }

//    @GetMapping("/signin")
//    public AppUser signIn(@RequestBody AppUserSigninReq signInReq){
//        AppUser appUser = appUserService.signIn(signInReq);
//        return appUser;
//    }

    @GetMapping
    public ResponseEntity<Object> verifyByToken(@RequestParam(value = "token") String token) throws Exception {
        AppUserRes appUserRes = appUserService.verifyByToken(token);
        ResponseRes responseRes = new ResponseRes(
                HttpStatus.OK.value(), LocalDateTime.now(),HttpStatus.OK,"Sign in with token successfully",
                "/auth",true, appUserRes,null
        );

        return new ResponseEntity<>(responseRes, responseRes.getHttpMessage());
    }

}
