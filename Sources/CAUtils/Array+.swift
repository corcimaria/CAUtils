//
//  File.swift
//  
//
//  Created by Anatolie on 12/17/19.
//

import Foundation

extension Array where Element == CGFloat {
    func sum() -> CGFloat{
        self.reduce(0, +)
    }
}
