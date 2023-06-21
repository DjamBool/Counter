//
//  ViewController.swift
//  Counter
//
//  Created by Игорь Мунгалов on 21.06.2023.
//

import UIKit

@available(iOS 15, *)
class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var plusButtonTitle: UIButton!
    @IBOutlet weak var resetButtonTitle: UIButton!
    @IBOutlet weak var minusButtonTitle: UIButton!
    @IBOutlet weak var historyOfChangesTextView: UITextView!
    
    var count = 0
    let date = Date.now.formatted(date: .numeric, time: .standard)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.layer.masksToBounds = true
        textLabel.layer.cornerRadius = 10
        historyOfChangesTextView.isEditable = false
        historyOfChangesTextView.text = "История изменений:\n"
    }
    
    override func viewWillLayoutSubviews() {
        setButtonAppearance(button: plusButtonTitle)
        setButtonAppearance(button: minusButtonTitle)
        setButtonAppearance(button: resetButtonTitle)
        
    }
    @IBAction func increaseCount() {
        count += 1
        textLabel.text = "Значение счётчика: \(String(count))"
        historyOfChangesTextView.text += "[\(date)]: счетчик увеличен на 1\n"
    }
    
    @IBAction func reduceCount() {
        if count > 0 {
            count -= 1
            textLabel.text = "Значение счётчика: \(String(count))"
            historyOfChangesTextView.text += "[\(date)]: счетчик уменьшен на 1\n"
        } else {
            textLabel.text = "Значение счётчика: 0"
            historyOfChangesTextView.text += "[\(date)]: попытка уменьшить значение счётчика ниже 0\n"
        }
    }
    
    @IBAction func reset() {
        count = 0
        textLabel.text = "0"
        historyOfChangesTextView.text += "[\(date)]: значение сброшено\n"
    }
    
    private func setButtonAppearance(button: UIButton) {
        button.layer.cornerRadius = 10
        button.titleLabel!.font =  UIFont(name: "HelveticaNeue-Thin", size: 40)
        
    }
}

