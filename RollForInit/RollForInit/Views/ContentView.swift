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
    @State var dice1: Int = 0
    @State var dice2: Int = 0
    @State var dice3: Int = 0
	var diceTotal: Int {
		return dice1+dice2+dice3
	}
    @State var isDiceRoll = false
    var body: some View {
        VStack {
            HStack {
                VStack{
                    Text("Dice #1").padding()
                    Text(String(dice1))
                }
                VStack{
                    Text("Dice #2").padding()
                    Text(String(dice2))
                }
                VStack{
                    Text("Dice #3").padding()
                    Text(String(dice3))
                }
                
            }
            if (diceTotal > 0)
            {
                Text("The sum of your dice rolls is \(diceTotal).").padding()
            }
            Button("Roll For Initiative!"){
                dice1 = diceGenerator.nextInt()
                dice2 = diceGenerator.nextInt()
                dice3 = diceGenerator.nextInt()
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
		ContentView()
			
            
    }
}
