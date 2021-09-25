//
//  BirthdayList.swift
//  BirthdayTracker
//
//  Created by Paul Schmiedmayer on 10/09/19.
//  Copyright © 2019 TUM LS1. All rights reserved.
//

import SwiftUI


// MARK: BirthdayList
/// A struct that holds a prepulated list of birthdays
struct BirthdayList: View {
    /// A list of Birthday instances
    private var birthdays: [Birthday]
    
    
    /// Initializes the BirthdayList struct
    init() {
        let paul = Birthday(year: 1995,
                            month: 12,
                            day: 29,
                            name: "Paul Schmiedmayer",
                            giftIdeas: "A big hug",
                            giftDone: true)
        let lara = Birthday(year: 1995,
                            month: 9,
                            day: 9,
                            name: "Lara Marie Reimer")
        let marko = Birthday(year: 1987,
                             month: 8,
                             day: 27,
                             name: "Marko Jovanović")
        let jens = Birthday(year: 1991,
                             month: 9,
                             day: 21,
                             name: "Jens Klinker")
        let dominic = Birthday(year: 1991,
                               month: 2,
                               day: 18,
                               name: "Dominic Henze",
                               giftIdeas: "Ice ceam, lots of ice cream",
                               giftDone: true)
        let florian = Birthday(year: 1996,
                               month: 10,
                               day: 10,
                               name: "Florian Bodlée")
        let dora = Birthday(year: 1990,
                            month: 1,
                            day: 11,
                            name: "Dora Dzvonyar",
                            giftIdeas: "A unicorn that sparkles")
        
        birthdays = [paul, lara, marko, jens, dominic, florian, dora]
    }
    
    /*
     Task 2.1:
     The list items should be clickable -> Show the details of a birthday
    */
    
    /*
     Task 3.2:
     Add a navigation bar item for adding a birthday
    */
    
    /*
     Task 4:
     Enable deleting birthdays
    */
    
    var body: some View {
        NavigationView {
            List(birthdays) { birthday in
                BirthdayCell(birthday: birthday)
            }.navigationBarTitle(Text("Upcoming Birthdays"), displayMode: .large)
        }
    }
}

// MARK: BirthdayList Previews
struct BirthdayList_Previews: PreviewProvider {
    static var previews: some View {
        BirthdayList()
    }
}
