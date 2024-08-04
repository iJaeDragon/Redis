-- 모든 데이터 제거
-- FLUSHALL

-- 모든 데이터 키값 확인
keys *

-- Snapshot 자동 저장 설정 정보
-- default : 900 1 300 10 60 10000 (1시간마다 1건 이상 발생 시 / 5분마다 100건 이상 발생 시 / 1분마다 10000건 이상 발생 시)
config get save

-- 순간적으로 Redis의 동작을 정지시키고, 그 상태의 snapshot을 저장(blocking 방식)
SAVE

-- 별도의 자식 프로세스를 띄워 Redis는 동작을 멈추지 않은 채, 명령어 수행 당시의 snapshot을 저장(non-blocking 방식)
BGSAVE

-- RDB 파일 불러오기

-- 방법 1.
-- RDB 파일 로드 방식
-- Redis 서버가 시작될 때 RDB 파일을 로드
-- Redis 서버가 RDB 파일을 읽어 Redis 데이터베이스를 복원
-- RDB 파일을 로드하는 방법은 Redis 서버가 비정상적으로 종료되었을 때 데이터를 복구하거나 데이터베이스를 복원할 때 사용
redis-server --rdb <rdb_file_path>

-- 방법 2.
-- RDB 파일 Import 방식
-- Redis 서버가 이미 실행 중일 때 RDB 파일을 적용
-- Redis 서버에 RDB 파일을 import하는 방법은 RDB 파일을 직접 Redis 데이터베이스에 적용
-- Redis 서버에 RDB 파일을 import하는 방법은 Redis 서버의 데이터를 다른 환경으로 이전하거나 데이터를 공유할 때 사용
redis-cli --rdb <rdb_file_path>
