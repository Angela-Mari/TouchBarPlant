//
//  ViewController.swift
//  TouchBarPlant
//
//  Created by Angela George on 1/28/21.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        var myPlant = Plant(hydration: 0, sunshine: 0, happieness: 0)
        
        myPlant.sunny()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

