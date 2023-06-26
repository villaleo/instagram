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
					EmptyView()
				case .search:
					EmptyView()
				case .create:
					EmptyView()
				case .reels:
					EmptyView()
				case .profile:
					Profile()
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
		.padding(.bottom)
		.foregroundColor(.black)
		.background(
			Rectangle()
				.fill(.white)
				.shadow(radius: 1)
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
