//
//  ViewModel.swift
//  MVVM - 2
//
//  Created by Roman Holovai on 06.10.2021.
//

import Foundation


class ViewModel: TableViewViewModelType {
   
    private var selectedIndexPath: IndexPath?
    
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
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
    
}
