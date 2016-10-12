//
//  Interactive.swift
//  Library
//
//  Created by Melissa Anderson on 10/11/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//

import Foundation


class Interactive {
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    private var library = Library()
    
    
    func go() {
        
//        var Checkout: String
//        var Checkin: String
        
        while !done {
            
            io.writeMessage("What is your command (TYPE 6 for help)?")
            currentInput = io.getInput()
            
            if currentInput == "5" {
                done = true
                print ( "Exiting.....")
                
            } else if currentInput == "1"{
//                bookLibrary()
                io.writeMessage("Press 1 to return to main menu. Press 2 to Checkout book, Press 3 to Checkin Book, ")
                currentInput = io.getInput()
                
            } else if currentInput == "2" {
                
                currentInput = io.getInput()
//                Checkout = String (currentInput)
                // checkoutBook()
                
            } else if currentInput == "3" {
                currentInput = io.getInput()
//                Checkin = String (currentInput)
                print("You have checked out:")
                
            } else if currentInput == "4" {
                io.writeMessage("What is the id of the book to add?")
                currentInput = io.getInput()
                let id = Int(currentInput) ?? 0
                
                io.writeMessage("What is the name of the book to add?")
                let bookName = io.getInput()
                
                library.addBook(id: id, bookTitle: bookName)
                
            } else if currentInput == "7" {
                library.listAllBooks()
                
            } else if currentInput == "6" {
                print ("HELP : TO BEGIN TYPE 1; BEGIN CHECKOUT TYPE 2 \n BEGIN CHECK IN TYPE 3 ;  BEGIN ADD BOOK TYPE 4")
            

            }else {
                print("Invailed entry please try again")
            }
        }
    }
}




//func addNewBooks(){
//    books1.insert("newbook", at:(0))
//}


//func checkOutBook(){
//    books1.remove(at:books1.count-1 )
//}


//func checkInBooks() {
//    books.insert("return", at:(1))
//}


//books().remove(at:books.count-1)



// print("Now the list has \(books) in it")


//for bookcode in books.key
//      print("key:\(books)")

//    print("Books listed in library:\(books.count)")


/*
 
 
 
 
 *  view list of books
 
 *  add dates on checkout
 *  check in on due date
 *  list checked out books
 *
 
 
 
 
 
 
 */







