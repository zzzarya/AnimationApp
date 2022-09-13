//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Антон Заричный on 13.09.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    private let animations = Animation.getAnimations()
    var index = 0

    @IBOutlet var coreAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var springAnimationLabel: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coreAnimationView.layer.cornerRadius = 10
        springAnimationLabel.layer.cornerRadius = 10
        
        setupLabels()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        if index < animations.count {
            presetLabel.text = animations[index].preset
            coreAnimationView.animation = animations[index].preset
            
            curveLabel.text = animations[index].curve
            coreAnimationView.curve = animations[index].curve
            
            forceLabel.text = String(format: "%.2f", animations[index].force)
            coreAnimationView.force = animations[index].force
            
            durationLabel.text = String(format: "%.2f", animations[index].duration)
            coreAnimationView.duration = animations[index].duration
            
            delayLabel.text = String(format: "%2.f", animations[index].delay)
            coreAnimationView.delay = animations[index].delay
            
            springAnimationLabel.setTitle("Run \(animations[index + 1].preset)", for: .normal)
            
            coreAnimationView.animate()
            
            index += 1
        } else {
            index = 0
        }
        
    }
}


extension ViewController {
    private func setupLabels() {
        presetLabel.text = animations.first?.preset
        curveLabel.text = animations.first?.curve
        forceLabel.text = String(format: "%.2f", animations.first?.force ?? 0)
        durationLabel.text = String(format: "%.2f", animations.first?.duration ?? 0)
        delayLabel.text = String(format: "%2.f", animations.first?.delay ?? 0)
    }
}


