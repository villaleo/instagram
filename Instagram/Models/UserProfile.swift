//
//  UserProfile.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation

struct UserProfile: Codable {
	
	var name: String
	var username: String
	var bio: String
	var bioLink: String?
	var numPosts: Int64
	var numFollowers: Int64
	var numFollowing: Int64
	var highlights: [StoryHighlight]
	var posts: [UserPost]
	
	static let `default`: Self = .init(
		name: "John Appleseed",
		username: .init("jappleseed"),
		bio: "Hello, world!",
		bioLink: "apple.com",
		numPosts: 0,
		numFollowers: 0,
		numFollowing: 0,
		highlights: [],
		posts: []
	)
	
}
