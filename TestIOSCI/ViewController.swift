//
//  ViewController.swift
//  TestIOSCI
//
//  Created by apple2 on 2017/3/18.
//  Copyright © 2017年 shiyuwudi. All rights reserved.
//

import UIKit
import AFNetworking
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // test scm poll failed build + auto email notification
        let urlString = "https://api.douban.com/v2/book/1220562"
        AFHTTPSessionManager().get(urlString, parameters: nil, progress: nil, success: onSuccess, failure: onFailure)
    }
    
    func onSuccess(task: URLSessionDataTask, responseObject: Any?) {
        if let r = responseObject {
            print(JSON(r))
        }
    }
    
    func onFailure(task: URLSessionDataTask?, error: Error) {
        print(error)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

