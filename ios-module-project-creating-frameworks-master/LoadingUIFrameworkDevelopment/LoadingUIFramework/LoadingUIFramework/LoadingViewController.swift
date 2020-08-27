//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Stephanie Ballard on 6/18/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

open class LoadingViewController: UIViewController {

    private var loadingRing: IndeterminateLoadingView?
    
    open override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    public func newRing() {
        let ringBounds = CGRect(x: 25, y: 25, width: 75, height: 68)
        self.loadingRing = IndeterminateLoadingView(frame: ringBounds)
        loadingRing?.translatesAutoresizingMaskIntoConstraints = false
        if let ring = loadingRing {
            view.addSubview(ring)
        }
        loadingRing?.center = view.center
    }
    
    public func startRing() {
        loadingRing?.startAnimating()
    }
    
    public func stopRing() {
        loadingRing?.stopAnimating()
        loadingRing?.removeFromSuperview()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
