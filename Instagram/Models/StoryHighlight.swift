//
//  StoryHighlight.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation

struct StoryHighlight: Identifiable {
	
	var id: Int { "\(highlightName)@\(imageName)".hashValue }
	var highlightName: String
	var imageName: String
	
}
