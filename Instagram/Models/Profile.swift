//
//  Profile.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation

struct Profile: Codable, Identifiable {
	
	var id: UInt
	var name: String
	var username: String
	
	private var photoUrlString: String
	var photoURL: URL {
		guard let url = URL(string: photoUrlString) else {
			fatalError("Invalid url '\(photoUrlString)'.")
		}
		return url
	}
	
	var bio: String
	var bioLink: String?
	var numPosts: Int64 { .init(posts.count) }
	var numFollowers: Int64
	var numFollowing: Int64
	var highlights: [StoryHighlight]
	var posts: [Post]
	
}
