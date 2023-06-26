//
//  ProfileMainContent.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/19/23.
//

import SwiftUI

struct ProfileMainContent: View {
	
	@State private var selectedTab = ProfileTab.posts
	
	var body: some View {
		VStack(spacing: 2.5) {
			ProfileCSNavBar(selectedTab: $selectedTab)
			
			switch selectedTab {
			case .posts:
				ProfileCSPostsTab()
			case .reels:
				ProfileCSReelsTab()
			case .tags:
				ProfileCSTagsTab()
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
