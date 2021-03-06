//
//  SampleViewController.swift
//  StatefulListSample
//
//  Created by Jason Jon E. Carreos on 23/02/2018.
//  Copyright © 2018 Ingenuity Global Consulting, Inc. All rights reserved.
//

import UIKit

import IGCStatefulView

class SampleViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var infoView: UIView!
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.infoView.configureViewDataState(as: .loading(message: nil, styles: nil))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.infoView.configureViewDataState(as: .success)
        }
    }

}
