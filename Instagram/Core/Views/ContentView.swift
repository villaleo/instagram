//
//  ContentView.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

// MARK: - ContentView

/// Main view of the App. Handles which tabs to display based on selected screen tab.
struct ContentView: View {
	
	@State private var selectedScreenTab = ScreenTab.profile
	private var screenNavBarOffset: CGFloat { (UIScreen.main.bounds.height / 2) - 70 }
		
	var body: some View {
		NavigationStack {
			ZStack {
				switch selectedScreenTab {
				case .home:
					Home()
				case .search:
					Search()
				case .create:
					Create()
				case .reels:
					Reels()
				case .profile:
					ProfileView()
				}
				screenNavBar
					.offset(y: screenNavBarOffset)
			}
		}
	}
	
	/// Bottom navigation bar for the App. Switches content based on selected tab.
	var screenNavBar: some View {
		HStack {
			ForEach(ScreenTab.allCases) { tab in
				Spacer()
				Button {
					withAnimation(.spring()) {
						selectedScreenTab = tab
					}
				} label: {
					Image(systemName: tab.systemImageName)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 25, height: 25)
						.fontWeight(tab == selectedScreenTab ? .semibold : .regular)
						.scaleEffect(tab == selectedScreenTab ? 1.25 : 1)
				}

				Spacer()
			}
		}
		.padding(.vertical)
		.padding(.bottom, 20)
		.foregroundColor(.primaryText)
		.background(
			Rectangle()
				.fill(Color.background)
				.shadow(radius: 1.5)
		)
	}
	
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
	
	static var previews: some View {
		ContentView()
			.environmentObject(Database())
	}
	
}
