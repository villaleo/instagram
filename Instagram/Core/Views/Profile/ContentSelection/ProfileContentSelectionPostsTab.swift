//
//  ProfileContentSelectionPostsTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/15/23.
//

import SwiftUI

struct ProfileCSPostsTab: View {
	
	@EnvironmentObject var database: Database
	
	private let columns = [
		GridItem(.flexible(), spacing: 2.5),
		GridItem(.flexible(), spacing: 2.5),
		GridItem(.flexible(), spacing: 2.5)
	]
	
	var body: some View {
		LazyVGrid(columns: columns, spacing: 2.5) {
			ForEach(database.userProfile.posts) { post in
				Button {
					// View post
				} label: {
					Color.clear
						.aspectRatio(1, contentMode: .fit)
						.overlay {
							Image(post.imageName)
								.resizable()
								.scaledToFill()
						}
						.clipShape(Rectangle())
				}
			}
		}
	}
	
}

struct ProfilePostsTab_Previews: PreviewProvider {
	
	static var previews: some View {
		VStack {
			ProfileCSPostsTab()
				.environmentObject(Database())
		}
	}
	
}
