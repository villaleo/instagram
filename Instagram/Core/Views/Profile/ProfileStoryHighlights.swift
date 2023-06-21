//
//  ProfileStoryHighlights.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileStoryHighlights: View {
	
	@EnvironmentObject var database: Database
	
	var body: some View {
		ScrollView(.horizontal) {
			HStack(spacing: 20) {
				ForEach(database.userProfile.highlights) { highlight in
					VStack {
						Button {
							// Story highlight
						} label: {
							ZStack {
								Circle()
									.stroke(lineWidth: 1.5)
									.foregroundColor(.lightGray)
									.frame(width: 75, height: 75)
									.padding(1)
								Image(highlight.imageName)
									.resizable()
									.frame(width: 65, height: 65)
									.clipShape(Circle())
							}
						}
						Text(highlight.highlightName)
							.font(.subheadline)
					}
				}
				VStack {
					Button {
						// New highlight
					} label: {
						ZStack {
							Circle()
								.stroke(lineWidth: 1)
								.foregroundColor(.lightGray)
								.frame(width: 75, height: 75)
								.padding(1)
							Image(systemName: "plus")
								.resizable()
								.frame(width: 20, height: 20)
								.foregroundColor(.primaryText)
						}
					}
					Text("New")
						.font(.subheadline)
				}
			}
		}
	}
	
}

struct ProfileStoryHighlights_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileStoryHighlights()
			.environmentObject(Database())
	}
	
}
