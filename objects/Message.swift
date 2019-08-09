//
//  Message.swift
//  SimpleChatApp
//
//  Created by 星みちる on 2019/08/09.
//  Copyright © 2019 星みちる. All rights reserved.
//

import Foundation


struct Message {
    
    
    //メッセージのID (Firestoreで使用するキーを入れる）
    let documentId:String

    //送信されたメッセージ
    let text:String
    
}
