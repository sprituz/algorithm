-- 코드를 입력하세요
SELECT CONCAT( '/home/grep/src/',f.BOARD_ID,'/',FILE_ID,FILE_NAME,FILE_EXT) AS FILE_PATH FROM USED_GOODS_FILE f JOIN USED_GOODS_BOARD b ON f.BOARD_ID = b.BOARD_ID WHERE VIEWS = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD) ORDER BY FILE_ID DESC