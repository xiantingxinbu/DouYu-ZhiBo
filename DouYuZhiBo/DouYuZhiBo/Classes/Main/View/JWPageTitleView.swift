//
//  JWPageTitleView.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/7.
//  Copyright © 2017年 wang jun. All rights reserved.
//
let kBottomLineH : CGFloat = 0.5
let kScrollLineH : CGFloat = 3

import UIKit

class JWPageTitleView: UIView {
  //1.定义属性
    var titles:[String]
    
    lazy var titleLabels : [UILabel] = [UILabel]()
 //MARK:-懒加载
    lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
    
        return scrollView
        
    }()
//MARK:-
    lazy var scrollLine : UIView = {
    let scrollLine = UIView()
        scrollLine.backgroundColor = UIColor.orange
        return scrollLine
    }()
  //2.自定义构造函数
    init(frame:CGRect,titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension JWPageTitleView {
    func setUI() {
        //1.添加scrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        
        //2.添加title对应的label
        setUpTitleLabel()
        //3.添加底线和添加滚动条
        setUpBottomLineAndScrollLine()
    }
    func setUpTitleLabel() {
        
        let labelW : CGFloat = 100
        let labelH : CGFloat = frame.height - kBottomLineH
        let labelY : CGFloat = 0
        
        for (index,title) in titles.enumerated() {
            
        let label = UILabel()
        
            //1.设置label属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16)
            label.textColor = UIColor.darkGray
            label.textAlignment = .center
            //2.设置label的frame
            let labelX : CGFloat = labelW * CGFloat(index)
            
            label.frame = CGRect(x:labelX,y:labelY,width:labelW,height:labelH)
            
            titleLabels.append(label)
            //3.将label添加到scrollView中
            scrollView.addSubview(label)
           
        }
        
        let totalLabelW = labelW * CGFloat (titleLabels.count)
        scrollView.contentSize = CGSize(width: totalLabelW, height: 50)
    }
    func setUpBottomLineAndScrollLine() {
        //1.添加底线
        let bottomView = UIView()
        bottomView.frame = CGRect(x:0,y:frame.height - kBottomLineH,width:frame.width,height:kBottomLineH)
        bottomView.backgroundColor = UIColor.gray
        addSubview(bottomView)
        //2.添加scrollLine
        scrollView.addSubview(scrollLine)
        //2.1获取第一个label
         guard let firstlabel = titleLabels.first else {return}
        firstlabel.textColor = UIColor.orange
        scrollLine.frame = CGRect(x: frame.origin.x, y: frame.height - kScrollLineH, width: firstlabel.frame.width, height: kScrollLineH)
        scrollView.backgroundColor = UIColor.cyan
    }

}
