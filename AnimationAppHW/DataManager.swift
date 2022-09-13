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
    
    let AnimationPresets = AnimationPreset.allCases
    let AnimationCurves = AnimationCurve.allCases

    private init() {}
}
