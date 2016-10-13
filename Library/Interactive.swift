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
    private var checkout: Bool = true
 
    
    
    
    func go() {
//Welcome-Help Menu
        while !done {
                io.writeMessage( "\n WELCOME TO MY LIBRARY \n Press 1 to return to Help menu. \n Press 2 to CHECKOUT book,\n Press 3 to CHECK IN Book, \n Press 4 to Add a new book, \n Press 5 to EXIT, \n Press 6 for a listing of books available")
                    currentInput = io.getInput()
                
                    if currentInput == "1" {
                    io.writeMessage(" HELP MENU Press 1 to return to HELP menu. \n Press 2 to CHECKOUT book,\n Press 3 to CHECK IN Book, \n Press 4 to Add a new book, \n Press 5 to EXIT, \n Press 6 for a listing of books avaiilable")
                    currentInput = io.getInput()
       
//Checout
            }   else if currentInput == "2" {
                    io.writeMessage("What is the id of the book you want to checkout?")
                    currentInput = io.getInput()
                  
                    let id = Int(currentInput) ?? 0
                    library.removebook(id: id)

                    print ("The book you have choosen is now checked out, press 6 to see remaining books availble for checkout.")
                    
                    
            
            
//Check In
                    
            }   else if currentInput == "3" {
                    io.writeMessage("What is the id of the book to add?")
                    currentInput = io.getInput()
                    
                    let id = Int(currentInput) ?? 0
                    io.writeMessage("What is the name of the book to add?")
                    
                    let bookName = io.getInput()
                    library.addBook(id: id, bookTitle: bookName)
                print ("The book you have choosen is now checked in, press 6 to see remaining books availble for checkout.")

                    
// Add new book
                    
            }   else if currentInput == "4" {
                    io.writeMessage("What is the id of the book to add?")
                    currentInput = io.getInput()
                
                    let id = Int(currentInput) ?? 0
                    io.writeMessage("What is the name of the book to add?")
                
                    let bookName = io.getInput()
                    library.addBook(id: id, bookTitle: bookName)
                    
                print ("The book you have added has been listed in the library, press 6 to see available books for checkout.")

           
// Quit Command
            }   else if currentInput == "5" {
                        done = true
                        print ( "Exiting.....")
// List Books
            }   else if currentInput == "6" {
                    library.listAllBooks()
                    
                    print("These items are availale for checkout")
                
            
            }   else {
                        print("Invailed entry please try again")
            }
        }
    }
}
