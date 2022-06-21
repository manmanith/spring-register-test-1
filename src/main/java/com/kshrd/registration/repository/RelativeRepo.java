package com.kshrd.registration.repository;

import com.kshrd.registration.model.Relative;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface RelativeRepo {
    @Select("SELECT * FROM relative WHERE id = #{relativeId}")
    Relative getRelativeById(Integer relativeId);
}
