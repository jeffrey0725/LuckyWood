//
//  PlayViewModel.swift
//  LuckyWood
//
//  Created by Jeffrey Cheung on 5/3/2022.
//

import Foundation
import AVFoundation

class PlayViewModel {
    var audioPlayer: AVAudioPlayer!
    func play(fileName: String, fileType: String) {
        audioPlayer = AVAudioPlayer()
        let sound = Bundle.main.path(forResource: fileName, ofType: fileType)
        if let soundPath = sound {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundPath))
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
}
