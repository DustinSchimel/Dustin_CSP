//
//  GlobalImpactView.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 10/26/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit

class GlobalImpactView: UIViewController {

    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var problemLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imageFrame.image = UIImage(named: "WaterAppPlan")
        problemLabel.text = "The planet that we live on, the people who live on it depend on water. As the human population grows larger the water sources become scarce and dirty. More ways are needed to help people find good sources of water and to educate on proper water usage."
        problemLabel.font = UIFont(name: "Arial", size: 15)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
