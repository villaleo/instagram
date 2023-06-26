//
//  ProfileTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import Foundation
import CoreGraphics

enum ProfileTab: Int, CaseIterable, Identifiable {
	
	var id: Int { self.rawValue }
	
	case posts
	case reels
	case tags
	
	var imageIconName: String {
		switch self {
		case .posts:
			return "squareshape.split.3x3"
		case .reels:
			return "play.square"
		case .tags:
			return "tag"
		}
	}
	
}
