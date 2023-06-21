//
//  Database.swift
//  Instagram
//
//  Created by Leonardo Villalobos on 6/13/23.
//

import Foundation

class Database: ObservableObject {
	
	@Published var userProfile: UserProfile = .init(
		name: "Leonardo Villalobos",
		username: .init("villaleobos"),
		bio: "Hey there! I'm a software engineer living in California 🐻. #pride ",
		bioLink: "github.com/villaleo",
		numPosts: 122,
		numFollowers: 23587,
		numFollowing: 193274,
		highlights: [
			.init(highlightName: ".nature", imageName: "NatureStoryThumbnail"),
			.init(highlightName: ".summer22", imageName: "Summer22StoryThumbnail")
		],
		posts: [
			.init(
				locationName: "Salinas Sports Complex",
				imageName: "Post18",
				caption: "Graduation has been the best day of my life ❤️ I'm grateful for my friends " +
								 "and family for being very supportive and accepting me for who I am 🫶🏼 " +
								 "I love you all!"
			),
			.init(
				locationName: "California State University, Monterey Bay",
				imageName: "Post17",
				usersLiked: [.init("jappleseed")],
				caption: "It's ubelieveable that after 3 short years, I'm completely finished with " +
								 "school! 📚🧡 I had the opportunity to work with amazing people on an awesome " +
								 "project utilizing OpenAI 🧠 Next up: finding a job!"
			),
			.init(
				locationName: "Fort Ord",
				imageName: "Post16",
				caption: "The last time we hiked here together was when we all met in person for the " +
								 "first time 💚"
			),
			.init(
				locationName: "Alcatraz Federal Prison",
				imageName: "Post15",
				caption: "Alcatraz trip today 🥰"
			),
			.init(
				locationName: "Mission San Juan Bautista",
				imageName: "Post14",
				caption: "From when I went to San Juan Bautista ⛪️🧡"
			)
		]
	)
	
}
