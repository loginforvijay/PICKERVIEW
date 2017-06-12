

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource,UITextFieldDelegate

{
    @IBOutlet weak var textField: UITextField!
    

    
    
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
        textField.text =  names[row]
        
        self.pickerview.isHidden = true
    
    self.view.endEditing(false)
    }
    
    
   public func textFieldDidBeginEditing(_ textField: UITextField)
   {
    
    if textField == self.textField
    {
        self.pickerview.isHidden = false
        
        
        
        
        
        // keyboard hiding
        
        textField.endEditing(true)
    }
    
    
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

