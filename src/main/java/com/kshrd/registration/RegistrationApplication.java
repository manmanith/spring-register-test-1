package com.kshrd.registration;

import com.kshrd.registration.utillity.GenerateCode;
import org.postgresql.shaded.com.ongres.scram.common.bouncycastle.base64.Base64;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

@SpringBootApplication
public class RegistrationApplication {

	public static void main(String[] args) {

//		String encodeStr = URLEncoder.encode("This is +app =.", StandardCharsets.UTF_8.name());
//		System.out.println("encodeStr: "+ encodeStr);
		SpringApplication.run(RegistrationApplication.class, args

		);
	}

}
