//
//  ContentView.swift
//  StepperExercise 2
//
//  Created by Edna Sung on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    @State var base1: Int = 1
    
    @State var base2: Int = 1
    
    var sum: Int {
        return base1 + base2
    }
    var body: some View {
        
        VStack {
 
            HStack(alignment: .top) {
                
                Spacer()
                
                Text("\(base1)")
                    .font(.system(size: 60))
            }
            .padding()
            
            Stepper(value: $base1, label: {
                Text("select first number ")
            })
            
            .padding()
            
            
            HStack {
                Text("+")
                    .font(.system(size: 60))
                
                Spacer()
                
                Text("\(base2)")
                    .font(.system(size: 60))
                
            }
            .padding()
            
            Stepper(value: $base2, label: {
                Text("select second number ")
            })
            
            .padding()
            
            Divider()
            
            HStack {
                
                Spacer()
                
                Text("\(sum)")
                    .font(.system(size: 60))
            }
            .padding()
        }
    }
}

#Preview {
    TabView {
        PlusView()
            .tabItem {
                Image(systemName: "plus")
                Text("Plus")
            }
            .tag(1)
        
        MinusView()
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
            .tag(2)
        
        TimesView()
            .tabItem {
                Image(systemName: "multiply")
                Text("Mutiply")
            }
            .tag(3)
        
        DivideView()
            .tabItem {
                Image(systemName: "divide")
                Text("Divide")
            }
            .tag(4)
        }
    .tint(.purple)
    }

