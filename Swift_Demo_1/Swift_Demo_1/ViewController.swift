//
//  ViewController.swift
//  Swift_Demo_1
//
//  Created by tnex on 17/11/16.
//  Copyright © 2016 TechNex Technologies Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var cricketerDict : NSMutableDictionary = NSMutableDictionary();
    var cricketersName : NSMutableArray = [];
    
    @IBOutlet weak var demoLabel: UILabel!
    @IBOutlet weak var demoLabel_1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demoLabel.backgroundColor = UIColor .grayColor();
        demoLabel_1.backgroundColor = UIColor.grayColor();
        demoLabel.text = "This will show cricketers name";
        demoLabel_1.text = "This will show your favourite character";
        
        swiftDemoFunction()
        createArrayAndDictionary()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func swiftDemoFunction(){
        print("In swift demo function")
        
        //Basic
        
        // var is variable.. Its value has to be change otherwise compiler warns to make it as let
        var myString = "Hello Word"
        print(myString)
        myString = "Hello word again"
        print(myString)
        
        // let is used for decalring constant string
        
        let myStringContant = "1"
        print("Constant string:",myStringContant);
        
        // to print value in print no need to specify specifer .. Compiler automatically adjust it also type of value stored in var or let
    }
    
    func createArrayAndDictionary(){
        print("Learn how create array and dictionary using swift")
        
        // Array
        
        cricketersName = ["Dravid","Sachin","Dhoni","ABD","Hussy"]
        print(cricketersName)
        cricketersName .addObject("Kallis");                           // How to add element in NSArray
        print("Best cricketer ever:",cricketersName[5])
        print("Modified Cricket array:",cricketersName)
        
        // Dictionary
        cricketerDict = ["PrimaryRole":"batman", "SecondaryRole":"Bruce Wayne"]
        print(cricketerDict);
        print("Favorite role:->",cricketerDict["SecondaryRole"])
    }
    
    @IBAction func actionOnClickButton(sender: AnyObject) {
        print("Click button is get clicked");
        let intValue : Int = (cricketersName[2]  as? Int)!;
        print("Int value-->",intValue);
        self.demoLabel.text = cricketersName [2] as? String;
        demoLabel_1.text = cricketerDict .valueForKey("PrimaryRole") as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

