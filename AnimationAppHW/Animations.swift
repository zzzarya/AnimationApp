//
//  Animations.swift
//  AnimationAppHW
//
//  Created by Антон Заричный on 13.09.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getAnimations() -> [Animation] {
        let dataStore = DataStore.shared
        var animations: [Animation] = []
        
        let presets = dataStore.animationPresets.shuffled()
        let curves = dataStore.animationCurves.shuffled()
        
        for index in 0..<presets.count {
            let animation = Animation(preset: presets[index].rawValue,
                                      curve: curves[index].rawValue,
                                      force: Double.random(in: 1.0...2.0),
                                      duration: Double.random(in: 0.0...1.0),
                                      delay: Double.random(in: 0.0...1.0))
            
            animations.append(animation)
        }
        return animations
    }
}



