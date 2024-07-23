USE practice_sql;

-- 제약조건 : 데이터베이스 테이블의 컬럼에 삽입, 수정, 삭제 시 적용되는 규칙

-- NOT NULL 제약조건 : 해당 컬럼에 null을 포함하지 못하도록 제약
CREATE TABLE not_null_table (
	null_column INT NULL,
    not_null_column INT NOT NULL
);

-- NOT NULL 제약조건이 걸린 컬럼에 값을 지정하지 않음(생성 불가능)
INSERT INTO not_null_table (null_column) VALUES(1);
-- NOT NULL 제약조건이 걸린 컬럼에 null을 지정함(생성 불가능)
INSERT INTO not_null_table VALUES(null,null);

INSERT INTO not_null_table VALUES(1, 1);
INSERT INTO not_null_table VALUES(null, 2);
INSERT INTO not_null_table (not_null_column) VALUES(2);

-- NOT NULL 제약조건이 걸린 컬럼은 null로 수정할 수 없음
UPDATE not_null_table SET not_null_column = null;