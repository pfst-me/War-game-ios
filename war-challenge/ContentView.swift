//
//  ContentView.swift
//  war-challenge
//
//  Created by pavan naik on 05/01/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
        
            VStack {
                Spacer()
                Image("logo")
                Spacer()
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
                Spacer()
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    // update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                    if(playerScore == 14 || cpuScore == 14){
                        
                    }
                    // update the score
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 10.0)
                    Text(String(playerScore)).font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
                VStack{
                    
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white).padding(.bottom, 10.0)
                    Text(String(cpuScore)).font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
            }
                Spacer()
            
        }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
