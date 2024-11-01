package org.prohyun.litis.dept;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class DepartmentHierarchyDTO {

    private String hierarchyView;

    @Builder
    public DepartmentHierarchyDTO(String hierarchyView) {
        this.hierarchyView = hierarchyView;
    }
}
