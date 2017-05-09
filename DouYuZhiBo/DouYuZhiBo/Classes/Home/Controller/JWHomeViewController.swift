//
//  JWHomeViewController.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/7.
//  Copyright © 2017年 wang jun. All rights reserved.
//

import UIKit

class JWHomeViewController: UIViewController {
    //MARK:-懒加载属性
    lazy var pageTitleView : JWPageTitleView = {
        let titleArray = ["推荐","手游","游戏","趣玩","创意"]
        let titleFrame = CGRect(x:0,y:60,width:self.view.frame.size.width,height:50)
        let pageTitleView = JWPageTitleView.init(frame: titleFrame,titles:titleArray)
        pageTitleView.backgroundColor = UIColor.white
        
        return pageTitleView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    
}

//MARK:-设置UI界面
extension JWHomeViewController {
    func setUpUI() {
        //0.不需要调整scrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        //1.设置导航栏
        setNavigationBar()
        //2.设置titleView
        self.view.addSubview(pageTitleView)
    }
    //MARK:-设置导航条
    func setNavigationBar() {
        //0.设置导航条背景色
        navigationController?.navigationBar.barTintColor = UIColor.white
        let size = CGSize(width:40,height:40)
        //1.左导航按钮
        let leftButtonItem = UIBarButtonItem(imageName: "logo", highImageName: "", size: size)
        
        navigationItem.leftBarButtonItem = leftButtonItem
        //2.右导航按钮
        let scanButtonItem =
            UIBarButtonItem(imageName: "Image_scan", highImageName:"Image_scan_click", size: size)
        let historyButtonItem = UIBarButtonItem(imageName: "image_my_history", highImageName:"Image_my_history_click", size: size)
        
        let searchButtonItem = UIBarButtonItem(imageName: "btn_search", highImageName:"btn_search_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyButtonItem,searchButtonItem,scanButtonItem]
    }
    
}
