//
//  TableViewModelType.swift
//  MVVM - 2
//
//  Created by Roman Holovai on 06.10.2021.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int

    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
    
    
}
