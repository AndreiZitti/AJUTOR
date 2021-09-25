//
//  BirthdayCell.swift
//  BirthdayTracker
//
//  Created by Paul Schmiedmayer on 10/09/19.
//  Copyright © 2019 TUM LS1. All rights reserved.
//

import SwiftUI


// MARK: BirthdayCell
/// A cell of the `BirthdayList`
struct BirthdayCell: View {
    /// The birthday belonging to this BirthdayCell
    var birthday: Birthday
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Text(birthday.name)
                Spacer()
                Text(birthday.giftDone ? "🎁" : "🤷‍♂️")
            }.font(Font.system(size: 22, weight: .bold))
            Group {
                Text("Turning \(birthday.nextAge) on \(birthday.formattedDate)")
                Text(birthday.giftIdeas).foregroundColor(.secondary)
            }.font(Font.system(size: 14, weight: .regular))
        }.padding()
    }
}


// MARK: BirthdayCell Previews
struct BirthdayCell_Previews: PreviewProvider {
    static var birthday = Birthday(year: 1990,
                                   month: 1,
                                   day: 11,
                                   name: "Dora Dzvonyar",
                                   giftIdeas: "A unicorn that sparkles")
    
    
    static var previews: some View {
        BirthdayCell(birthday: birthday)
            .previewLayout(.sizeThatFits)
    }
}
