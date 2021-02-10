//
//  WindowController.swift
//  TouchBarPlant
//
//  Created by Angela George on 1/28/21.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
        print("window is connected")
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

    @IBAction func touchButton(_ sender: NSButtonCell) {
        print("pressed")
    }
}
