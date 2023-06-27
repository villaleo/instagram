//
//  Database.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation

class Database: ObservableObject {
	
	@Published var users: [Profile] = deserialize(from: "userData.json")
	var current: Profile { users[2] }
	
}

func deserialize<T>(from filename: String) -> T where T: Decodable {
	guard let fileURL =  Bundle.main.url(forResource: filename, withExtension: nil) else {
		fatalError("Fatal: Couldn't locate file `\(filename)` in the main bundle.")
	}
	
	guard let fileData = try? Data(contentsOf: fileURL) else {
		fatalError("Fatal: Couldn't load data from `\(filename)`.")
	}
	
	let decoder = JSONDecoder()
	guard let result = try? decoder.decode(T.self, from: fileData) else {
		fatalError("Fatal: Unable to decode `\(filename)` into `\(T.self).`")
	}
	
	return result
}
