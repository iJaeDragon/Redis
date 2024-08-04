# Snapshot

Redis는 In-memory DB이기 때문에 디스크에 저장을 하지 않으면 서버가 내려갔을 때 데이터 유실이 발생할 수 있다.

레디스에서는 이런 데이터 유실을 막기 위해 RDB(snapshotting) 방식과 AOF(Append Only File) 방식의 데이터 저장 방법을 제공한다.


## ref
 - https://atoz-develop.tistory.com/entry/Redis-%E2%80%98RDB%E2%80%99-%ED%8F%AC%EB%A7%B7%EC%9D%98-%ED%8C%8C%EC%9D%BC%EC%9D%98-%EB%82%B4%EC%9A%A9%EC%9D%84-%ED%99%95%EC%9D%B8%ED%95%A0-%EC%88%98-%EC%9E%88%EB%8A%94-%EB%B0%A9%EB%B2%95
 - https://cabi.oopy.io/15321a93-7217-48f4-8c2f-36e8c6550548
