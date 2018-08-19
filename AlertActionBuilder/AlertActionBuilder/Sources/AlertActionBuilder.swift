//
//  AlertActionBuilder.swift
//  SKUtilsSwift
//
//  Created by Mac on 25.04.18.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

public protocol AlertActionConfigProvider {
    
    var title: String? { get }
    var style: UIAlertActionStyle { get }
    var handler: ((UIAlertAction) -> Void)? { get }
    
}

open class AlertActionConfig: AlertActionConfigProvider {
    
    public private(set) var title: String?
    public private(set) var style: UIAlertActionStyle
    public private(set) var handler: ((UIAlertAction) -> Void)?
    
    public init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

public extension UIAlertAction {
    
    static func build(from config: AlertActionConfigProvider) -> UIAlertAction {
        return UIAlertAction(title: config.title, style: config.style, handler: config.handler)
    }
    
}
