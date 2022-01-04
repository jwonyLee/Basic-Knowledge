# 운영 체제

## Contents
  - [CPU 스케줄링](#cpu-스케줄링)
    - [스케줄링 알고리즘](#스케줄링-알고리즘)
      - [FCFS<sup>First Come First Served</sup> 스케줄링](#fcfssupfirst-come-first-servedsup-스케줄링)
      - [SJF<sup>Shortest Job First</sup> 스케줄링](#sjfsupshortest-job-firstsup-스케줄링)


## CPU 스케줄링

### 스케줄링 알고리즘

#### FCFS<sup>First Come First Served</sup> 스케줄링

> 준비 큐에 도착한 순서대로 CPU를 할당하는 비선점형 방식

> 선입선출 스케줄링이라고도 한다.

[소스 코드](Operating-System.playground/Sources/FCFSScheduler.swift)

TODO
- 실행중에 큐에 작업 추가하기

#### SJF<sup>Shortest Job First</sup> 스케줄링

> 준비 큐에 있는 프로세스 중에서 실행 시간이 가장 짧은 작업부터 CPU를 할당하는 비선점형 방식

> 최단 작업 우선 스케줄링이라고도 한다.

[소스 코드](Operating-System.playground/Sources/SJFScheduler.swift)

TODO
- 실행중에 큐에 작업 추가하기
- 실행중에 큐에 작업이 추가됐을 때, 작업 우선순위 재정렬