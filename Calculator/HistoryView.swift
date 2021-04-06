//
//  HistoryView.swift
//  Calculator
//
//  Created by Reddy,Raghavendra on 4/5/21.
//  Copyright © 2021 Reddy,Raghavendra. All rights reserved.
//

import Foundation
import SwiftUI

struct HistoryView: View {
    @State var history: [String] = ["sai","jeeva","bfjsb"]

var body: some View {
    List(history,id:\.self){his in
        Text(his)
    }
}
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
