//
//  ProfileMainContent.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/19/23.
//

import SwiftUI

struct ProfileMainContent: View {
	
	@State private var selectedTab = ProfileTab.posts
	
	let postGridDimensions = CGFloat(UIScreen.main.bounds.width / 3)
	
	var body: some View {
		VStack(spacing: 2.5) {
			ProfileTabBar(selectedTab: $selectedTab)
			
			switch selectedTab {
			case .posts:
				ProfilePostsTab()
			case .reels:
				ProfileReelsTab()
			case .tags:
				ProfileTagsTab()
			}
		}
	}
	
}

struct ProfileBody_Previews: PreviewProvider {
	
	static var previews: some View {
		VStack {
			ProfileMainContent()
				.environmentObject(Database())
			Spacer()
		}
	}
	
}
