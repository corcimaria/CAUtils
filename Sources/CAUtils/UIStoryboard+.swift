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
        case main = "Main"
    }
}
/*extension UIStoryboard {
    enum Name : String {
        case main = "Main"
        case settings = "Settings"
        case pulse_rate = "PulseRate"
        case exercises = "Exercises"
        case relax = "Relax"
        case get_started = "GetStarted"
        case shop = "Shop"
        case diary = "Diary"
        case statistics = "Statistics"
        case news = "News"
        case reminders = "Reminders"
        
        case mainIphone = "MainIphone"
        case mainIpad = "MainIpad"
    }
}*/

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

