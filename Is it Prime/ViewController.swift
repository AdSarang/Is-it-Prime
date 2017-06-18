//
//  ViewController.swift
//  Is it Prime
//
//  Created by Advait on 18/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!

    @IBOutlet weak var resultText: UILabel!
    @IBAction func isItPrimeButtonPressed(_ sender: Any) {
        
        var isPrime = true
        let number = Int(userInput.text!)
        if let userNumber = number{
            if userNumber<=1{
                resultText.text="Please enter a positive integer greater than 1"
            }
            else{
                for i in 2 ..< userNumber
                {
                    if(userNumber%i==0)
                    {
                        isPrime = false
                    }
                    
                }
                if isPrime{
                    resultText.text = "\(userNumber) is a Prime!"
                }
                else{
                    resultText.text = "\(userNumber) is not a Prime number"
                }
  
            }
        }
        else {
            resultText.text = "Please enter a positive integer!"
        }
        
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

