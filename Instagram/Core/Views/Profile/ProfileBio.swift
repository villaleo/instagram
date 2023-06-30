//
//  ProfileBio.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI
import WebKit

struct ProfileBio: View {
	
	@EnvironmentObject var database: Database

	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 3) {
				Text(database.current.name)
					.bold()
					.font(.subheadline)
				Text(database.current.bio)
					.font(.footnote)
				
				if let url = database.current.profileUrl {
					HStack {
						Image(systemName: "link")
							.font(.callout)
							.bold()
						Link(destination: url) {
							Text(url.description)
								.font(.footnote)
						}
					}
					.foregroundColor(.link)
					.padding(.vertical, 5)
				}
				
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
