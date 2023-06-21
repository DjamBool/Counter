//
//  ViewController.swift
//  Counter
//
//  Created by Игорь Мунгалов on 21.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var plusButtonTitle: UIButton!
    
    @IBOutlet weak var resetButtonTitle: UIButton!
    
    @IBOutlet weak var minusButtonTitle: UIButton!
    
    
    @IBOutlet weak var historyOfChangesTextView: UITextView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.layer.masksToBounds = true
        textLabel.layer.cornerRadius = 10
        historyOfChangesTextView.isEditable = false
    }

    override func viewWillLayoutSubviews() {
                setButtonAppearance(button: plusButtonTitle)
                setButtonAppearance(button: minusButtonTitle)
                setButtonAppearance(button: resetButtonTitle)
    }
    @IBAction func increaseCount() {
        count += 1
        textLabel.text = "Значение счётчика: \(String(count))"
    }
    
    
    @IBAction func reduceCount() {
        if count > 0 {
        count -= 1
        textLabel.text = "Значение счётчика: \(String(count))"
        } else {
            textLabel.text = "Значение счётчика: 0"
        }
    }
    
    @IBAction func reset() {
        count = 0
        textLabel.text = "0"
    }
    
    
    func setButtonAppearance(button: UIButton) {
        button.layer.cornerRadius = 10
        button.titleLabel!.font =  UIFont(name: "HelveticaNeue-Thin", size: 40)

    }
}

