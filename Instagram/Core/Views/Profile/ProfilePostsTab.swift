//
//  ProfilePostsTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/15/23.
//

import SwiftUI

struct ProfilePostsTab: View {
	
	@EnvironmentObject var database: Database
	
	let postGridDimensions = CGFloat(UIScreen.main.bounds.width / 3)
	
	var body: some View {
		HStack {
			Grid(horizontalSpacing: 2.5, verticalSpacing: 2.5) {
				ForEach(database.userProfile.posts.into3x3(), id: \.self) { row in
					GridRow {
						ForEach(row) { cell in
							Button {
								// View post
							} label: {
								Color.clear
									.aspectRatio(1, contentMode: .fit)
									.overlay(
										Image(cell.imageName)
											.resizable()
											.scaledToFill()
									)
									.clipShape(Rectangle())
									.frame(width: postGridDimensions - 2.5, height: postGridDimensions - 2.5)
							}
						}
					}
				}
			}
		}
		
	}
	
}

struct ProfilePostsTab_Previews: PreviewProvider {
	
	static var previews: some View {
		VStack {
			ProfilePostsTab()
				.environmentObject(Database())
		}
	}
	
}
