import Foundation

// FCFS 스케줄러
//let scheduler: Scheduler = FCFSScheduler(queue: Task.dummyData)

// SJF 스케줄러
let scheduler: Scheduler = SJFScheduler(queue: Task.dummyData)
scheduler.start()
