package com.kshrd.registration.repository;

import com.kshrd.registration.model.Generation;
import com.kshrd.registration.model.Province;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface GenerationRepo {
    @Select("SELECT * FROM generation WHERE id = #{genId}")
    Generation getGenerationById(Integer genId);
}
