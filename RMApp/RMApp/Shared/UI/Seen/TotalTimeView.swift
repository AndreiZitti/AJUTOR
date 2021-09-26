//
//  TotalTimeView.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import SwiftUI

func addTime(input: [Int]) -> Int{
    
    var sum = 0
    
    for i in input{
            sum = sum + i
    }
    
    return sum
}



struct TotalTimeView: View {
    var totalTime: [Int]
    var body: some View {
        Text("You spent a total of \(addTime(input:totalTime)) minutes watching movies")
            .colorInvert()
            .padding()
            .background(Rectangle())
    }
}

/*struct TotalTimeView_Previews: PreviewProvider {
    static var previews: some View {
        TotalTimeView(totalTime: [120,120,120])
    }
}
 */
