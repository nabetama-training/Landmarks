//
//  Profile.swift
//  Landmarks
//
//  Created by nabetama on 2023/10/26.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    // 予約語は変数や型の名前に使うことができない
    // `` で囲むことで名前として利用できる。
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
