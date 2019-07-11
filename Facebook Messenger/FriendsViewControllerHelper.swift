//
//  FriendsViewControllerHelper.swift
//  Facebook Messenger
//
//  Created by Mohsen Abdollahi on 7/11/19.
//  Copyright © 2019 Mohsen Abdollahi. All rights reserved.
//

import UIKit

class Friend : NSObject {
    var name : String?
    var profileImageName : String?
}

class Message : NSObject {
    var text : String?
    var date : Date?
    var friend : Friend?
}


extension FriendsViewController {
    
    
    func setupData(){
        
        let mark = Friend()
        mark.name = "Mark Zuckerberg"
        mark.profileImageName = "Mark_Z"
        
        let message = Message()
        message.friend = mark
        message.text = "Hello My name is Mark ! its nice to meet you"
        message.date = Date()
        
        let steve = Friend()
        steve.name = "Steve Jobs"
        steve.profileImageName = "Mark_Z"
        
        let messageSteve = Message()
        messageSteve.friend = steve
        messageSteve.text = "Hello My name is Steve jobs ! its nice to meet you"
        messageSteve.date = Date()

        
        let bill = Friend()
        bill.name = "Bill Gates"
        bill.profileImageName = "Mark_Z"
        
        let messageBill = Message()
        messageBill.friend = bill
        messageBill.text = "Hello My name is Bill Gates ! its nice to meet you"
        messageBill.date = Date()
        
        
        messagesArray = [message , messageSteve , messageBill ]
        
    }

    
    
}
