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
    
    enum TrafficLight {
        case red
        case yellow
        case green
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        turnOffLights()
    }

    @IBAction func nextLightButtonPressed(_ sender: UIButton) {
        nextLightButton.setTitle("NEXT", for: .normal)
        turnOffLights()
             
        switch nextLight {
        case .red:
            nextLight = .yellow
            redLight.backgroundColor = UIColor.red.withAlphaComponent(1)
        case .yellow:
            nextLight = .green
            yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(1)
        case .green:
            nextLight = .red
            greenLight.backgroundColor = UIColor.green.withAlphaComponent(1)
        }
    }
    
    private func turnOffLights() {
        redLight.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        yellowLight.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        greenLight.backgroundColor = UIColor.green.withAlphaComponent(0.3)
    }
}
