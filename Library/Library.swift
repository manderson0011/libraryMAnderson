//
//  Library.swift
//  Library
//
//  Created by Melissa Anderson on 10/11/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//
/*
import Foundation

switch checkOutstatus {
case "checkedin", "checkedout":
    print(" Book Checked Out")
case "checkedout", "checked in":
    print("Book Returned")
default:
    print("Status Unknown")
}

*/

class Library {
    
    var books: [Int:Book] = [:]
        
    init() {
        populateInitialBooks()
    }
    

    func addBook (id:Int, bookTitle:String) {
        let newBook: Book = Book(id: id, title:bookTitle)
        books[id] = newBook
    }
    
    func listAllBooks() {
        for (id, book) in books {
            print("id: \(id), title:\(book.title)")
        }
    }
    
    func populateInitialBooks() {
        addBook(id: 1, bookTitle: "George of the Jungle")
        addBook(id: 2, bookTitle: "Clan of the Cave Bear")
        addBook(id: 3, bookTitle: "Plains of Passage")
        addBook(id: 4, bookTitle: "Valley of the Horses")
    }
    
//    func checkoutBook(id: Int)
//        func checkout(){
//            let currentDate = Calendar.current
//            let dueDate = currentDate.date(byAdding: .day, value: 7, to:Date())
//            
//            io.writeOutput(" Please choose your selction number")
//            currentInput = io.getInput()
//            
//            if currentInput == "1" {
//                io.writeOutput(" Choose 1 to return to menu")
//            }
//            
//            if currentInput == "1"{
//            io.writeOutput(" You have chosen\(Books1[001])")
//            }
//         
//            if currentInput == "2"{
//            io.writeOutput( " You have chosen\(Books1[002])")
//                
//            }
//        }
//    }
    
    // func checkinBook(id: Int)
    
    // func listBooks()

}

