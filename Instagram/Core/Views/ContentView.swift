//
//  ContentView.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import SwiftUI

struct ContentView: View {
		
	var body: some View {
		Profile()
	}
	
}

struct ContentView_Previews: PreviewProvider {
	
	static var previews: some View {
		Profile()
			.environmentObject(Database())
	}
	
}
