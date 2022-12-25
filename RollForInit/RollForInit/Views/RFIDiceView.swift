//
//  RFIDiceView.swift
//  RollForInit
//
//  Created by Edstrom, Jason on 12/23/22.
//  Copyright © 2022 InstaCode. All rights reserved.
//

import SwiftUI

struct RFIDiceView: View {
	@ObservedObject var dice: RFIDice
    var body: some View {
		VStack{
			Text(dice.title).padding(.bottom)
			Text(String(dice.value))
		}
    }
}

struct RFIDiceView_Previews: PreviewProvider {
    static var previews: some View {
		RFIDiceView(dice: RFIDice(title: "Dice #1"))
    }
}
