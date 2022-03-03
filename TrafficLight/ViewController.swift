//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sergey Seregin on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var nextLightButton: UIButton!
    
    private var nextLight = TrafficLight.red
       
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
        turnOffLights()
    }

    @IBAction func nextLightButtonPressed(_ sender: UIButton) {
        nextLightButton.setTitle("NEXT", for: .normal)
        turnOffLights()
             
        switch nextLight {
        case .red:
            nextLight = .yellow
            redLight.alpha = 1
        case .yellow:
            nextLight = .green
            yellowLight.alpha = 1
        case .green:
            nextLight = .red
            greenLight.alpha = 1
        }
    }
    
    private func turnOffLights() {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
}

extension ViewController{
    enum TrafficLight {
        case red
        case yellow
        case green
    }
}
