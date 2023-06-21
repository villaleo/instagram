//
//  UserPost.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import Foundation

struct UserPost: Identifiable, Hashable {
	
	var locationName: String? = nil
	var imageName: String
	var usersLiked: [UserProfile.Username] = []
	var numLikes: Int {
		usersLiked.count
	}
	var caption: String? = nil
	
	var id: Int {
		imageName.hashValue
	}
	
}
