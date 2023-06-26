//
//  Profile.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct Profile: View {
	
	@EnvironmentObject var database: Database
	@State private var selectedProfileTab = ProfileTab.posts
	@State private var selectedScreenTab = ScreenTab.profile
	
	private var screenNavBarOffset: CGFloat { (UIScreen.main.bounds.height / 2) - 70 }
	
	var screenNavBar: some View {
		HStack {
			ForEach(ScreenTab.allCases) { tab in
				Spacer()
				Button {
					// Switch screen
					withAnimation(.spring()) {
						selectedScreenTab = tab
					}
				} label: {
					Image(systemName: ScreenTab.imageName(for: tab, fill: tab == selectedScreenTab))
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 30, height: 30)
						.fontWeight(.light)
				}

				Spacer()
			}
		}
		.padding(.vertical)
		.padding(.bottom)
		.background(
			Rectangle()
				.fill(.white)
				.shadow(radius: 1)
		)
	}
	
	var body: some View {
		NavigationStack {
			ZStack {
				content
				screenNavBar
					.offset(y: screenNavBarOffset)
			}
			.modifier(ProfileNavigationViewModifier(username: database.userProfile.username))
		}
		.foregroundColor(.primaryText)
	}
	
	var content: some View {
		ScrollView {
			VStack(spacing: 2.5) {
				
				HStack(spacing: 55) {
					ProfilePhotoButton()
					ProfileOverview()
				}
					.padding(.vertical, 10)
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
					.padding(.vertical)
				
				VStack {}
					.padding(15)
			}
		}
		.scrollIndicators(.hidden)
	}
	
}

struct Profile_Previews: PreviewProvider {
	
	static var previews: some View {
		Profile()
			.environmentObject(Database())
	}
	
}
