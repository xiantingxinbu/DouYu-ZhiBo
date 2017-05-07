//
//  UIButtonItem_extension.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/7.
//  Copyright © 2017年 wang jun. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    //1.类方法
    class func createButtonItem (imageName:String,highImageName:String,size:CGSize)->UIBarButtonItem {
        let button = UIButton()
        button.setImage(UIImage(named:imageName),for:.normal)
        button.setImage(UIImage(named:highImageName),for:.highlighted)
        button.sizeToFit()
        
        return UIBarButtonItem(customView:button)
    }
    //2.便利构造器方法
    convenience init(imageName:String,highImageName:String = "",size:CGSize) {
        let button = UIButton()
        button.setImage(UIImage(named:imageName),for:.normal)
        if highImageName != "" {
           button.setImage(UIImage(named:highImageName),for:.highlighted) 
        }
        
        button.sizeToFit()
        self.init(customView: button)
    }
    
}
