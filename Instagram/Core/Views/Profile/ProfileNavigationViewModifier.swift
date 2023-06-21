//
//  ProfileNavigationViewModifier.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ProfileNavigationViewModifier: ViewModifier {
	let username: UserProfile.Username
	
	func body(content: Content) -> some View {
		content
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Button {
						// Show switch account sheet
					} label: {
						HStack {
							Image(systemName: "lock")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 15, height: 15)
								.fontWeight(.semibold)
							Text(username.description)
								.bold()
								.font(.title2)
							Image(systemName: "chevron.down")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 10, height: 10)
								.fontWeight(.semibold)
						}
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						// Show create sheet
					} label: {
						Image(systemName: "plus.app")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 22, height: 22)
					}
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					Button {
						// Show account options
					} label: {
						Image(systemName: "line.3.horizontal")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: 22, height: 22)
					}
				}
			}
			.toolbarBackground(.background, for: .navigationBar)
	}
	
}
