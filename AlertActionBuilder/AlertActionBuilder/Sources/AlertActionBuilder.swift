//
//  AlertActionBuilder.swift
//  SKUtilsSwift
//
//  Created by Mac on 25.04.18.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

open class AlertActionConfig {
    
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
    
    static func build(from config: AlertActionConfig) -> UIAlertAction {
        return UIAlertAction(title: config.title, style: config.style, handler: config.handler)
    }
    
}
