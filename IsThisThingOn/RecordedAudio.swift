//
//  RecordedAudio.swift
//  IsThisThingOn
//
//  Created by Brendan McDonald on 4/5/15.
//  Copyright (c) 2015 Dangerous Design LLC. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject{
    var filePathUrl: NSURL!
    var title: String!
    
    init(filePathUrl: NSURL!, title: String!){
        self.filePathUrl = filePathUrl
        self.title = title
    }

//    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder!, successfully flag: Bool) {
//        
//        if(flag){
//            recordedAudio = RecordedAudio() //I don't understand why this line is necessary.
//            recordedAudio.filePathUrl = recorder.url
//            recordedAudio.title = recorder.url.lastPathComponent
//            
//            self.performSegueWithIdentifier("stopRecording", sender: recordedAudio)
//        }else{
//            println("Something went wrong with the Recording")
//            recordButton.enabled = true
//            stopButton.hidden = true
//            currentlyRecording.hidden = true
//        }
//    }

}