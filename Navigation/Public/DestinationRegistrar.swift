//
//  DestinationRegistrar.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import Foundation

public protocol DestinationRegistrar {
    /// Adds a list of destinations to the main navigation system, allowing them to be navigable.
    /// - Parameters:
    ///     - destinations: An array of destinations to be made navigable in the app.
    func register(destinations: [DestinationDetails])
}
