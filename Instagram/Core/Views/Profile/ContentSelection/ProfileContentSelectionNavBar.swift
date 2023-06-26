//
//  ProfileContentSelectionNavBar.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import SwiftUI
import CoreGraphics

struct ProfileCSNavBar: View {
	
	@Binding var selectedTab: ProfileTab
	@State private var tabIndicatorOffset: CGSize = .zero

	let tabIndicatorWidth = UIScreen.main.bounds.width / 3
	
	var body: some View {
		HStack(spacing: 0) {
			ForEach(ProfileTab.allCases) { tab in
				Button {
					withAnimation(.spring().speed(2)) {
						selectedTab = tab
					}
				} label: {
					VStack {
						Image(systemName: tab.imageIconName)
							.resizable()
							.frame(width: 22, height: 22)
							.foregroundColor(selectedTab == tab ? .primaryText : .gray)
							.padding(.bottom, 3)
						Divider()
							.frame(height: selectedTab == tab ? 1.5 : 1)
							.overlay(Color.lightGray)
					}
				}
			}
		}
			.foregroundColor(.gray)
			.overlay {
				Divider()
					.frame(width: tabIndicatorWidth, height: 1.5)
					.overlay(Color.primaryText)
					.offset(x: -tabIndicatorWidth + (tabIndicatorWidth * CGFloat(selectedTab.rawValue)), y: 15)
			}
	}
	
}

struct ProfileTabBar_Previews: PreviewProvider {
	
	static var previews: some View {
		ProfileCSNavBar(selectedTab: .constant(.posts))
	}
	
}
