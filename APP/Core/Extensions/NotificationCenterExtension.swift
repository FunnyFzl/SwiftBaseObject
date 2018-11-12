//
//  NotificationCenterExtension.swift
//  APP
//
//  Created by funny on 2018/11/8.
//  Copyright © 2018 Funny. All rights reserved.
//

import Foundation

extension NotificationCenter {
    static func post(customeNotification name: FCNotification, object: Any? = nil){
        NotificationCenter.default.post(name: name.notificationName, object: object)
    }
}

