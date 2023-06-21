//
//  Profile.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct Profile: View {
	
	@EnvironmentObject var database: Database
	@State private var selectedTab = ProfileTab.posts
	
	let postGridDimensions = CGFloat(UIScreen.main.bounds.width / 3)
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack(spacing: 2.5) {
					
					HStack(spacing: 55) {
						ProfilePhotoButton()
						ProfileOverview()
					}
						.padding(.top, 5)
						.padding(.horizontal)
					
					ProfileBio()
						.padding(.horizontal)
					
					HStack {
						ProfileActionButton(label: "Edit profile")
						ProfileActionButton(label: "Share profile")
						Button {
							// Discover new people
						} label: {
							Image(systemName: "person.badge.plus")
								.frame(width: 35, height: 35)
								.background(Color.secondaryBackground)
								.cornerRadius(10)
						}
					}
					.padding(.horizontal)
					
					ProfileStoryHighlights()
						.scrollIndicators(.hidden)
						.scrollDisabled(database.userProfile.highlights.count < 3)
						.padding(.horizontal)
						.padding(.top, 10)

					ProfileMainContent()
						.padding(.top)
					
				}
			}
			.modifier(ProfileNavigationViewModifier(username: database.userProfile.username))
		}
		.foregroundColor(.primaryText)
	}
	
}

struct Profile_Previews: PreviewProvider {
	
	static var previews: some View {
		Profile()
			.environmentObject(Database())
	}
	
}
