//
//  Int64.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation
import KMBFormatter

extension Int64 {
	
	func truncate() -> String {
		return KMBFormatter().string(for: self) ?? "0"
	}
	
}
