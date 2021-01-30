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

    private var redComponent: CGFloat = 0.0
    private var greenComponent: CGFloat = 0.0
    private var blueComponent: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 10
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        toChangeColor()
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        redComponent = CGFloat(redSlider.value)
        toChangeColor()
    }
        
    @IBAction func greenSliderAction() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        greenComponent = CGFloat(greenSlider.value)
        toChangeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        blueComponent = CGFloat(blueSlider.value)
        toChangeColor()
    }

//MARK: - Change color
    private func toChangeColor() {
        coloredView.backgroundColor = UIColor(
            red: redComponent,
            green: greenComponent,
            blue: blueComponent,
            alpha: 1.0)
    }

}

