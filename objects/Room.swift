
//
//  Room.swift
//  SimpleChatApp
//
//  Created by 星みちる on 2019/08/09.
//  Copyright © 2019 星みちる. All rights reserved.
//


//struct ：構造体
//チャットの部屋の情報をもつ構造体

struct Room {
    
    //部屋の名前
    let name:String
    
    // 部屋のID(firestoreで使用するキーを入れる）
    let documentId:String
}
