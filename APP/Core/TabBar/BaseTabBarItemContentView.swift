//
//  BaseTabBarItemContentView.swift
//  APP
//
//  Created by funny on 2018/9/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class BaseTabBarItemContentView: ESTabBarItemContentView {

    public var duration = 0.3

    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor(gray: 51, alpha: 0.5)
        highlightTextColor = UIColor(gray: 51)
        iconColor = UIColor(gray: 51, alpha: 0.5)
        highlightIconColor = UIColor(gray: 51)
        insets = UIEdgeInsets.init(top: 0, left: 0, bottom: 2, right: 0)
    }

    override func selectAnimation(animated: Bool, completion: (() -> ())?) {
        bounceAnimation()
        completion?()
    }

    override func reselectAnimation(animated: Bool, completion: (() -> ())?) {
        bounceAnimation()
        completion?()
    }

    override func updateLayout() {
        super.updateLayout()

        self.titleLabel.font = UIFont.systemFont(ofSize: 10)
    }

    func bounceAnimation() {
        let impliesAnimation = CAKeyframeAnimation(keyPath: "transform.scale")
        impliesAnimation.values = [1.0 ,1.4, 0.9, 1.15, 0.95, 1.02, 1.0]
        impliesAnimation.duration = duration * 2
        impliesAnimation.calculationMode = CAAnimationCalculationMode.cubic
        imageView.layer.add(impliesAnimation, forKey: nil)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
