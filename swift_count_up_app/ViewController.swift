//
//  ViewController.swift
//  swift_count_up_app
//
//  Created by haya on 2020/06/08.
//  Copyright © 2020 haya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.text = String(count)
    }


    @IBAction func plus(_ sender: Any) {
        
        count = count + 1
        countLabel.text = String(count)

        if count >= 10 {
            changeCountColor()
        }
        
    }
    
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        countLabel.text = String(count)
        
        if count <= 0 {
            resetCountColor()
        }
        
    }
    
    func changeCountColor(){
        countLabel.textColor = .green
    }
    
    func resetCountColor(){
        countLabel.textColor = .white
    }
    
    
}

