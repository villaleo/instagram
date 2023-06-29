//
//  Post.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
	
	var id: UInt
	var locationName: String? = nil
	
	private var photoUrlString: String
	var photoURL: URL {
		guard let url = URL(string: photoUrlString) else {
			fatalError("Invalid url '\(photoUrlString)'.")
		}
		return url
	}
	
	var usersLiked: [String] = []
	var numLikes: Int { usersLiked.count }
	var caption: String? = nil
	
}
