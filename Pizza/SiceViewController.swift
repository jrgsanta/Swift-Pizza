//
//  SiceViewController.swift
//  Pizza
//
//  Created by Jrgsanta on 10/10/15.
//  Copyright © 2015 Jrgsanta. All rights reserved.
//

import UIKit

class SiceViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var selectorSice: UIPickerView!
    
    var SicePizza = ["XL - Familiar","X - Grade","L - Mediana","M - Pequeña"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        selectorSice.delegate = self
        selectorSice.dataSource = self
        
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SicePizza[row]
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return SicePizza.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
}

