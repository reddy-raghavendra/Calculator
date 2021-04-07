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
                    .frame(height: 140.0)
                    .background(Color.black)
                    .font(Font.system(size:60))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.trailing)

                ButtonsView(value: $value)
                Spacer(minLength: 5);
                Spacer();
                Spacer();
                Spacer();
                
            }
            .navigationBarTitle("Calculator")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
