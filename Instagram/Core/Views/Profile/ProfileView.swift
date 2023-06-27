//
//  ProfileView.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

// MARK: - NavHeader

/// The navigation bar seen at the top of the view. Shows the username and two buttons: one to create a new
/// post, and the other to view settings and other options.
fileprivate struct NavHeader: ViewModifier {
	
	let username: String
	
	func body(content: Content) -> some View {
		content
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button {
						// Show switch account sheet
					} label: {
						HStack {
							Image(systemName: "lock")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 15, height: 15)
								.fontWeight(.semibold)
							Text(username)
								.bold()
								.font(.title2)
							Image(systemName: "chevron.down")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 10, height: 10)
								.fontWeight(.semibold)
						}
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						// Show create sheet
					} label: {
						Image(systemName: "plus.app")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 22, height: 22)
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						// Show account options
					} label: {
						Image(systemName: "line.3.horizontal")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 22, height: 22)
					}
				}
			}
			.toolbarBackground(.background, for: .navigationBar)
	}
	
}

// MARK: - ProfileView

/// The parent view for the Profile screen tab.
struct ProfileView: View {
	
	@EnvironmentObject var database: Database
	@State private var selectedProfileTab = ProfileTab.posts
	
	var body: some View {
		NavigationStack {
			content
				.modifier(NavHeader(username: database.current.username))
				.foregroundColor(.primaryText)
		}
	}
	
	/// Main content of the Profile view.
	var content: some View {
		ScrollView {
			VStack(spacing: 2.5) {
				ProfileHeader()

				ProfileMainContent()
					.padding(.vertical)
					
				VStack {}
					.padding(15)
			}
		}
		.scrollIndicators(.hidden)
	}
	
}

// MARK: - Previews

struct ProfileView_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileView()
			.environmentObject(Database())
	}
	
}
