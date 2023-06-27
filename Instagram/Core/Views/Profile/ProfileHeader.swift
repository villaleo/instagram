//
//  ProfileHeader.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileHeader: View {
	
	@EnvironmentObject var database: Database
	
	var body: some View {
		Group {
			
			HStack(spacing: 55) {
				ProfilePhotoButton()
				HStack(spacing: 30) {
					VStack {
						Text(database.current.numPosts.truncate())
							.bold()
						Text("Posts")
							.font(.caption)
					}
					VStack {
						Text(database.current.numFollowers.truncate())
							.bold()
						Text("Followers")
							.font(.caption)
					}
					VStack {
						Text(database.current.numFollowing.truncate())
							.bold()
						Text("Following")
							.font(.caption)
					}
				}
			}
			.padding(.vertical, 10)
			.padding(.horizontal)
			
			ProfileBio()
				.padding(.horizontal)
			
			HStack {
				actionButton(label: "Edit profile")
				actionButton(label: "Share profile")
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
			
		}
	}
	
	func actionButton(label: String) -> some View {
		Button {
			// Edit profile
		} label: {
			Text(label)
				.fontWeight(.semibold)
				.font(.footnote)
				.frame(width: 155, height: 35)
				.background(Color.secondaryBackground)
				.cornerRadius(10)
		}
	}
	
}

struct ProfileHeader_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileHeader()
			.environmentObject(Database())
			.foregroundColor(.primaryText)
	}
	
}
