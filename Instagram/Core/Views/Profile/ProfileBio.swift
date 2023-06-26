//
//  ProfileBio.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileBio: View {
	
	@EnvironmentObject var database: Database
	
	let rainbowColors: [Color] = [.red, .yellow, .mint]
	
	var isPrideMonth: Bool {
		let components = Calendar.current.dateComponents([.month], from: .now)
		return components.month! == 6
	}
	
	var body: some View {
		HStack {
			VStack(alignment: .leading, spacing: 3) {
				Text(database.current.name)
					.bold()
					.font(.subheadline)
				Text(database.current.bio)
					.font(.footnote)
				
				HStack {
					Text("#pride")
						.bold()
						.font(.footnote)
						.foregroundStyle(.linearGradient(
							colors: isPrideMonth ? rainbowColors : [.link],
							startPoint: .leading,
							endPoint: .trailing)
						)
						.padding(.bottom, 5)
				}
				.padding(.vertical, 5)
				
				HStack {
					Image(systemName: "link")
						.font(.callout)
						.bold()
					Button {
						// Link
					} label: {
						Text(database.current.bioLink ?? "")
							.font(.footnote)
					}
				}
				.foregroundColor(.link)
				.padding(.vertical, 5)
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
