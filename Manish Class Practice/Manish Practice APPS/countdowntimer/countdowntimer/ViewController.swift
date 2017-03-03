//
//  ViewController.swift
//  countdowntimer
//
//  Created by Codekul on 01/03/17.
//  Copyright © 2017 CodeKul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var seconds = 30
    var timer = Timer()
    @IBOutlet weak var label: UILabel!
   
    @IBAction func slider(_ sender: UISlider)
    {
        seconds = Int(sender.value)
        label.text = String(seconds) + "Seconds"
    }
    
    @IBOutlet weak var sliderOutlet: UISlider!
   
    @IBOutlet weak var startOutlet: UIButton!
    @IBAction func start(_ sender: AnyObject)
    {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.counter), userInfo: nil, repeats: true)
        sliderOutlet.isHidden = true
        startOutlet.isHidden = true
    }
    func counter()
    {
            seconds -= 1
            label.text = String(seconds) + "Seconds"
        
        if(seconds == 0)
        {
            timer.invalidate()
            sliderOutlet.isHidden = false
            startOutlet.isHidden = false
        }
    }
    @IBOutlet weak var stopOutlet: UIButton!
    @IBAction func stop(_ sender: AnyObject)
    {
        timer.invalidate()
        seconds = 30
        sliderOutlet.setValue(30, animated: true)
        label.text = "30 Seconds"
        
        sliderOutlet.isHidden = false
        startOutlet.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

