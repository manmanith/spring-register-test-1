package com.kshrd.registration.security;


import com.kshrd.registration.exception.AppExceptionHandler;
import com.kshrd.registration.model.AppUser;
import com.kshrd.registration.payload.request.EmailReq;
import com.kshrd.registration.payload.request.JwtReq;
import com.kshrd.registration.payload.response.AppUserRes;
import com.kshrd.registration.payload.response.JwtRes;
import com.kshrd.registration.service.AppUserService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;


@RestController
//@CrossOrigin
public class JwtAuthenticationController {

    private final AuthenticationManager authenticationManager;
    private final JwtTokenUtil jwtTokenUtil;
    private final AppUserService userDetailsService;

    public JwtAuthenticationController(AuthenticationManager authenticationManager, JwtTokenUtil jwtTokenUtil, AppUserService userDetailsService) {
        this.authenticationManager = authenticationManager;
        this.jwtTokenUtil = jwtTokenUtil;
        this.userDetailsService = userDetailsService;
    }

    @RequestMapping(value = "/auth/signin", method = RequestMethod.POST)
    public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtReq jwtReq) throws Exception {

        if(jwtReq.getEmail().isEmpty() || jwtReq.getPassword().isEmpty())
            throw new NullPointerException("Email or Password is empty!");

        authenticate(jwtReq.getEmail(), jwtReq.getPassword());
        final UserDetails userDetails = userDetailsService
                .loadUserByUsername(jwtReq.getEmail());

        System.out.println("userDetails: " + userDetails);
        final String token = jwtTokenUtil.generateToken(userDetails);
        return ResponseEntity.ok(new JwtRes(token));
    }

    @PostMapping("/auth/signup")
    public AppUserRes addNewUser(@RequestBody EmailReq email) throws AppExceptionHandler {
        AppUserRes appUser = userDetailsService.addNewUser(email);
        return appUser;
    }

    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }
}