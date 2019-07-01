//
//  UIViewExtension.swift
//  FloatbuttonDemo
//
//  Created by Admin on 01/07/19.
//  Copyright © 2019 Vaishnavi Sasane. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    private struct AssociatedKeys {
        static  var CustomView = "nsh_CustomView"
    }
    
    var customView: UIView? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.CustomView) as? UIView
        }
        
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedKeys.CustomView,
                    newValue as UIView?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }
    
    private struct AssociatedButtonKeys {
        static var ContinueBarBtn = "nsh_ContinueBarBtn"
    }
    
    var continueBarBtn: UIButton? {
        get {
            return objc_getAssociatedObject(self, &AssociatedButtonKeys.ContinueBarBtn) as? UIButton
        }
        
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(
                    self,
                    &AssociatedButtonKeys.ContinueBarBtn,
                    newValue as UIButton?,
                    .OBJC_ASSOCIATION_RETAIN_NONATOMIC
                )
            }
        }
    }
    
    
    
    func addInputAccessoryView(textField:UITextField, title: String, target: Any, selector: Selector) {
        
        customView =  UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 50))
        continueBarBtn =  UIButton.init(frame:  CGRect(x: 0, y: 0, width: (customView?.frame.size.width)!, height: 50))
        customView?.backgroundColor = UIColor.white
        continueBarBtn?.setTitle(title, for: .normal)
        continueBarBtn?.titleLabel?.font = UIFont.init(name: "System", size: 18.0)
        continueBarBtn?.backgroundColor = UIColor.blue
        continueBarBtn?.isEnabled = true
        continueBarBtn?.alpha = 0.5
        continueBarBtn?.addTarget(target, action: selector, for: .touchUpInside)
        customView?.addSubview(continueBarBtn!)
        textField.inputAccessoryView = customView
    }
    
}



