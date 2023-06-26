//
//  Color.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

extension Color {
	
	static let primaryText = Self("PrimaryTextColor")
	static let background = Self("BackgroundColor")
	static let secondaryBackground = Self("SecondaryBackgroundColor")
	static let link = Self("BlueLinkColor")
	static let lightGray = Self(uiColor: .systemGray4)
	static let systemBlue = Self(hue: 200/360, saturation: 1, brightness: 1)
	
}
