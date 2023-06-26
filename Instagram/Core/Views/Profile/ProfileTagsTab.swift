//
//  ProfileTagsTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/20/23.
//

import SwiftUI

struct ProfileTagsTab: View {

	@State private var hasAnyTags: Bool = false

	var body: some View {
		VStack {
			
			if !hasAnyTags {
				VStack {
					Image(systemName: "tag.fill")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 80, height: 80)
						.shadow(radius: 2.5)
					Text("No Tags")
						.font(.title3)
						.bold()
						.padding(.top, 5)
					Text("Posts you've been tagged in will appear here.")
						.font(.callout)
						.padding(.top, 3)
				}
				.foregroundColor(.lightGray)
				.padding(.vertical, 50)
			}
			
			else {
				// Show reels
			}
			
		}
	}

}

struct ProfileTagsTabPreview: PreviewProvider {

  static var previews: some View {
    VStack {
      ProfileTagsTab()
    }
  }

}
