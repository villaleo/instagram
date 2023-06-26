//
//  ProfileReelsTab.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/20/23.
//

import SwiftUI

struct ProfileReelsTab: View {
	
	@State private var hasPostedReels: Bool = false

  var body: some View {
		VStack {
			
			if !hasPostedReels {
				VStack {
					Image(systemName: "play.square.fill")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 80, height: 80)
						.shadow(radius: 2.5)
					Text("No Reels")
						.font(.title3)
						.bold()
						.padding(.top, 5)
					Text("Reels you post will be listed here.")
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

struct ProfileReelsTabPreview: PreviewProvider {

  static var previews: some View {
    VStack {
      ProfileReelsTab()
    }
  }

}
