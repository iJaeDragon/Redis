# Snapshot

Redis는 In-memory DB이기 때문에 디스크에 저장을 하지 않으면 서버가 내려갔을 때 데이터 유실이 발생할 수 있다.

레디스에서는 이런 데이터 유실을 막기 위해 RDB(snapshotting) 방식과 AOF(Append Only File) 방식의 데이터 저장 방법을 제공한다.

ref : https://cabi.oopy.io/15321a93-7217-48f4-8c2f-36e8c6550548
