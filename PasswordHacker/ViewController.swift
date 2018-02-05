//
//  ViewController.swift
//  PasswordHacker
//
//  Created by kawagishi on 2018/02/05.
//  Copyright © 2018年 juna Kawagishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel1: UILabel!
    @IBOutlet var resultLabel2: UILabel!
    @IBOutlet var resultLabel3: UILabel!
    @IBOutlet var resultLabel4: UILabel!

    @IBOutlet var countLabel: UILabel!
    
    var passward: Int = 2315
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func start(){
        
        for i in 0...9999{
            countLabel.text = String(i)
            RunLoop.main.run(until:Date(timeIntervalSinceNow:0.0005))
            
            if i == passward{
                print("正解は\(i)です！")

                var digits = [Int]()
                for _ in 0...3{
                    digits.append(passward%10)
                    passward = passward/10
                }
                
                resultLabel1.text = String(digits[3])
                resultLabel2.text = String(digits[2])
                resultLabel3.text = String(digits[1])
                resultLabel4.text = String(digits[0])
                
            }
        }
    }

    @IBAction func reset(){
        passward = 2315
        countLabel.text = "「「START」ボタンを押して解析開始！」"
        
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
        
    }
}

