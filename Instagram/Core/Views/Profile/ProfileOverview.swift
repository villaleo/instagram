//
//  ProfileOverview.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileOverview: View {
	
	@EnvironmentObject var database: Database
	
	var body: some View {
		HStack(spacing: 30) {
			VStack {
				Text(database.userProfile.numPosts.truncate())
					.bold()
				Text("Posts")
					.font(.caption)
			}
			VStack {
				Text(database.userProfile.numFollowers.truncate())
					.bold()
				Text("Followers")
					.font(.caption)
			}
			VStack {
				Text(database.userProfile.numFollowing.truncate())
					.bold()
				Text("Following")
					.font(.caption)
			}
		}
	}
	
}

struct ProfileOverview_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileOverview()
			.environmentObject(Database())
	}
	
}
