//
//  AlertActionBuilder.swift
//  SKUtilsSwift
//
//  Created by Mac on 25.04.18.
//  Copyright © 2016 Sergey Kostyan. All rights reserved.
//

import UIKit

public class AlertActionConfig {
    
    private(set) var title: String?
    private(set) var style: UIAlertActionStyle
    private(set) var handler: ((UIAlertAction) -> Void)?
    
    init(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

extension UIAlertAction {
    
    public static func build(from config: AlertActionConfig) -> UIAlertAction {
        return UIAlertAction(title: config.title, style: config.style, handler: config.handler)
    }
    
}
