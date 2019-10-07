//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Jacob Chappell on 10/7/19.
//  Copyright © 2019 Jacob Chappell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var TextOutput: UITextView!
    @IBOutlet weak var Input: UITextField!
    
    @IBAction func Calculate(_ sender: Any) {
        let iterations = Int(Input.text!) ?? -1;
        if(iterations == -1){
            TextOutput.text = "That is not a number."
        } else{
            var textOut = ""
            for i in 1...iterations{
                var isDivisible = false;
                if(i % 3 == 0){ textOut += "Fizz"; isDivisible = true;}
                if(i % 5 == 0){ textOut += "Buzz"; isDivisible = true;}
                if(i % 7 == 0){ textOut += "Bang"; isDivisible = true;}
                if(!isDivisible){ textOut += String(i);}
                textOut += "\n";
            }
            
            TextOutput.text = textOut;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

