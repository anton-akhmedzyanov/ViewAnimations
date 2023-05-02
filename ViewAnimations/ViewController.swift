//
//  ViewController.swift
//  ViewAnimations
//
//  Created by Anton Akhmedzyanov on 02.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
//MARK: - IBOutlets
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forseLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationSpringView: SpringView!
    
    private var animation = Animation.getAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    //MARK: -IBActions
    
    @IBAction func pressedSpringButton(_ sender: SpringButton) {
        setSpringView()
        setLabels()
        sender.setTitle("\(animation.preset)", for: .normal)
        self.animation = Animation.getAnimation()
        
        sender.animation = "pop"
        sender.duration = 1
        sender.animate()
       
    }
    //MARK: - Functions
    
    func setLabels() {
        animationLabel.text = "animation: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forseLabel.text = String(format: "forse: %.2f", animation.force)
        durationLabel.text = String(format: "duration: %.2f", animation.duration)
        delayLabel.text = "delay: \(animationSpringView.delay.formatted())"
    }
    
    func setSpringView() {
        animationSpringView.animation = "\(animation.preset)"
        animationSpringView.curve = "\(animation.curve)"
        animationSpringView.force = CGFloat(animation.force)
        animationSpringView.duration = CGFloat(animation.duration)
        animationSpringView.delay = 1
        animationSpringView.animate()
    }
}

