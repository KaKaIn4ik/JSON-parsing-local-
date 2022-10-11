//
//  ViewController.swift
//  JsonParsing
//
//  Created by Кунгурцев Эдуард Сергеевич on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
	
		guard let url = Bundle.main.url(
			forResource: "RawData",
			withExtension: "json"
		) else { return }
		
		do {
			let data = try Data(contentsOf: url)
			let decoder = JSONDecoder()
			let jsonData = try decoder.decode(Company.self, from: data)
			print(jsonData.companyDescription.count)
		} catch {
			print("error: \(error)")
		}
		
	}
}

