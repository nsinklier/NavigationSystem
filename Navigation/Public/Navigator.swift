//
//  Navigator.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import Foundation

public protocol Navigator {
    /// Navigate to destination in the app based on the key mapping to a provided Destination.
    /// - Parameters:
    ///     - destinationKey: String used as the key to the find the saved destination.
    /// - Returns: True for success.
    func navigate(_ destinationKey: String) -> Bool
    
    /// Navigate to destination in the app based on the key mapping to a provided Destination.
    ///  - Parameters:
    ///     - destinationKey: String used as the key to the find the saved destination.
    ///     - args: Dictionary of parameters that will be passed to the destination upon initialization.
    /// - Note: In order to use args, the destination must conform to the DynamicDestination protocol.
    /// - Returns: True for success
    func navigate(_ destinationKey: String, args: Dictionary<AnyHashable, Any>) -> Bool
    
    /// Navigate to destination in the app based on the key mapping to a provided Destination.
    /// - Parameters:
    ///     - destinationKey: String used as the key to the find the saved destination.
    ///     - args: Dictionary of parameters that will be passed to the destination upon initialization.
    ///     - completion: Code to be performed once navigation as been completed.
    /// - Note: In order to use args, the destination must conform to the DynamicDestination protocol.
    /// - Returns: True for success
    func navigate(_ destinationKey: String, args: Dictionary<AnyHashable, Any>, completion: () -> Void) -> Bool
}
