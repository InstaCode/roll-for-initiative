//
//  ContentView.swift
//  RollForInit
//
//  Created by Edstrom, Jason on 12/23/22.
//

import SwiftUI
import GameplayKit

struct ContentView: View {
    var diceGenerator = GKRandomDistribution.d20()
	var numberOfDice: Int = 3
    @State var dice1: Int = 0
    @State var dice2: Int = 0
    @State var dice3: Int = 0
	@StateObject var diceBag: RFIDiceBag
	var diceTotal: Int {
		return dice1+dice2+dice3
	}
	
    var body: some View {
        VStack {
            HStack {
				ForEach(diceBag.bag, id: \.id){ die in
					RFIDiceView(dice: die)
				}
//				RFIDiceView(dice: RFIDiceModel(title: "Die #1"))
//                VStack{
//                    Text("Dice #1").padding()
//                    Text(String(dice1))
//                }
//				VStack{
//					Text("Dice #2").padding()
//					Text(String(dice2))
//				}
//				VStack{
//					Text("Dice #3").padding()
//					Text(String(dice3))
//				}
//				ForEach(0..<numberOfDice){ dieIndex in
//					var die = RFIDiceModel(title: "Die #\(dieIndex)", value: 0)
//					diceBag.append(die)
//					RFIDiceView(dice: die)
//				}
//				RFIDiceView(diceTitle: "Die #1", diceValue: dice1).padding()
//				RFIDiceView(diceTitle: "Die #2", diceValue: dice2).padding()
//				RFIDiceView(diceTitle: "Die #3", diceValue: dice3).padding()

                
            }
            if (diceTotal > 0)
            {
                Text("The sum of your dice rolls is \(diceTotal).").padding()
            }
            Button("Roll For Initiative!"){
//                dice1 = diceGenerator.nextInt()
//                dice2 = diceGenerator.nextInt()
//                dice3 = diceGenerator.nextInt()
            }.padding(.top)
            Button("Clear"){
                dice1 = 0
                dice2 = 0
                dice3 = 0
            }
            .padding(.bottom)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(diceBag: RFIDiceBag.init(bag: [RFIDice(title: "Die #1")]))
			
            
    }
}
