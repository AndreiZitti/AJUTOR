//
//  EditBirthday.swift
//  BirthdayTracker
//
//  Created by Daniel Kainz on 17.08.21.
//  Copyright © 2021 TUM LS1. All rights reserved.
//

/*
 Task 2.3 & 3.1:
 Create an edit / add screen
*/
import SwiftUI

struct EditBirthday: View {
    
    @State var birthday: Birthday
    
    var body: some View{
        
        TextField("Name: ", text: $birthday.name)
        
    }
    
    struct ContentView: View {
        @State private var birthDate = Date()

        var body: some View {
            VStack {
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                    Text("Select a birthdate")
                }
            }
        }
    }

    
}
