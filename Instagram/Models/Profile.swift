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
		if let url = URL(string: photoUrlString) {
			return url
		}
		
		fatalError("Invalid URL '\(photoUrlString)'.")
	}
	
	var bio: String
	
	private var _profileUrl: String?
	var profileUrl: URL? {
		guard let address = _profileUrl?.lowercased() else {
			return nil
		}
		
		if let url = URL(string: address) {
			return url
		}
		
		fatalError("Invalid URL '\(address)'.")
	}
	
	var numPosts: Int64 { .init(posts.count) }
	var numFollowers: Int64
	var numFollowing: Int64
	var highlights: [StoryHighlight]
	var posts: [Post]
	
}
