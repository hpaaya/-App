//
//  ViewController.swift
//  調色 App
//
//  Created by User09 on 2018/11/15.
//  Copyright © 2018 user09. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var alphaValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorChange(_ sender: UISlider) {
        imageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redValue.text = String(format:  "%.2f",redSlider.value)
        greenValue.text = String(format:  "%.2f",greenSlider.value)
        blueValue.text = String(format:  "%.2f",blueSlider.value)
        alphaValue.text = String(format:  "%.2f",  alphaSlider.value)
    }
    @IBAction func randomColor(_ sender: Any) {
        var  redNumber  = Double.random(in: 0...1)
        var  greenNumber  = Double.random(in: 0...1)
        var  blueNumber  = Double.random(in: 0...1)
        var  alphaNumber  = Double.random(in: 0...1)
        imageView.backgroundColor = UIColor(red: CGFloat(redNumber), green: CGFloat(greenNumber), blue: CGFloat(blueNumber), alpha: CGFloat(alphaNumber))
        redValue.text = String(format:  "%.2f",redNumber)
        greenValue.text = String(format:  "%.2f",greenNumber)
        blueValue.text = String(format:  "%.2f",blueNumber)
        alphaValue.text = String(format:  "%.2f",  alphaNumber)
        redSlider.value = Float(redNumber)
        greenSlider.value = Float(greenNumber)
        blueSlider.value = Float(blueNumber)
        alphaSlider.value = Float(alphaNumber)
    }
    
}

