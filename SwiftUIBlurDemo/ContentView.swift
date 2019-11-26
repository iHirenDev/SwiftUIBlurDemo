//
//  ContentView.swift
//  SwiftUIBlurDemo
//
//  Created by Hiren Patel on 26/11/19.
//  Copyright © 2019 com.hiren. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Declaring state for slidervalue
    @State var sliderValue = 0.0
    
    //Minimum and maximum value for slider
    var minValue = 0.0
    var maxValue = 10.0
    
    
    var body: some View {
        VStack {
                //Adding an Image with blur property in VStack
                Image("swiftui")
                    .blur(radius: CGFloat(self.sliderValue))
            
                //Adding HStack for the Slider
                HStack{
                    Text("0")
                        .fontWeight(.bold)
                        .padding()
                    
                    Slider(value: $sliderValue, in: minValue...maxValue)
                        .padding()
                    
                    Text("10")
                        .fontWeight(.bold)
                        .padding()
                    }
                    
                    Text("BlurRadius: \(Int(sliderValue))")
                        .fontWeight(.bold)
                        .font(.title)
                }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
