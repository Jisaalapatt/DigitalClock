//
//  ViewController.swift
//  DigitalClock
//
//  Created by Jisa Gigi on 10/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var settingView: UIView!
    @IBOutlet weak var clockColorSegConnect: UISegmentedControl!
    @IBOutlet weak var backgroundImageSegConnect: UISegmentedControl!
    
    @IBOutlet weak var backgroundColorSegConnect: UISegmentedControl!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        self.updateTimer()
        settingView.isHidden = true
        settingView.layer.cornerRadius = 5
    }
    @objc func updateTimer(){
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .medium
        label.text = timeFormatter.string(from: NSDate() as Date)
    }
    
    
    @IBAction func settings(_ sender: Any) {
        if settingView.isHidden == true{
            settingView.isHidden = false
            settingsButton.setTitle("Hide Settings", for: UIControl.State.normal)
            settingsButton.alpha = 1.0
        }else{
            settingView.isHidden = true
            settingsButton.setTitle("Show Settings", for: UIControl.State.normal)
            settingsButton.alpha = 0.5
        }
    }
    
    
    @IBAction func clockColor(_ sender: Any) {
        if clockColorSegConnect.selectedSegmentIndex == 0 {

            label.textColor  = UIColor.white
        }
        if clockColorSegConnect.selectedSegmentIndex == 1 {

            label.textColor  = UIColor.black
        }
        if clockColorSegConnect.selectedSegmentIndex == 2 {

            label.textColor  = UIColor.red
        }
        if clockColorSegConnect.selectedSegmentIndex == 3 {

            label.textColor  = UIColor.green
        }
    }
    
    
    @IBAction func backgroundColor(_ sender: Any) {
        if backgroundColorSegConnect.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor.black
        }
        if backgroundColorSegConnect.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.white
        }
        if backgroundColorSegConnect.selectedSegmentIndex == 2 {
            self.view.backgroundColor = UIColor.yellow
        }
        if backgroundColorSegConnect.selectedSegmentIndex == 3 {
            self.view.backgroundColor = UIColor.blue
        }
        backgroundImage.isHidden = true
        
    }
    
    @IBAction func backgroundImageChange(_ sender: Any) {
        self.view.backgroundColor = UIColor.black

        if backgroundImageSegConnect.selectedSegmentIndex == 0 {
            backgroundImage.image = UIImage(named: "Background1")
        }
        if backgroundImageSegConnect.selectedSegmentIndex == 1 {
            backgroundImage.image = UIImage(named: "Background2")
        }
        if backgroundImageSegConnect.selectedSegmentIndex == 2 {
            backgroundImage.image = UIImage(named: "Background3")
        }
        if backgroundImageSegConnect.selectedSegmentIndex == 3 {
            backgroundImage.image = UIImage(named: "Background4")
        }
        backgroundImage.isHidden = false
    }
    
    
}

