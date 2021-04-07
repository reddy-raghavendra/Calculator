//
//  ButtonsView.swift
//  Calculator
//
//  Created by Reddy,Raghavendra on 4/5/21.
//  Copyright © 2021 Reddy,Raghavendra. All rights reserved.
//

import Foundation
import SwiftUI

struct ButtonsView: View {
    @Binding var value: String;
    @State private var firstValue: String = "";
    @State private var secondValue: String = "";
    @State private var operation: String = "";
    @State private var opHistory: [String] = [];
//    @State private var count: Int = 0;
    
    var body: some View {
        //     NavigationView{
        VStack(spacing: 10){
            
            HStack(spacing: 30){
                Button(action: {
                    self.value = "0";
                    self.firstValue = "";
                    self.secondValue = "";
                    
                }) {
                    Text("AC")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value = "0";
                }) {
                    Text("Clear")
                        
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                //                            NavigationView{
                NavigationLink(destination: HistoryView(history: opHistory)){
                    Image("history")
                        .resizable()
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    //                                        Button(action: {}) {
                    //                                        Text("History")
                    //                                                .frame(width: 50.0, height: 50.0)
                    //                                    .background(Color.gray)
                    //                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    //                                        }
                }
                //                            }
                //                            .frame(width: 50.0, height: 50.0)
                
                
                Button(action: {
                    self.operation = "/"
                    self.firstValue = self.value
                    self.value = "0";
                    
                }) {
                    Text("/")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.yellow)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
            }
            //                    .frame(width: 50.0, height: 50.0)
            .foregroundColor(.black)
            HStack(spacing: 30){
                Button(action: {
                    self.value =  appendValue(newValue: "7",oldValue: self.value);
                }) {
                    Text("7")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "8",oldValue: self.value);
                }) {
                    Text("8")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "9",oldValue: self.value);
                }) {
                    Text("9")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.operation = "X"
                    self.firstValue = self.value
                    self.value = "0";
                }) {
                    Text("X")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.yellow)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
            }
            //                    .frame(width: 50.0, height: 50.0)
            .foregroundColor(.black)
            HStack(spacing: 30){
                Button(action: {
                    self.value =  appendValue(newValue: "4",oldValue: self.value);
                }) {
                    Text("4")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "5",oldValue: self.value);
                }) {
                    Text("5")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "6",oldValue: self.value);
                }) {
                    Text("6")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.operation = "-"
                    self.firstValue = self.value
                    self.value = "0";
                }) {
                    Text("-")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.yellow)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
            }
            //                    .frame(width: 50.0, height: 50.0)
            .foregroundColor(.black)
            HStack(spacing: 30){
                Button(action: {
                    self.value =  appendValue(newValue: "1",oldValue: self.value);
                }) {
                    Text("1")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "2",oldValue: self.value);
                }) {
                    Text("2")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.value =  appendValue(newValue: "3",oldValue: self.value);
                }) {
                    Text("3")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.operation = "+"
                    self.firstValue = self.value
                    self.value = "0";
                }) {
                    Text("+")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.yellow)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                
            }
            //                    .frame(width: 50.0, height: 50.0)
            .foregroundColor(.black)
            HStack(spacing: 30){
                Button(action: {
                    self.value =  appendValue(newValue: "0",oldValue: self.value);
                }) {
                    Text("0")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(Circle())
                    
                }
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/-18/*@END_MENU_TOKEN@*/)
                
                Button(action: {
                    self.value =  appendValue(newValue: ".",oldValue: self.value);
                }) {
                    Text(".")
                        .frame(width: 50.0, height: 50.0)
                        .background(Color.gray)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                }
                Button(action: {
                    self.secondValue = self.value;
                    self.value =   doOperation(firstValue: self.firstValue, secondValue:  self.value, operation: self.operation)
                    opHistory.append(
                        self.firstValue + self.operation + self.secondValue + "=" + self.value);
 
                    
                    
                }) {
                    Text("=")
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 120.0, height: 50.0)
                        .background(Color.orange)
    

                }
                
            }
            //                    .frame(width: 50.0, height: 50.0)
            .foregroundColor(.black)
            
            
            
        }
    }
}
//}

struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
