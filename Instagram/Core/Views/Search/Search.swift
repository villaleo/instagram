//
//  Search.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/26/23.
//

import SwiftUI

struct Search: View {

	var body: some View {
		NavigationStack {
			content
				.foregroundColor(.primaryText)
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Text("")
					}
				}
		}
	}
	
	var content: some View {
		Text("Hello, World!")
	}

}

struct SearchPreview: PreviewProvider {

  static var previews: some View {
    VStack {
      Search()
    }
  }

}
