//
//  BucketListModel.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/19.
//

import Foundation
import SwiftUI

class bucketListClass : ObservableObject{
    @Published var name : String
    @Published var date : String
    @Published var importance : Int
    
    init(name : String , date : String, importance: Int){
        self.name = name
        self.date = date
        self.importance = importance
    }
}

