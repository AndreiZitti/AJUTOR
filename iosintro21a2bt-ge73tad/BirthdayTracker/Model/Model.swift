//
//  Model.swift
//  BirthdayTracker
//
//  Created by Daniel Kainz on 17.08.21.
//  Copyright © 2021 TUM LS1. All rights reserved.
//

import Foundation

/*
 Task 1:
 Implement the model class
*/
public class Model {
    /*
     Task 5.2
     Sort the bithdays list
    */
    @Published public private(set) var birthdays: [Birthday]
    
    init(birthdays: [Birthday]) {
        self.birthdays = []
    }
    
    /*
     Task 1.1:
     Add methods for getting and deleting data as well as adding mock data
    */
    
    func get(birthdayOf name: String) -> Birthday? { return nil }
        
    func birthday(_ id: Birthday.ID?) -> Birthday? { return nil }
    
    func delete(birthday: Birthday) {}
    
    func save(_ birthday: Birthday) {}
    
    /*
     Task 1.2:
     Add the provided Birthdays into this mock object and add more birthdays
    */
    
    /*
     Task 1.3:
     Use the mock data everywhere in the app
    */
    public static var mock: Model {
        let mock = Model(birthdays: [])
        return mock
    }
}
