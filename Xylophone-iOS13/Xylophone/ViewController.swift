//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func playSound(_ sender: UIButton) {
        
        playSounds(soundName : sender.currentTitle!)
    
        //reduces the sender's(the button that got pressed) opacity to half
       sender.alpha = 0.5
        
        //code should execute after 0.2 second delay
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            sender.alpha=1.0
       }
        
    }
    
    func playSounds(soundName:String){
        
        let url = Bundle.main.url(forResource:soundName,withExtension: "wav")
    
        player = try!AVAudioPlayer(contentsOf : url!)
        player.play()
    }
}

