//
//  Memo.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/26.
//

import Foundation
import SwiftUI

struct Memo: Hashable, Identifiable, Decodable{
    var id: Int
    var userId: Int
    var title: String
    var context: String
    var postedDate: String
}
