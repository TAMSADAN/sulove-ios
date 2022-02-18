//
//  SuloveItem.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/16.
//

import Foundation
import SwiftUI

class SuloveItem: ObservableObject {
    @Published var itemName : String ;
    @Published var isExisted : Bool ;
    
    init(itemName : String, isExisted : Bool){
        self.itemName = itemName
        self.isExisted = isExisted
    }
}
