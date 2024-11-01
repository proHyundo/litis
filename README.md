# 리티스 입사 지원 코딩테스트

## 개요

- 지원자 : 송현도
- 이력서 : [이력서 링크]()

## 과제 체크리스트

- [x] 1번 문항 : HTML, CSS, JS 작성
- [x] 2번 문항 : 테이블 설계 및 DDL 작성
- [ ] 3번 문항 : 계층 쿼리 작성
- [ ] 4번 문항 : 출력 로직 작성
- [ ] 5번 문항 : 파스칼 삼각형 작성
- [ ] 6번 문항 : 마방진 작성
- [ ] 7번 문항 : 야구게임 작성

## 문항별 결과

### 1번 문항

> 결과 화면

![image](https://github.com/user-attachments/assets/e699ae0e-0d40-4db7-907f-963f1c8128c7)

### 2번 문항

> 테이블 설계

![image](https://github.com/user-attachments/assets/32924877-2f3f-4cd6-8f7c-4048cd0bc499)

> DDL

```sql
CREATE TABLE t_dept (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,      -- 부서 ID
    dept_name VARCHAR(50) NOT NULL,              -- 부서명
    parent_dept_id INT,                          -- 상위 부서 ID
    dept_level INT NOT NULL,                     -- 조직 계층 레벨
    dept_order_num INT NOT NULL,                 -- 동일 레벨 내 부서 순서
    FOREIGN KEY (parent_dept_id) REFERENCES t_dept(dept_id) ON DELETE CASCADE
);
```
