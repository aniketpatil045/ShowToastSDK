//
//  ShowToasts.swift
//  ShowToastSDK
//
//  Created by Siddhesh Patil on 05/06/24.
//

import Foundation
import UIKit


public struct Toast {
    
    public static func showToast(message: String, font: UIFont, viewController: UIViewController) {
        let toastLabel = UILabel()
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds = true
        
        let maxWidthPercentage: CGFloat = 0.8
        let maxTitleSize = CGSize(width: viewController.view.frame.size.width * maxWidthPercentage, height: CGFloat.greatestFiniteMagnitude)
        let expectedSize = toastLabel.sizeThatFits(maxTitleSize)
        let labelWidth = min(expectedSize.width + 20, maxTitleSize.width)
        let labelHeight = expectedSize.height + 10

        toastLabel.frame = CGRect(x: (viewController.view.frame.size.width - labelWidth) / 2,
                                  y: (viewController.view.frame.size.height - labelHeight) / 2,
                                  width: labelWidth,
                                  height: labelHeight)
        
        viewController.view.addSubview(toastLabel)
        
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: { (isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }

    
    public static func showPrint(){
        print("In print function of toast SDK ...")
    }
}



