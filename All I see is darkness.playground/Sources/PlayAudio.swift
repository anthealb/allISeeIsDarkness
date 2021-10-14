import Foundation
import AVFoundation

var player: AVAudioPlayer?

public func playSound(_ file: String) {
    guard let path = Bundle.main.path(forResource: file, ofType:"wav") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}
