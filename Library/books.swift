//
//  books.swift
//  Library
//
//  Created by Melissa Anderson on 10/11/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//

import Foundation



//book class 

class Book {
    var id: Int
    var title: String
    var author: String?
    var checkedIn: Bool = true
    
    init(id: Int, title: String) {
        self.id = id
        self.title = title
    }
    func listInfo() {
        print("* Book id: \(id)")
        print("* Book title: \(title)")
    }
}












 
