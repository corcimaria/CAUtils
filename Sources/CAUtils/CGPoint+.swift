//
//  File.swift
//  
//
//  Created by Anatolie on 12/17/19.
//

import UIKit

extension CGPoint {
    public func distance(to point: CGPoint) -> CGFloat {
        return sqrt(pow((point.x - x), 2) + pow((point.y - y), 2))
    }
    
    public func middle(to point:CGPoint) -> CGPoint {
        return CGPoint(x: (self.x + point.x) / 2, y: (self.y + point.y) / 2)
    }
    
    public func angle(to point:CGPoint) -> CGFloat {
        let deltaX = point.x - self.x
        let deltaY = point.y - self.y
        return atan2(deltaY, deltaX)
    }
}
