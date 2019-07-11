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
