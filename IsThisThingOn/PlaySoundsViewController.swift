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
            //let fileUrl = NSURL(string: filePath)
            
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            
            // Create instance of AVAudioPlayer
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            
        }else{
            println("the filepath is empty")
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAudioSlow(sender: UIButton) {
        audioPlayer.play()
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
