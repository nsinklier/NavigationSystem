//
//  DestinationDetails.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import UIKit

public final class DestinationDetails {
    
    init(viewKey: String, viewProviderKey: String, root: DestinationDetails? = nil, modalPresentationStyle: UIModalPresentationStyle? = nil, tabIndex: Int? = nil, dynamicArgs: Dictionary<AnyHashable, Any>? = nil) {
        self.viewKey = viewKey
        self.viewProviderKey = viewProviderKey
        self.root = root
        self.modalPresentationStyle = modalPresentationStyle
        self.tabIndex = tabIndex
        self.dynamicArgs = dynamicArgs
    }
    
    /// The key used to obtain the view from the viewProvider
    let viewKey: String
    
    /// The key identifying the viewProvider
    let viewProviderKey: String
    
    /// The destinationDetails of the view from which to display the intended destination, otherwise the front most viewController is used
    /// - Note: This can be used for things like chaining to set up a view hierarchy, splitView management,...
    let root: DestinationDetails?
    
    /// Assigns the desired UIModalPresentationStyle to the destination, if required
    let modalPresentationStyle: UIModalPresentationStyle?
    
    /// Used to determine if the destination should be allowed on top of an existing modal
    /// - Note: All modals are dismissed by default.
    var shouldDismissModals: Bool = true
    
    /// Index of the tab, only if a specific tab is required for the destination
    let tabIndex: Int?
    
    /// Parameters to be passed to the destination after initialization, if additional parameters are required
    /// - Note: The destination must conform to the DynamicDestination protocol
    var dynamicArgs: Dictionary<AnyHashable, Any>?
}
