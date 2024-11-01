package org.prohyun.litis.dept;

import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@RequiredArgsConstructor
@Service
public class DeptService {

    private final DeptRepository deptRepository;

    public List<DepartmentHierarchyDTO> findAllDeptsByHierarchy() {
        return deptRepository.findAllDeptsByHierarchy();
    }

}
