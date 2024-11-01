package org.prohyun.litis.dept;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeptRepository {

    List<DepartmentHierarchyDTO> findAllDeptsByHierarchy();

}
