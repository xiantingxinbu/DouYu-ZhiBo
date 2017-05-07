//
//  JWPageTitleView.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/7.
//  Copyright © 2017年 wang jun. All rights reserved.
//

import UIKit

class JWPageTitleView: UIView {
  //1.定义属性
    private var titles:[String]
  //2.自定义构造函数
    init(frame:CGRect,titles:[String]) {
     self.titles = titles
     super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
