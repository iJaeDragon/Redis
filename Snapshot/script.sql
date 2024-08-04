-- Snapshot 자동 저장 설정 정보
-- default : 900 1 300 10 60 10000 (1시간마다 1건 이상 발생 시 / 5분마다 100건 이상 발생 시 / 1분마다 10000건 이상 발생 시)
config get save

-- 순간적으로 Redis의 동작을 정지시키고, 그 상태의 snapshot을 저장(blocking 방식)
SAVE

-- 별도의 자식 프로세스를 띄워 Redis는 동작을 멈추지 않은 채, 명령어 수행 당시의 snapshot을 저장(non-blocking 방식)
BGSAVE
