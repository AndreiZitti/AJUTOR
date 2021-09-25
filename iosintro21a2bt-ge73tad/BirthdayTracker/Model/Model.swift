//
//  Model.swift
//  BirthdayTracker
//
//  Created by Daniel Kainz on 17.08.21.
//  Copyright © 2021 TUM LS1. All rights reserved.
//

import Foundation
import SwiftUI

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
        self.birthdays = birthdays
    }
    
    /*
     Task 1.1:
     Add methods for getting and deleting data as well as adding mock data
    */
    
    func get(birthdayOf name: String) -> Birthday? {
    
        var result:Birthday? = nil
        
        for birthday in birthdays {
            if ( birthday.name == name ) {
                
                result = birthday
            }
        }
        return result
    }
        
    func birthday(_ id: Birthday.ID?) -> Birthday? {
        
        var result:Birthday? = nil
        
        for birthday in birthdays {
            if ( birthday.id == id ) {
                
                result = birthday
            }
        }
        return result
        
    }
    
    func delete(birthday: Birthday) {
    
       // let x = birthdays.firstIndex(of: birthday)
        
        
        
        
        let x = birthdays.firstIndex(of: birthday)
        
        if (x != nil){
            birthdays.remove(at: x!)
        }
        
        //if let x = 
        
    }
    
    func save(_ birthday: Birthday) {
        
        birthdays.append(birthday)
        
        
    }
    
    /*
     Task 1.2:
     Add the provided Birthdays into this mock object and add more birthdays
    */
    
    /*
     Task 1.3:
     Use the mock data everywhere in the app
    */
    public static var mock: Model {
        let mock = Model(birthdays:[])
        
        let x = BirthdayList.init().getThem()
        
       for i in x {
            mock.save(i)
        }
        
                
        
        mock.save( Birthday(year: 1999,
                                        month: 1,
                                        day: 15,
                                        name: "Zitti Andrei"))
        mock.save( Birthday(year: 1967,
                                        month: 6,
                                        day: 02,
                                        name: "Zitti Irina"))
        mock.save( Birthday(year: 1997,
                                        month: 7,
                                        day: 26,
                                        name: "Zitti Radu"))
        
        return mock
    }
}


