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
    @IBOutlet weak var textField: UITextField!
    
    let data = ["", "Wellen2", "Eichhoernchen", "WellenMusik"]
    
    var selectedMovieTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        textField.inputView = pickerView
        textField.tintColor = .clear
        
        pickerView.backgroundColor = .systemBackground
        
        playButton.layer.cornerRadius = 20
    }

    
    @IBAction func playButtonTapped(_ sender: UIButton) {
        
        guard let title = selectedMovieTitle else { return }
        
        let url = Bundle.main.url(forResource: title, withExtension: "mp4")
        guard let videoURL = url else { return }
        
        let player = AVPlayer(url: videoURL)
        let vc = AVPlayerViewController()
        
        vc.player = player
        present(vc, animated: true) {
            vc.player?.play()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedMovieTitle = data[row]
        textField.text = data[row]
    }
    
}


