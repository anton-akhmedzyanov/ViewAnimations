//
//  File.swift
//  ViewAnimations
//
//  Created by Anton Akhmedzyanov on 02.05.2023.
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
    static func getAnimation() -> Animation {
        var animationModel: Animation!
       
        let animations = DataStore.shared.animations
        let curves = DataStore.shared.curves
        
        animationModel = Animation(preset: animations[Int.random(in: 0...animations.count)],
                                   curve: curves[Int.random(in: 0...curves.count)],
                                   force: Double.random(in: 1...2),
                                   duration: Double.random(in: 1...3),
                                   delay: 1)
        return animationModel
    }
}
