//
//  ViewController.swift
//  lessonTwoExecrciseOne
//
//  Created by Nikita Zharinov on 29/01/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coloredView: UIView!
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 10
        toChangeColor()
    }

    @IBAction func rgbSliderAction(_ sender: UISlider) {
        switch sender.tag {
        case 1: redValueLabel.text = setColorLabel(for: sender)
        case 2: greenValueLabel.text = setColorLabel(for: sender)
        case 3: blueValueLabel.text = setColorLabel(for: sender)
        default: break
        }
        
        toChangeColor()
    }
    
//MARK: - Change color
    private func toChangeColor() {
        coloredView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0
        )
    }
    
    private func setColorLabel (for slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }

}

