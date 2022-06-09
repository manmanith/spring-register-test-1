package com.kshrd.registration.repository;

import com.kshrd.registration.model.AppUser;
import com.kshrd.registration.model.Role;
import com.kshrd.registration.payload.request.EmailPasswordReq;
import com.kshrd.registration.payload.response.AppUserRes;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface AppUserRepo {

//    @Select("INSERT INTO app_user(name, email, password) " +
//            "VALUES(#{user.name}, #{user.email}, #{user.password}) RETURNING *")
//    @Result(property = "isEnabled", column = "is_enabled")
//    @Result(property = "isLocked", column = "is_locked")
//    AppUser addNewUser(@Param("user") AppUserReq userReq);

    @Select("INSERT INTO app_user(email, password, token) " +
            "VALUES( #{user.email}, #{user.password}, #{token}) RETURNING *")
    @Results(id = "userResults", value = {
            @Result(property = "nationalCard", column = "national_card"),
            @Result(property = "pob", column = "pob_id",
                    one = @One(select = "com.kshrd.registration.repository.ProvinceRepo.getProvinceById")),
            @Result(property = "emergencyPhone", column = "emergency_phone"),
            @Result(property = "education", column = "education_id",
                    one = @One(select = "com.kshrd.registration.repository.EducationRepo.getEducationById")),
            @Result(property = "address", column = "address_id",
                    one = @One(select = "com.kshrd.registration.repository.ProvinceRepo.getProvinceById")),
            @Result(property = "relative", column = "relative_id",
                    one = @One(select = "com.kshrd.registration.repository.RelativeRepo.getRelativeById")),
            @Result(property = "university", column = "university_id",
                    one = @One(select = "com.kshrd.registration.repository.UniversityRepo.getUniversityById")),
            @Result(property = "referenceUrl", column = "reference_url"),
            @Result(property = "createDate", column = "create_date"),
            @Result(property = "photoUrl", column = "photo_url"),
            @Result(property = "generation", column = "generation_id",
                    one = @One(select = "com.kshrd.registration.repository.GenerationRepo.getGenerationById")),
            @Result(property = "isDonated", column = "is_donated"),
            @Result(property = "roles", column = "user_id",
                    many = @Many(select = "getAllRoleByUserId")
            )
    })
    AppUser addNewUser(@Param("user") EmailPasswordReq userReq, String token);

    @Select("SELECT *, id as user_id FROM app_user WHERE email = #{email}")
    @ResultMap("userResults")
    AppUser getUserByEmail(String email);

    @Select("SELECT r.id, r.name " +
            "FROM user_role ur " +
            "JOIN role r " +
            "ON ur.role_id = r.id " +
            "WHERE ur.user_id = #{userId}")
    List<Role> getAllRoleByUserId(Integer userId);

    @Select("UPDATE app_user SET password = #{user.password} WHERE email = #{user.email} RETURNING *")
    @ResultMap("userResults")
    AppUser updateUserByEmail(@Param("user") EmailPasswordReq userReq);

    @Select("SELECT * FROM app_user WHERE token = #{token}")
    @ResultMap("userResults")
    AppUser getUserByToken(String token);
}