//
//  ContentView.swift
//  Calculator
//
//  Created by Reddy,Raghavendra on 4/5/21.
//  Copyright © 2021 Reddy,Raghavendra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var value: String = "0";
    @State private var firstValue: String = "";
    @State private var secondValue: String = "";
    
    var body: some View {
        NavigationView{
        VStack(spacing: 4){
                TextField("", text: $value)
                    .frame(height: 100.0)
                    .background(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                    .alignmentGuide(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                        /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                }
            ButtonsView(value: $value)
        }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
