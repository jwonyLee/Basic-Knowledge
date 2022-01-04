import Foundation

final public class SJFScheduler: Scheduler {
    public var queue: [Taskable]
    public var currentTime: Int = 0
    
    public init(queue: [Taskable]) {
        self.queue = queue.sorted { $0.workingTime < $1.workingTime }
    }
    
    public func start() {
        printCurrentProgress()
        
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
}
