//
//  PlaySoundsViewController.swift
//  IsThisThingOn
//
//  Created by Brendan McDonald on 3/25/15.
//  Copyright (c) 2015 Dangerous Design LLC. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            
            //Convert the filetype of filePath from an NSString to an NSURL so it can be used to initialize the AVAudioPlayer
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            
            // Create instance of AVAudioPlayer
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            audioPlayer.enableRate = true
            
        }else{
            println("the filepath is empty")
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playAudio(audio: AVAudioPlayer, speed: Float){
        audio.stop()
        // resets the audio to start from the beggining of the track. Without this, the audio started to play fast would then continue from the same point playing slow, or vice versa.
        audioPlayer.currentTime = 0.0
        audio.rate = speed
        audio.play()
    }
    
    
    @IBAction func playAudioSlow(sender: UIButton) {
       playAudio(audioPlayer, speed: 0.5)
    }
    
    @IBAction func playAudioFast(sender: UIButton) {
        playAudio(audioPlayer, speed: 2.0)
    }
    
    
    @IBAction func stopAllAudio(sender: UIButton) {
        audioPlayer.stop()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
