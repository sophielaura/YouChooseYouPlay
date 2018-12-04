//
//  ViewController.swift
//  YouChooseYouPlay
//
//  Created by User13 on 2018/12/4.
//  Copyright © 2018 Laura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var musicImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        musicImage.transform = CGAffineTransform(rotationAngle: 0.4);
    
    
    }
    
    

}

