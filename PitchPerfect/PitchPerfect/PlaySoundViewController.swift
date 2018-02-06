//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by Babak Shahian Jahromi on 2/6/18.
//  Copyright © 2018 BabakSJ. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {
    
    @IBOutlet weak var snailBtn: UIButton!
    @IBOutlet weak var RabbitBtn: UIButton!
    @IBOutlet weak var LowPitch: UIButton!
    @IBOutlet weak var echoBtn: UIButton!
    @IBOutlet weak var ReverbBtn: UIButton!
    @IBOutlet weak var HighPitch: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    
    var recordedAudioURL:URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("play sound button pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: AnyObject) {
        print("stop audio button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
