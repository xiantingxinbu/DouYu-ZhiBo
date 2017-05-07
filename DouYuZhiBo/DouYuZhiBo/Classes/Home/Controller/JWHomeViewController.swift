//
//  JWHomeViewController.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/7.
//  Copyright © 2017年 wang jun. All rights reserved.
//

import UIKit
//设置UI界面
extension JWHomeViewController {
    func setUpUI() {
        self.view.backgroundColor = UIColor.brown
        setNavigationBar()
        
    }
    
    func setNavigationBar() {
        
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

class JWHomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        // Do any additional setup after loading the view.
    }
    
    
}
