//
//  UIViewExtension.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 15.09.23.
//

import Foundation
import UIKit

extension UIView {
    
    func roundElementByHeight() {
        layer.cornerRadius = frame.size.height / 2
        layer.masksToBounds = true
    }
    
    func roundElementEdges() {
        layer.cornerRadius = 30
        layer.masksToBounds = true
    }
    
    func setShadow() {
            let shadowContainerView = UIView(frame: frame)
            shadowContainerView.backgroundColor = UIColor.clear
            shadowContainerView.layer.cornerRadius = layer.cornerRadius
            shadowContainerView.layer.shadowColor = UIColor.black.cgColor
            shadowContainerView.layer.shadowOpacity = 0.5
            shadowContainerView.layer.shadowOffset = CGSize(width: -10, height: 10)
            shadowContainerView.layer.shadowRadius = 5
            
            superview?.insertSubview(shadowContainerView, belowSubview: self)
            shadowContainerView.addSubview(self)
        }
}
