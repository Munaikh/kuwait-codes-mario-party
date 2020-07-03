//
//  PlayerDetailVC.swift
//  MarioParty
//
//  Created by Abdullah Almunaikh on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class PlayerDetailVC: UIViewController {

 var plauerSoundEffect: AVAudioPlayer?

    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var starsImageView: UIImageView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLable.text = selectedPlayer.name
        imageView.image = UIImage(named: selectedPlayer.name)
        backgroundImageView.image = UIImage(named: selectedPlayer.bgName())

        // Do any additional setup after loading the view.
    }
    

    @IBAction func randomStars(_ sender: UIButton) {
        var stars = ["Star1","Star2","Star3","Star4","Star5"]
        let randomStar = stars.randomElement()!
        starsImageView.image = UIImage(named: randomStar)
    }
    
    
    @IBAction func playMusic(_ sender: UIButton) {
        playmusic(musicName: selectedPlayer.musicName())
    }
    
    func playmusic(musicName: String) {
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            plauerSoundEffect = try AVAudioPlayer(contentsOf: url)
            plauerSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
