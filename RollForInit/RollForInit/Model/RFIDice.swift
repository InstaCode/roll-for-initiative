//
//  RFIDiceModel.swift
//  RollForInit
//
//  Created by Edstrom, Jason on 12/23/22.
//  Copyright © 2022 InstaCode. All rights reserved.
//

import Foundation
import SwiftUI

class RFIDice: Identifiable, ObservableObject{
	
	var id = UUID()
	var title: String
	@Published var value: Int
	
	init(title: String){
		self.title = title;
		self.value = 0;
	}
}
