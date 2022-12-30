//
//  HomeVC.swift
//  Video_Player
//
//  Created by Tornelius Broadwater, Jr on 12/30/22.
//

import UIKit
import AVKit
import AVFoundation

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "testVideo", ofType: "mp4") else {
            debugPrint("testVideo.mp4 not found")
            return
        }
        let player = AVPlayer(url: URL(filePath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
}
