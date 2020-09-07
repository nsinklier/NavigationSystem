//
//  DynamicDestination.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import Foundation

public protocol DynaimicDestination {
    /// Used to pass parameters required by the destination.
    /// - Parameters:
    ///     - args: Dynamic parameters provided to the navigation system for the destination.
    /// - Note: This only requires conformance if the destination needs to take parameters.
    func didNavigateWith(args: Dictionary<AnyHashable, Any>)
}
