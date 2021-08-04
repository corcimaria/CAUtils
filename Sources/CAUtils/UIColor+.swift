//
//  File.swift
//  
//
//  Created by Anatolie on 12/17/19.
//

import Foundation
import UIKit

extension UIColor {
    /// color components value between 0 to 255
    public convenience init(r: Int, g: Int, b: Int, alpha: CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    static let customRed: UIColor = UIColor(r: 255, g: 1, b: 1)
    
    var hexString: String {
            let cgColorInRGB = cgColor.converted(to: CGColorSpace(name: CGColorSpace.sRGB)!, intent: .defaultIntent, options: nil)!
            let colorRef = cgColorInRGB.components
            let r = colorRef?[0] ?? 0
            let g = colorRef?[1] ?? 0
            let b = ((colorRef?.count ?? 0) > 2 ? colorRef?[2] : g) ?? 0
            let a = cgColor.alpha

            var color = String(
                format: "#%02lX%02lX%02lX",
                lroundf(Float(r * 255)),
                lroundf(Float(g * 255)),
                lroundf(Float(b * 255))
            )

            if a < 1 {
                color += String(format: "%02lX", lroundf(Float(a * 255)))
            }

            return color
        }
    
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

extension UIColor {
    class var random: UIColor {
        return UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1.0)
    }
}
