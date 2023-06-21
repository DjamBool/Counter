//
//  ViewController.swift
//  Counter
//
//  Created by Игорь Мунгалов on 21.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var counterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.layer.masksToBounds = true
        countLabel.layer.cornerRadius = 10
        counterButton.layer.cornerRadius = 10
    }


}

