//
//  ViewController.swift
//  PickerViewTwo
//
//  Created by Admin on 12/06/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource

{

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    
    let names = ["India","Pakistan","Afganistan","Burma","Butan","Maldives","Nepal","Srilanka"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
      return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return names.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return names[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        label.text =  names[row]
    
    self.view.endEditing(false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
        
        
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

