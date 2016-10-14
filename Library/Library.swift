//
//  Library.swift
//  Library
//
//  Created by Melissa Anderson on 10/11/16.
//  Copyright © 2016 Melissa Anderson. All rights reserved.
//

import Foundation



class Library {
    
    var books: [Int:Book] = [:]
   
        
    init() {
        populateInitialBooks()
    }
    
//adds new books
    func addBook (id:Int, bookTitle:String) {
        let newBook: Book = Book(id: id, title:bookTitle)
        books[id] = newBook
        }
    
// lists all books
    func listAllBooks() {
        let sortedKeys = books.keys.sorted()
        
        for id in sortedKeys {
            print("Id: \(id) Title: \(books[id]!.title)")
    }
 }
    
//preloaded books
    func populateInitialBooks() {
        addBook(id: 1, bookTitle: "Clan of the Cave Bear")
        addBook(id: 2, bookTitle: "Plains of Passage")
        addBook(id: 3, bookTitle: "Valley of the Horses")
        addBook(id: 4, bookTitle: "The Mammoth Hunters")
        addBook(id: 5, bookTitle: "Land of Painted Caves")
    }


        //removes books / CHECKOUT
        func removebook(id: Int){
        let currentDate = Calendar.current
        let dueDate = currentDate.date(byAdding: .day, value: 7, to:Date())
        books.removeValue(forKey: id)
         print("You have successfully checked out your book today:\(Date()) and your book is due back on: \(dueDate!)")
        }
    }

    
