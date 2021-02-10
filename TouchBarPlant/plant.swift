//
//  plant.swift
//  TouchBarPlant
//
//  Created by Angela George on 1/28/21.
//

import Foundation

class Plant {
    var hydration: Int
    var sunshine: Int
    var happiness: Int
    var waterTimer : Timer? = nil
    var waterSec : Int = 0 {
        didSet {
            if (waterSec == 20) {
                stopDrowning()
                overWatered = false
            }
        }
    }
    
    // when overWatered changes, observer checks if true then starts flooding
    var overWatered: Bool = false {
        didSet {
            if overWatered {
                flooded()
            }
        }
    }
    init(hydration: Int, sunshine: Int, happieness: Int) {
        self.hydration = hydration
        self.sunshine = sunshine
        self.happiness = happieness
    }
    
    func water() {
        // hydration on a level from 0 to 5
        // if you try to water when hydration is already at 5, overWatered will toggle to true for one hour
        hydration += 1
        print(hydration)
        if (hydration == 5) {
            hydration = 5
            overWatered = true
        }
    }
    
    func sunny() {
        // need to calculate if it is day
        // day = 3pts
        // noon = 5pts
        // night = 1pt
        let hour = Calendar.current.component(.hour, from: Date())
        print(hour)
        
        if (hour > 5 && hour < 19) {
            sunshine = 3
            if (hour == 12) {
                sunshine = 5
            }
        }
        else {
            sunshine = 1
        }
    }
    
    func happy() {
        happiness = sunshine + hydration
        if (overWatered) {
            happiness -= 1
        }
    }
    
    func flooded() {
        waterTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.waterSec += 1
        })
    }
    
    func stopDrowning() {
        waterTimer?.invalidate()
        waterTimer = nil
    }
}

