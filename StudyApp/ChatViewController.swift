//
//  ChatViewController.swift
//  study-app
//
//  Created by 笹野　駿 on 2016/08/17.
//  Copyright © 2016年 shun-sasano. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var chatScrollView: UIScrollView!
        override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "top",style: .plain, target: self, action: #selector(ChatViewController.backToTop))
            
            let chatTableView:ChatTableView = ChatTableView(frame: CGRect(x: 0, y: 0,width: 1000, height: chatScrollView.frame.width),style: .plain)
            
            chatScrollView.addSubview(chatTableView)

        // Do any additional setup after loading the view.
    }
    
    func backToTop() {
        performSegue(withIdentifier: "backToTop", sender: nil)
        //おそらくperformSegueWithIdentifierはviewdidloadが動くが、dismissviewcontrolleranimatedの場合は
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
