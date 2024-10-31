DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,      -- 부서 ID
    dept_name VARCHAR(50) NOT NULL,              -- 부서명
    parent_dept_id INT,                          -- 상위 부서 ID
    level INT NOT NULL,                          -- 조직 계층 레벨
    order_num INT NOT NULL,                      -- 동일 레벨 내 부서 순서
    FOREIGN KEY (parent_dept_id) REFERENCES dept(dept_id) ON DELETE CASCADE
);

INSERT INTO dept (dept_name, parent_dept_id, level, order_num) VALUES
    ('대표이사', NULL, 1, 1),
    ('경영관리', 1, 2, 1),
    ('영업본부', 1, 2, 2),
    ('영업 1팀', 3, 3, 1),
    ('영업 2팀', 3, 3, 2),
    ('솔루션사업부', 1, 2, 3),
    ('프로젝트 수행 팀', 6, 3, 1),
    ('연구소', 1, 2, 4),
    ('연구소 1', 8, 3, 1),
    ('엔진 개발', 9, 4, 1),
    ('연구소 2', 8, 3, 2),
    ('솔루션 개발', 11, 4, 1),
    ('시스템 개발', 11, 4, 2)
;

