//
//  File.swift
//  
//
//  Created by Anatolie on 03.08.2021.
//

import Foundation
import UIKit


extension UIStoryboard {
    enum Name : String {
        case none = "None"
    }
}

extension UIViewController {
    static var storyboardID: String {
        return String(describing: self)
    }
}

protocol StoryboardLoadable: AnyObject {
    static var storyboardName: UIStoryboard.Name { get }
}

extension StoryboardLoadable where Self: UIViewController {
    static func loadFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName.rawValue, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: storyboardID) as! Self
        return controller
    }
}

