package org.prohyun.litis.dept;

import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
public class DeptApi {

    private final DeptService deptService;

    @GetMapping("/problem3")
    public ResponseEntity<List<DepartmentHierarchyDTO>> problem3() {
        return ResponseEntity.ok(deptService.findAllDeptsByHierarchy());
    }

    @GetMapping("/problem4")
    public String problem4() {
        return "problem4";
    }

}
