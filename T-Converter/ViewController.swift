//
//  ViewController.swift
//  T-Converter
//
//  Created by Павел Яковенко on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.minimumValue = 0
            slider.maximumValue = 100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slider.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = (temperatureCelsius * 9 / 5) + 32
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
}




//hello world
// rt

//@IBOutlet weak var celsiusLabel: UILabel!
//@IBOutlet weak var fahrenheitLabel: UILabel!
//@IBOutlet weak var slider: UISlider! {
//    didSet {
//        slider.minimumValue = 0
//        slider.maximumValue = 100
//        slider.value = 0
//    }
//}
//
//
//@IBAction func sliderSet(_ sender: UISlider) {
//    let temperatureCelsius = Int(round(slider.value))
//    celsiusLabel.text = "\(temperatureCelsius)ºC"
//
//    let temperatureFahrenheit = Int(round(slider.value * 9/5) + 32)
//    fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
//}
