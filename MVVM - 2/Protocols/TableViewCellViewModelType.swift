//
//  TableViewCellViewModelType.swift
//  MVVM - 2
//
//  Created by Roman Holovai on 06.10.2021.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
