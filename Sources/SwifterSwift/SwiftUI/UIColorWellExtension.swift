//
//  UIColorWellExtension.swift
//  SwifterSwift
//
//  Created by SwifterSwift on 06/04/2024.
//  Copyright © 2024 SwifterSwift
//
#if os(iOS)
import SwiftUI

extension UIColorWell {

    override open func didMoveToSuperview() {
        super.didMoveToSuperview()

        if let uiButton = self.subviews.first?.subviews.last as? UIButton {
            UIColorWellHelper.helper.execute = {
                uiButton.sendActions(for: .touchUpInside)
            }
        }
    }
}

public class UIColorWellHelper: NSObject {
    public static let helper = UIColorWellHelper()
    public var execute: (() -> ())?
    @objc func handler(_ sender: Any) {
        execute?()
    }
}

#endif
