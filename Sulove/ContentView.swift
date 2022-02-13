//
//  ContentView.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainPage(isOpened: .constant(true))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
