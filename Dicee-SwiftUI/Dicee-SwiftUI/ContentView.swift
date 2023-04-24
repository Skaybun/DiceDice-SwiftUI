//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Ali KINU on 20.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber: Int
    @State var rightDiceNumber: Int
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    diceView(n:leftDiceNumber)
                    diceView(n:rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll"){
                    rightDiceNumber = Int.random(in: 1...6)
                    leftDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50)).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0)).background(Color(red: 0.605, green: 0.112, blue: 0.119)).padding()
            }
            
        }
        
    }
}

struct diceView: View {
    let n : Int
    var body: some View {
        Image("dice\(n)").aspectRatio(1 ,contentMode: .fit) .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(leftDiceNumber: Int.random(in: 1...6), rightDiceNumber: Int.random(in: 1...6))
    }
}


