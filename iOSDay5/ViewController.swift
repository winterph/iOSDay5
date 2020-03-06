//
//  ViewController.swift
//  iOSDay5
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        readPlistData()
    }

    func readPlistData()
    {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist")
        {
            //print(path)
        
            if let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            {
            //print(dictionary)
            if let countries = dictionary["countries"] as? [String]
            {
                for v in countries
                {
                    print(v)
                }
                
            }
                if let users = dictionary["users"] as? [[String:String]]
                {
                    var flag = false
                    for userList in users
                    {
                        if userList["username"] == "abc" && userList["password"] == "123"
                        {
                            flag = true
                            
                        }
                        if flag == true{
                        print("Valid User")
                        }else{
                                print("invalid user")
                            }
                        
                    }
                    
                }
                
            }
            
        }
    }
}


