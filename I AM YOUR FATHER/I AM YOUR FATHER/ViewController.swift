//
//  ViewController.swift
//  I AM YOUR FATHER
//
//  Created by Prapawit Patthasirivichot on 8/1/2562 BE.
//  Copyright © 2562 Prapawit Patthasirivichot. All rights reserved.
//

import UIKit
import AVFoundation
var player: AVAudioPlayer?

class ViewController: UIViewController {
    var num1: Int = 0,num2: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let url = URL(fileURLWithPath: Bundle.main.path(forResource: "test.mp3", ofType:nil, inDirectory: "audio")!)
    @IBAction func button(_ sender: UIButton) {
        num1 = Int.random(in: 1 ... 6)
        num2 = Int.random(in: 1 ... 6)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }catch{
            print(error.localizedDescription)
        }
        print("\(num1)"+" "+"\(num2)")
    }
    
    


}

