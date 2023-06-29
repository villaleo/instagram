//
//  ProfilePhotoButton.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Shimmer
import SwiftUI

struct ProfilePhotoButton: View {
	
	@EnvironmentObject var database: Database
	@State private var hasStoryPost = true
	
	var body: some View {
		Button {
			// Show photos library to post to story
		} label: {
			AsyncImage(url: database.current.photoURL) { image in
				image
					.resizable()
					.aspectRatio(1, contentMode: .fit)
					.clipShape(Circle())
			} placeholder: {
				Circle()
					.fill(Color(uiColor: .lightGray))
					.shimmering(duration: 1)
					.aspectRatio(contentMode: .fit)
			}
			.overlay {
				if hasStoryPost {
					Circle()
						.stroke(
							.linearGradient(
								colors: [.purple, .pink, .yellow],
								startPoint: .topTrailing,
								endPoint: .bottomLeading
							),
							lineWidth: 2
						)
						.scaleEffect(1.1)
				}
			}
			.overlay {
				Circle()
					.stroke(Color.lightGray, lineWidth: 1.5)
				Image(systemName: "plus")
					.fontWeight(.semibold)
					.foregroundColor(.white)
					.background(
						Circle()
							.foregroundColor(.systemBlue)
							.frame(width: 25, height: 25)
							.overlay {
								Circle()
									.stroke(Color.background, lineWidth: 2)
							}
					)
					.offset(x: 37, y: 37)
			}
			.frame(width: 100, height: 100)
		}
	}
	
}

struct ProfilePhotoButton_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfilePhotoButton()
			.environmentObject(Database())
	}
	
}
