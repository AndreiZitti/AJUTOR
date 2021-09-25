//
//  Birthday.swift
//  BirthdayTracker
//
//  Created by Paul Schmiedmayer on 10/09/19.
//  Copyright © 2019 TUM LS1. All rights reserved.
//

import Foundation


// MARK: - Birthday
/// A struct that contains all the nescessary data for Birthdays
public struct Birthday {
    /// A universally unique identifier for unique identification of a Birthday
    public var id: UUID
    /// The date of birth
    var birthdate: Date
    /// The name of the birthday child
    var name: String
    /// Ideas for the birthday child
    var giftIdeas: String
    /// Indicates whether a gift has already been bought for the birthday child
    var giftDone: Bool
    
    
    /// Returns the age on the birthday child's next birthday
    var nextAge: Int {
        let ageComponents = Calendar.current.dateComponents([.year], from: birthdate, to: Date())
        guard let age = ageComponents.year else {
            return -1
        }
        return age + 1
    }
    
    /// Returns the birtdate in an written-out format, e.g. 27 August
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM"
        return dateFormatter.string(from: birthdate)
    }
    
    
    /// Initializes a Birthday
    /// - Parameters:
    ///   - id: id A universally unique identifier for unique identification of a Birthday
    ///   - date: date The date of birth
    ///   - name: name The name of the birthday child
    ///   - giftIdeas: giftIdeas Ideas for the birthday child
    ///   - giftDone: giftDone Indicates whether a gift has already been bought for the birthday child
    init(id: UUID? = nil, birthdate: Date, name: String, giftIdeas: String? = nil, giftDone: Bool = false) {
        self.id = id ?? UUID()
        self.birthdate = birthdate
        self.name = name
        self.giftIdeas = giftIdeas ?? "No gift ideas yet"
        self.giftDone = giftDone
    }
    
    
    /// Initializes a birthday
    /// - Parameters:
    ///   - id: id A universally unique identifier for unique identification of a Birthday
    ///   - year: year The year of the date of birth
    ///   - month: month The month of the date of birth
    ///   - day: day The day of the date of birth
    ///   - name: name The name of the birthday child
    ///   - giftIdeas: giftIdeas Ideas for the birthday child
    ///   - giftDone: giftDone Indicates whether a gift has already been bought for the birthday child
    init(id: UUID? = nil, year: Int, month: Int, day: Int, name: String, giftIdeas: String? = nil, giftDone: Bool = false) {
        self.id = id ?? UUID()
        self.birthdate = Self.makeDate(year: year, month: month, day: day)
        self.name = name
        self.giftIdeas = giftIdeas ?? "No gift ideas yet"
        self.giftDone = giftDone
    }
}


// MARK: Birthday + Make Date
extension Birthday {
    /// Creates a `Date` based on the year, month and day passed into the function
    /// - Parameters:
    ///   - year: year The year of the date of birth
    ///   - month: month The month of the date of birth
    ///   - day: day The day of the date of birth
    /// - Returns: Creates a Date instance for the given year, month and day values
    static func makeDate(year: Int, month: Int, day: Int) -> Date {
        let calendar = Calendar(identifier: .gregorian)
        let components = DateComponents(year: year, month: month, day: day)
        return calendar.date(from: components) ?? Date()
    }
}


// MARK: Birthday + Identifiable
extension Birthday: Identifiable { }

// MARK: - Extension: Comparable
extension Birthday: Comparable {
    public static func < (lhs: Birthday, rhs: Birthday) -> Bool {
        let currentDate = Date()
        let calendar = Calendar.current
        let lhsNextBirthday = calendar.date(byAdding: .year, value: lhs.nextAge, to: lhs.birthdate) ?? Date()
        let rhsNextBirthday = calendar.date(byAdding: .year, value: rhs.nextAge, to: rhs.birthdate) ?? Date()
        return currentDate.distance(to: lhsNextBirthday) < currentDate.distance(to: rhsNextBirthday)
    }
}
