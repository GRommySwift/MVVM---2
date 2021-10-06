//
//  DetailViewModelType.swift
//  MVVM - 2
//
//  Created by Roman Holovai on 06.10.2021.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
