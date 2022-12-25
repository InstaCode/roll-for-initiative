//
//  RollForInitApp.swift
//  RollForInit
//
//  Created by Edstrom, Jason-CW on 12/23/22.
//

import SwiftUI

@main
struct RollForInitApp: App {
	
    var body: some Scene {
        WindowGroup {
            ContentView(diceBag: RFIDiceBag(bag:[
					RFIDice(title: "Dice #1"),
					RFIDice(title: "Dice #2"),
					RFIDice(title: "Dice #3")
		 ]))
        }
    }
}
