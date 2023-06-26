//
//  ScreenTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/26/23.
//

import Foundation

enum ScreenTab: Identifiable, Hashable, CaseIterable {
	
	case home
	case search
	case create
	case reels
	case profile
	
	var id: Int {
		self.hashValue
	}
	
	var systemImageName: String {
		switch self {
		case .home:
			return "house"
		case .search:
			return "magnifyingglass"
		case .create:
			return "plus.app"
		case .reels:
			return "play.square"
		case .profile:
			return "person.circle"
		}
	}
	
}
