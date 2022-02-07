//
//  ViewController.swift
//  VideoPlayerXcode
//
//  Created by star on 07.02.22.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    let data = "Wellen2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 20
    }

    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: data, withExtension: "mp4")
        
    }
    
}

