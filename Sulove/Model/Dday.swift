//
//  Dday.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/03/06.
//

import Foundation
import SwiftUI

struct Dday: Hashable, Identifiable, Codable{
    var id : Int
    var userId : Int
    var type : String
    var title: String
    var context: String
    var targetDate: String
    var postedDate: String
}
