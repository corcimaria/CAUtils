//
//  File.swift
//  
//
//  Created by Anatolie on 12/17/19.
//

import Foundation
import UIKit

extension Array where Element == CGFloat {
    public func sum() -> CGFloat{
        self.reduce(0, +)
    }
}
