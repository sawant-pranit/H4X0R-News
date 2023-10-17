//
//  HackerNewsResponse.swift
//  H4X0R News
//
//  Created by pranit on 21/09/23.
//

import Foundation


// MARK: - HackerNewsResponse
struct HackerNewsResponse: Codable {
    let hits: [Hit]
}

// MARK: - Hit
struct Hit: Codable, Identifiable {
    var id: String {
           return objectID
       }
       let objectID: String
       let points: Int
       let title: String
       let url: String?
}
