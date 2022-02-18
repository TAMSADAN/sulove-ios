//
//  SuloveApp.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

@main
struct SuloveApp: App {
    @StateObject private var item = SuloveItem(itemName: "디데이", isExisted: false)
    
    var body: some Scene {
        WindowGroup {
            MainPage()
                .environmentObject(item)
        }
    }
}

