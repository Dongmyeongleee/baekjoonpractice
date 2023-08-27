-- 코드를 입력하세요
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
        DECODE(STATUS,
                      'SALE', '판매중'
                    , 'RESERVED', '예약중'
                    , 'DONE', '거래완료') STATUS
FROM USED_GOODS_BOARD
WHERE 1=1
AND TO_CHAR(CREATED_DATE, 'YYYY-MM-DD') = '2022-10-05'
ORDER BY BOARD_ID DESC
;