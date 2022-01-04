import Foundation

public protocol Scheduler {
    var queue: [Taskable] { get set }
    var currentTime: Int { get set }
    
    func start()
    func printCurrentProgress()
    func printEndTasks()
}

extension Scheduler {
    public func printCurrentProgress() {
        let progressTime: String = String(repeating: "⬛️", count: queue[0].progressTime)
        let workingTime: String = String(repeating: "⬜️", count: queue[0].workingTime - queue[0].progressTime)
        print(String(format: "현재 시간: %3d, 현재 작업: %3d, 진행률: \(progressTime)\(workingTime)", currentTime, queue[0].identifier))
    }
    
    public func printEndTasks() {
        print("🥳 모든 작업이 끝났습니다!")
    }
}
