//
//  PostData.swift
//  Hacker_news
//
//  Created by surya sai on 26/11/23.
//

import Foundation
struct Results:Codable {
    let hits:[Post]
}
struct Post:Codable {
    let objectID:String
    let title:String
    let points:Int
    let url:String?
}
