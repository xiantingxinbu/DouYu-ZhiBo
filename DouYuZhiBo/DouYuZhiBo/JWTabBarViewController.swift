//
//  JWTabBarViewController.swift
//  DouYuZhiBo
//
//  Created by wang jun on 2017/5/6.
//  Copyright © 2017年 wang jun. All rights reserved.
//

import UIKit

class JWTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //修改tabBar
        UITabBar.appearance().tintColor = UIColor.orange
        UITabBar.appearance().barTintColor = UIColor.white
        //添加子视图
        addChildViewController(storyBoardName: "Home")
        addChildViewController(storyBoardName: "Live")
        addChildViewController(storyBoardName: "Attention")
        addChildViewController(storyBoardName: "User")
        // Do any additional setup after loading the view.
    }
    private func addChildViewController(storyBoardName: String) {
        //1.获取根试图控制器
        let childVC = UIStoryboard(name:storyBoardName,bundle:nil).instantiateInitialViewController()
        
        //2.添加子视图
        addChildViewController(childVC!)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
