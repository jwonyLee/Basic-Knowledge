import Foundation

public protocol Taskable {
    var identifier: Int { get }
    var priority: Int { get set }
    /// 총 작업 시간
    var workingTime: Int { get set }
    /// 진행한 시간
    var progressTime: Int { get set }
}
