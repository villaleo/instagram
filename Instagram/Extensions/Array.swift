//
//  Array.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/14/23.
//

import Foundation

extension Array<UserPost> {
	
	func into3x3() -> [Self] {
		if self.count < 3 {
			return .init(arrayLiteral: self)
		}
		
		var result: [Self] = []
		var startIndex = 0
		
		for currentIndex in 1..<self.count {
			if (currentIndex + 1) % 3 == 0 {
				result.append(.init(self[startIndex...currentIndex]))
				startIndex = currentIndex
			}
		}
		
		if startIndex != self.count - 1 {
			result.append(.init(self[(startIndex + 1)...]))
		}
		
		return result
	}
	
}
