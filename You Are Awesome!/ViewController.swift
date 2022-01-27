//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Lyca Racho on 1/24/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 9
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Lovely!"]
        
        var newMessage: Int
        repeat {
            newMessage = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessage
        messageNumber = newMessage
        messageLabel.text = messages[messageNumber]
        
        var newImage: Int
        repeat {
            newImage = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImage
        imageNumber = newImage
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        if let sound = NSDataAsset(name: "sound0"){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("👹ERROR\(error.localizedDescription)")
            }
            
        } else {
            print("👹ERROR")
        }
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
        
//        //let imageName = "image" + String(imageNumber)
//        let imageName = "image\(imageNumber)" 
//        imageView.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 10 {
//            imageNumber = 0
//        }
//        
//        
        
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let coolMessage = "You Are Cool!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image3")
//        } else if messageLabel.text == greatMessage {
//            messageLabel.text = coolMessage
//            imageView.image = UIImage(named: "image9")
//        } else {
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image0")
//        }
    }
}

