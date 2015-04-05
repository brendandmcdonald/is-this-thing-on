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
    
    
    
    // Add a button to increase the speed of playback
        // TODO: Add the rabbit button to the correnct screen on the storyboard
        // TODO: Add contraints to the button to have it locked to the top right of the screen
        // TODO: Add an action to the button to connect it to our PlaySoundsViewController
        // TODO: Make the button play the audio clip at 2.0x
    
    // Add a stop button to stop any audio from playing
        // TODO: Add a stop button to the correct screen on the storyboard
        // TODO: Add contraints to the button to lock it to the bottom center of the screen
        // TODO: Make the button initially hidden or deactivated, but then unhides when audio is playing.
        // TODO: Add an action to the button to connect it to our PlaySoundsViewController
        // TODO: Have the button stop all the audio playing back
    
    
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
        audio.rate = speed
        audio.play()
    }
    
    
    @IBAction func playAudioSlow(sender: UIButton) {
        
        // it's a best practice to stop the audio player before beginning to play it.
        audioPlayer.stop()
        audioPlayer.rate = 0.75
        
        // v this resets the audio so it doesn't keep playing from a different source.
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playAudioFast(sender: UIButton) {
        
        // it's a best practice to stop the audio player before beginning to play it.
        //audioPlayer.stop()
        //audioPlayer.rate = 2.0
        //audioPlayer.play()
        
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
