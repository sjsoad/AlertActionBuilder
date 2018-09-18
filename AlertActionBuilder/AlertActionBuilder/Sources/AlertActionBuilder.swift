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
    var style: UIAlertAction.Style { get }
    var handler: ((UIAlertAction) -> Void)? { get }

}

public class AlertActionConfig: AlertActionConfigProvider {
    
    public let title: String?
    public let style: UIAlertAction.Style
    public let handler: ((UIAlertAction) -> Void)?
    
    public init(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
}

public extension UIAlertAction {
    
    convenience init(with config: AlertActionConfigProvider) {
        self.init(title: config.title, style: config.style, handler: config.handler)
    }
    
}
