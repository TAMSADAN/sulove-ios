//
//  Bucket.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/26.
//

import Foundation
import SwiftUI

struct Bucket: Hashable, Identifiable, Codable{
    var id : Int
    var userId : Int
    var score : Int
    var status: Bool
    var title: String
    var context: String
    var targetDate: String
    var postedDate: String
}


