//
//  DataManager.swift
//  AnimationAppHW
//
//  Created by Антон Заричный on 13.09.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animationPresets = AnimationPreset.allCases
    let animationCurves = AnimationCurve.allCases

    private init() {}
}
