//
//  ViewController.swift
//  OpenWeatherMap
//
//  Created by msm72 on 21.04.16.
//  Copyright © 2016 msm72. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    let keyAPI = "bf78c70c3c7cc215ec6f26b3437a2409"
    var urlAPI = "http://api.openweathermap.org/data/2.5/forecast/daily?q=London,uk&lang=ua&appid="

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Alamofire -
        urlAPI += keyAPI
        
//        Alamofire.request(.GET, urlAPI).responseJSON() {
//            (JSON) in
//            print(JSON)
//        }
        
        Alamofire.request(.GET, urlAPI).responseJSON { (json) -> Void in
            let swiftyJsonVar = json
            print(swiftyJsonVar)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

