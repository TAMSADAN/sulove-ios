//
//  SuloveApp.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/14.
//

import SwiftUI

@main
struct SuloveApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            MainPage().environmentObject(modelData)
        }
    }
}

