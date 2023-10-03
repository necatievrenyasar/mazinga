import Foundation
import JitsiMeetSDK

public struct OnboardSPM {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func makeJitsiView() -> JitsiMeetView {
        return JitsiMeetView()
    }
}
