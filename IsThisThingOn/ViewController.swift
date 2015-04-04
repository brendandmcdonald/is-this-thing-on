//
//  ViewController.swift
//  IsThisThingOn
//
//  Created by Brendan McDonald on 3/19/15.
//  Copyright (c) 2015 Dangerous Design LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentlyRecording: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        // TODO: Hide the stop button
        stopButton.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recording(sender: UIButton) {
        // TODO: record users voice
        println("it's working")
        currentlyRecording.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
    }
    
    @IBAction func stopRecording(sender: UIButton) {
        currentlyRecording.hidden = true
        println("all done!")
    }


}

