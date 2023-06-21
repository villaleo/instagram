//
//  ProfileBio.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileBio: View {
	
	@EnvironmentObject var database: Database
	
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 3) {
				Text(database.userProfile.name)
					.bold()
					.font(.subheadline)
				Text(database.userProfile.bio)
					.font(.footnote)
				HStack {
					Image(systemName: "link")
						.font(.callout)
						.bold()
					Button {
						// Link
					} label: {
						Text(database.userProfile.bioLink)
							.font(.footnote)
					}
				}
				.foregroundColor(.link)
				.padding(.vertical, 8)
			}
			Spacer()
		}
	}
	
}

struct ProfileBio_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileBio()
			.environmentObject(Database())
			.padding(.horizontal)
    }
	
}
