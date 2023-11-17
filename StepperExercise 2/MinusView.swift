//
//  MinusView.swift
//  StepperExercise 2
//
//  Created by Edna Sung on 2023-11-17.
//

import SwiftUI

struct MinusView: View {
    @State var base1: Int = 1
    
    @State var base2: Int = 1
    
    var minus: Int {
        return base1 - base2
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
                Text("-")
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
                
                Text("\(minus)")
                    .font(.system(size: 60))
            }
            .padding()
        }
    }
}

#Preview {
    MinusView()
}
