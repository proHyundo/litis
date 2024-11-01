DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
                      dept_id INT PRIMARY KEY AUTO_INCREMENT,      -- 부서 ID
                      dept_name VARCHAR(50) NOT NULL,              -- 부서명
                      parent_dept_id INT,                          -- 상위 부서 ID
                      level INT NOT NULL,                          -- 조직 계층 레벨
                      order_num INT NOT NULL,                      -- 동일 레벨 내 부서 순서
                      FOREIGN KEY (parent_dept_id) REFERENCES dept(dept_id) ON DELETE CASCADE
);
