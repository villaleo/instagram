//
//  UserPost.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import Foundation

struct UserPost: Identifiable, Hashable, Codable {
	
	var id: Int { "\(imageName).\(numLikes)@\(caption ?? "")".hashValue }
	var locationName: String? = nil
	var imageName: String
	var usersLiked: [String] = []
	var numLikes: Int { usersLiked.count }
	var caption: String? = nil
	
}
