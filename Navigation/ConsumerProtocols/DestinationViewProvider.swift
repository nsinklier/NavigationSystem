//
//  DestinationViewProvider.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import UIKit

protocol DestinationViewProvider {
    /// Provides an instance of the viewController associated with the provided key.
    /// - Parameters:
    ///     - key: String used to identify destination viewController.
    /// - Returns: Instance of desired ViewController or nil if it doesn't exist.
    func makeViewFor(key: String) -> UIViewController?
}
