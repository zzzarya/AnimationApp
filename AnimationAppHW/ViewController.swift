//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Антон Заричный on 13.09.2022.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var springAnimationLabel: SpringButton!
    
    private let animations = Animation.getAnimations()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coreAnimationView.layer.cornerRadius = 10
        springAnimationLabel.layer.cornerRadius = 10
        
        setupLabels()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        if index == animations.count - 1 {
            springAnimationLabel.setTitle("Run \(animations.first?.preset ?? "")", for: .normal)
            index = 0
        } else if index < animations.count {
            coreAnimationView.animation = animations[index].preset
            coreAnimationView.curve = animations[index].curve
            coreAnimationView.force = animations[index].force
            coreAnimationView.duration = animations[index].duration
            coreAnimationView.delay = animations[index].delay
            coreAnimationView.animate()
            
            setupLabels()
            
            index += 1
            
            springAnimationLabel.setTitle("Run \(animations[index].preset)", for: .normal)
        }
    }
}

extension ViewController {
    private func setupLabels() {
        presetLabel.text = animations[index].preset
        curveLabel.text = animations[index].curve
        forceLabel.text = String(format: "%.2f", animations[index].force)
        durationLabel.text = String(format: "%.2f", animations[index].duration)
        delayLabel.text = String(format: "%2.f", animations[index].delay)
    }
}
