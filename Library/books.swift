//
//  books.swift
//  Library
//
//  Created by Melissa Anderson on 10/11/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//

import Foundation


//class Books{
  //  var name: String
  //  var num: Int
  //  var date: Int
  //  var status: String
   // var booksList: [Int:String] = [:]


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

// new method to show status of checked out


// newBook: Book = Book(id: 1, title:"whatever")
// library.addBook(newBook)


//    func bookLibrary(){
//        
//     let sortedKeys = Books1.keys.sorted()
//        
//        for key in sortedKeys {
//            print("Catalog Number: \(key) Title and Author: \(Books1[key] ?? "no title available")")
//    }
//
//}
//    func checkout(){
//        let currentDate = Calendar.current
//        let dueDate = currentDate.date(byAdding: .day, value: 7, to:Date())
//        io.writeOutput(" Please choose your selction number")
//        currentInput = io.getInput()
//        
//        if currentInput == "1"{
//        io.writeOutput(" You have chosen\(Books1[001])")
//        }
//        if currentInput == "1" {
//        io.writeOutput(" Choose 1 to return to menu")
//        }
//        if currentInput == "2"{
//        io.writeOutput( " You have chosen\(Books1[002])")
//        }
//    }
//}






 
