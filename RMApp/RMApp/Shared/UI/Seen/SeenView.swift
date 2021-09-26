//
//  View1.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import SwiftUI

struct View1: View {
    var body: some View {
        VStack{
            TotalTimeView(totalTime:[120,120])
            Spacer()
            
        }
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
