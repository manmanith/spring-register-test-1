package com.kshrd.registration.repository;

import com.kshrd.registration.model.Education;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EducationRepo {
    @Select("SELECT * FROM education WHERE id = #{EduId}")
    Education getEducationById(Integer EduId);
}
