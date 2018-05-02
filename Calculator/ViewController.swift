

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    let calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func numberPressed(sender:AnyObject) {
        calculator.numberPressed(number: sender.tag)
    }
    
    @IBAction func clearPressed(sender:AnyObject) {
        calculator.clear()
        
    }
    @IBAction func plusMinusPressed(sender:AnyObject) {
        calculator.plusMinus()
        
    }
    @IBAction func percentPressed(sender:AnyObject) {
        calculator.percent()
        
    }
    @IBAction func decimalPressed(sender:AnyObject) {
        calculator.decimal()
        
    }
    @IBAction func additionPressed(sender:AnyObject) {
        calculator.addition()
        
    }
    @IBAction func subtractionPressed(sender:AnyObject) {
        calculator.subtraction()
        
    }
    @IBAction func multiplicationPressed(sender:AnyObject) {
        calculator.multiplication()
        
    }
    @IBAction func divisionPressed(sender:AnyObject) {
        calculator.division()
        
    }
    
    @IBAction func equalPressed(sender:AnyObject) {
        calculator.equal()
        
    }
    
}


