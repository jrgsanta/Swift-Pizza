//
//  MasaViewController.swift
//  Pizza
//
//  Created by Jrgsanta on 10/10/15.
//  Copyright © 2015 Jrgsanta. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet weak var selectorMasa: UIPickerView!
    
    var tipoMasas = ["Delgada","Crujiente","Esponjosa","Gruesa"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        selectorMasa.delegate = self
        selectorMasa.dataSource = self
        
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoMasas[row]
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasas.count
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
}

