package com.dao;

import com.entity.BanjiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.BanjiView;

/**
 * 班级 Dao 接口
 *
 * @author 
 */
public interface BanjiDao extends BaseMapper<BanjiEntity> {

   List<BanjiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
