//
//  InterfaceController.swift
//  AELogDemo watchOS Extension
//
//  Created by Marko Tadic on 4/1/16.
//  Copyright © 2016 AE. All rights reserved.
//

import WatchKit
import Foundation
import AELog

class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        aelog()
    }

    override func willActivate() {
        super.willActivate()
        aelog()
    }

    override func didDeactivate() {
        super.didDeactivate()
        aelog()
    }
    
    @IBAction func didTapButton() {
        aelog()
        generateLogLines(count: Int.random(max: 218))
    }
    
    private func generateLogLines(count count: Int) {
        for i in 0...count {
            aelog("I'm just a log line #\(i).")
        }
    }
    
}

extension Int {
    static func random(min: Int = 0, max: Int = Int.max) -> Int {
        return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
}