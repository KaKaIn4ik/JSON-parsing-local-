//
//  Models.swift
//  JsonParsing
//
//  Created by Кунгурцев Эдуард Сергеевич on 07.10.2022.
//

import Foundation

struct Company: Codable {
	var count: Int
	var companyDescription: String
	var lostOfData: [Device]
}

struct Device: Codable {
	var name: String
	var modelNumber: String
	var countries: [String]
	var price: PriceInfo
	var year: Int
}

struct PriceInfo: Codable {
	var regions: [RegionPrice]
}

struct RegionPrice: Codable {
	var name: String
	var price: Int
}


