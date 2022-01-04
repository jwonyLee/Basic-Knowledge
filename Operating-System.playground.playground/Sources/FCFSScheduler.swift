import Foundation

final public class FCFSScheduler: Scheduler {
    public var queue: [Taskable]
    public var currentTime: Int = 0
    
    public init(queue: [Taskable]) {
        self.queue = queue
    }
    
    public func start() {
        self.printCurrentProgress()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if self.queue.isEmpty {
                timer.invalidate()
                self.printEndTasks()
                return
            }
            
            self.currentTime += 1
            self.queue[0].progressTime += 1
            self.printCurrentProgress()
            
            if self.queue.first?.progressTime == self.queue.first?.workingTime {
                self.queue.removeFirst()
            }
        }
    }
    
    public func printCurrentProgress() {
        let progressTime: String = String(repeating: "⬛️", count: queue[0].progressTime)
        let workingTime: String = String(repeating: "⬜️", count: queue[0].workingTime - queue[0].progressTime)
        print(String(format: "현재 시간: %3d, 현재 작업: %3d, 진행률: \(progressTime)\(workingTime)", currentTime, queue[0].identifier))
    }
    
    public func printEndTasks() {
        print("🥳 모든 작업이 끝났습니다!")
    }
}
