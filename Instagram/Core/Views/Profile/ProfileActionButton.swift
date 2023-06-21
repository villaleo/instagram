//
//  ProfileActionButton.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileActionButton: View {
	
	let label: String
	
	var body: some View {
		Button {
			// Edit profile
		} label: {
			Text(label)
				.fontWeight(.semibold)
				.font(.footnote)
				.frame(width: 155, height: 35)
				.background(
					Color.secondaryBackground
				)
				.cornerRadius(10)
		}
	}
	
}

struct ProfileActionButton_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileActionButton(label: "Edit profile")
			.foregroundColor(.primaryText)
	}
	
}
