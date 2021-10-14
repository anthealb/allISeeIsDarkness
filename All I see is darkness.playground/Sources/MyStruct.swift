import Foundation
import SwiftUI

public struct sms {
    public var text : String
    public var by : Color
    
    public init(text: String, by: Color) {
        self.text = text
        self.by = by
    }
}
