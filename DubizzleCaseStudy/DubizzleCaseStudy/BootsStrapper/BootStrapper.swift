//
//  BootStrapper.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit

// MARK: A Struct Is Used Here To Get Control and Start The App Programtically
struct Bootstrapper {
    
    var window: UIWindow
    static var instance: Bootstrapper?
    
    private init(window: UIWindow) {
        self.window = window
    }
    
    static func initialize(_ launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) {
        instance = Bootstrapper(window: makeNewWindow())
        instance!.bootstrap()
    }
    
    mutating func bootstrap() {
        // MARK: /* A Setup View Controller Is Shown After Splash To Download Remote JSON, Meta Or Any Other Remote Data Required By The App To Run */
        showSetupView()
        window.makeKeyAndVisible()
    }
    
    // MARK: Can Be Used As Decision Point To Show Onboarding, Login, Home, etc.
    static func startAppAfterSetup() {
        instance!.showHome()
    }
}

extension Bootstrapper {
    
    private static func makeNewWindow() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.backgroundColor = .white
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.window = window
        }
        return window
    }
    
    private func showSetupView() {
    }
    
    private func showHome() {
    }
}

