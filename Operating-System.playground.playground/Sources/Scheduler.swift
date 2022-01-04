import Foundation

public protocol Scheduler {
    var queue: [Taskable] { get set }
    var currentTime: Int { get set }
    
    func start()
    func printCurrentProgress()
    func printEndTasks()
}
