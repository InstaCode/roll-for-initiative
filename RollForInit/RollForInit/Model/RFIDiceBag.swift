//
//  RFIDiceBag.swift
//  RollForInit
//
//  Created by Edstrom, Jason-CW on 12/23/22.
//  Copyright © 2022 InstaCode. All rights reserved.
//

import Foundation
class RFIDiceBag: ObservableObject{
	var bag: [RFIDice]
	
	init(bag: [RFIDice]) {
		self.bag = bag
	}
	
	init() {
		self.bag = Array<RFIDice>()
	}
	
	func addDie(die: RFIDice){
		bag.append(die)
	}
	
	func removeDie(){
		
	}
}
