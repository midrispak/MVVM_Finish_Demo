//
//  String+Extension.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import Foundation

extension String {
    func dateWithFormat(dateFormat: String) -> Date {
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.date(from: self)!
    }
}
