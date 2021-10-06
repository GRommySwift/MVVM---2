//
//  ViewModel.swift
//  MVVM - 2
//
//  Created by Roman Holovai on 06.10.2021.
//

import Foundation


class ViewModel: TableViewViewModelType {
   
    var profiles = [
        Profile(name: "Roman", secondName: "Holovai", age: 27),
        Profile(name: "Sanya", secondName: "Lol", age: 23),
        Profile(name: "Slava", secondName: "Marlov", age: 20)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
      
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[IndexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
}
