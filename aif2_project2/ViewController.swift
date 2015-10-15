//
//  ViewController.swift
//  aif2_project2
//
//  Created by Anhar Felimban on 10/8/15.
//  Copyright © 2015 Anhar Felimban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var setTitle: UITextField!
    @IBOutlet weak var setAuther: UITextField!
    @IBOutlet weak var setISBN: UITextField!
    @IBOutlet weak var setPuplisher: UITextField!
    @IBOutlet weak var setPupDate: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
        let dictionary = NSDictionary(contentsOfFile: path!)
        
        setTitle.text = dictionary!.valueForKey("title") as? String
        setAuther.text = dictionary!.valueForKey("auther") as? String
        setISBN.text = dictionary!.valueForKey("ISBN") as? String
        setPuplisher.text = dictionary!.valueForKey("puplisher") as? String
        setPupDate.text = dictionary!.valueForKey("puplicationdate ") as? String
        
    }

 
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}


