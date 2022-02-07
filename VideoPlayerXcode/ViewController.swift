//
//  ViewController.swift
//  VideoPlayerXcode
//
//  Created by star on 07.02.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 20
    }

    
    @IBAction func playButtonTapped(_ sender: UIButton) {
    }
    
}

