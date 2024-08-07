SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE (SKILL_CODE & 256) = 256
    OR (SKILL_CODE & 1024) = 1024
ORDER BY ID ASC;


-- KILLCODES 테이블에서 CODE는 256 이런 숫자로 나오지만
-- DEVELOPERS 테이블에서는 SKILL_CODES가 CODE의 외래키를 참조하는것은 맞지만, 비트 연산으로 변경을 해서 
-- & 을 사용해서 비트 까지 확인해서 조건을 검