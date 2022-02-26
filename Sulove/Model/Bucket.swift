//
//  Bucket.swift
//  Sulove
//
//  Created by Sojin Lee on 2022/02/26.
//

import Foundation
import SwiftUI

struct Bucket: Hashable, Identifiable, Decodable{
    var id : Int
    var uesrId : Int
    var score : Int //별 갯수
    var status: Bool //미완 완성 상태
    var title: String //제목
    var context: String //부제목 
    var targetDate: String
    var postedDate: String
}


