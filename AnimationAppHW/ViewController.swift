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

    @IBOutlet var coreAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        for index in 0..<animations.count {
            
        }
    }
    
}


