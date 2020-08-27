//
//  ViewController.swift
//  LoadingUITestApp
//
//  Created by Stephanie Ballard on 6/18/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit
import LoadingUIFramework

class ViewController: LoadingViewController {

    @IBOutlet weak var testAnimationButton: UIButton!
    
    var isTesting: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func testAnimationButtonTapped(_ sender: Any) {
           switch isTesting {
           case false:
               newRing()
               startRing()
               isTesting.toggle()
           case true:
               stopRing()
               isTesting.toggle()
           }
       }

}

