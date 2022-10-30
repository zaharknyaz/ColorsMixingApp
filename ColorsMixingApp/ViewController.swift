//
//  ViewController.swift
//  ColorsMixingApp
//
//  Created by user219864 on 10/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets

    @IBOutlet weak var colorsView: UIImageView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - IB Actions
    
    @IBAction func redSliderAction() {
        setupView()
    }
    
    @IBAction func greenSliderAction() {
        setupView()
    }
    
    @IBAction func blueSliderAction() {
        setupView()
    }
    
    // MARK: - Private Methods
    
    private func setupView() {
      
        redLabel.text = "Red " + redSlider.value.formatted()
        greenLabel.text = "Green " + greenSlider.value.formatted()
        blueLabel.text = "Blue " + blueSlider.value.formatted()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        colorsView.backgroundColor = UIColor(red: CGFloat(redSlider.value/1), green: CGFloat(greenSlider.value/1), blue: CGFloat(blueSlider.value/1), alpha: 1)
        colorsView.isHidden = false
        colorsView.layer.borderWidth = 0
        colorsView.alpha = 1
        colorsView.layer.cornerRadius = 15
    }

}

