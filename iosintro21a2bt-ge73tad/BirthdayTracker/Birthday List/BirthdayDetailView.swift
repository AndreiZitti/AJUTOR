//
//  BirthdayDetailView.swift
//  Birthdays
//
//  Created by Daniel Kainz on 17.08.21.
//  Copyright © 2021 TUM LS1. All rights reserved.
//

import SwiftUI

/*
 Task 2.2:
 Create a Detail View for a birthday with a edit button
 */

struct BirthdayDetailView: View {
    
    public func transf(a:Bool) -> String {
        if(a){
            return "Yes"
        }
        return "No"
        
    }
    
    @Binding var birthday:Birthday
    
    var body: some View {
        
            VStack {
                
                Text("Name: \(birthday.name)")
                Text("Date of birth: \(birthday.formattedDate)")
                Text("Next Age: \(birthday.nextAge)")
                Text("Gift Ideas: \(birthday.giftIdeas)")
                Text("Gift bought?")
                Text("Answer: \(transf(a: birthday.giftDone))")
                Spacer()
                
                NavigationLink(destination: EditBirthday(birthday: birthday)) {
                    Text("Edit")
                }.padding(.bottom, 24)
            
        }
        
    }
    
    
}
//control i
