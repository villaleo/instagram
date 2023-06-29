//
//  ProfileContentSelectionPostsTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/15/23.
//

import SwiftUI
import Shimmer

struct ProfileCSPostsTab: View {
	
	@EnvironmentObject var database: Database
	
	private let columns = [
		GridItem(.flexible(), spacing: 2.5),
		GridItem(.flexible(), spacing: 2.5),
		GridItem(.flexible(), spacing: 2.5)
	]
	
	var body: some View {
		LazyVGrid(columns: columns, spacing: 2.5) {
			ForEach(database.current.posts) { post in
				Button {
					// View post
				} label: {
					Color.clear
						.aspectRatio(1, contentMode: .fit)
						.overlay {
							AsyncImage(url: post.photoURL) { image in
								image
									.resizable()
									.scaledToFill()
							} placeholder: {
								Rectangle()
									.fill(Color(uiColor: .lightGray))
									.shimmering(duration: 1)
									.aspectRatio(contentMode: .fit)
							}
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
