//
//  NotificationNames.swift
//  APP
//
//  Created by funny on 2018/11/8.
//  Copyright © 2018 Funny. All rights reserved.
//

import Foundation

enum FCNotification: String {
    case userLogout
    case userLogin

    var stringValue: String {
        return "FC" + rawValue
    }

    var notificationName: NSNotification.Name {
        return NSNotification.Name(stringValue)
    }
}
