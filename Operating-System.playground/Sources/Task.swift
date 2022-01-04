import Foundation

public struct Task: Taskable {
    public var identifier: Int
    public var priority: Int
    public var workingTime: Int
    public var progressTime: Int
}

extension Task {
    public static var dummyData: [Taskable] {
        [
            Task(identifier: 0, priority: 0, workingTime: Int.random(in: 3...10), progressTime: 0),
            Task(identifier: 1, priority: 0, workingTime: Int.random(in: 3...10), progressTime: 0),
            Task(identifier: 2, priority: 0, workingTime: Int.random(in: 3...10), progressTime: 0),
            Task(identifier: 3, priority: 0, workingTime: Int.random(in: 3...10), progressTime: 0)
        ]
    }
}
