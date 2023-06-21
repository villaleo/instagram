//
//  InstagramApp.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

@main
struct InstagramApp: App {
	
	@StateObject private var database = Database()
	
	var body: some Scene {
		WindowGroup {
			ContentView()
				.environmentObject(database)
		}
	}
	
}
