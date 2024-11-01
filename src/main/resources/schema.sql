DROP TABLE IF EXISTS t_dept;

CREATE TABLE t_dept (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,      -- 부서 ID
    dept_name VARCHAR(50) NOT NULL,              -- 부서명
    parent_dept_id INT,                          -- 상위 부서 ID
    dept_level INT NOT NULL,                     -- 조직 계층 레벨
    dept_order_num INT NOT NULL,                 -- 동일 레벨 내 부서 순서
    FOREIGN KEY (parent_dept_id) REFERENCES t_dept(dept_id) ON DELETE CASCADE
);
