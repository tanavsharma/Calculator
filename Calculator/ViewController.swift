/*  ****************************************************************************
 *  ViewController.swift
 *  Calculator
 *
 *  Name       : Tanav Sharma
 *  Student ID : 301170162
 *  Date       : 2021-09-21
 *  Description: This app will be responsible for computing simple and complex
 *               mathematical operations.
 *  Version    : 1.0
 * ****************************************************************************
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computationsLabel: UILabel!
    @IBOutlet weak var resultsLabel: UILabel!
    
    /* Initalizing the variable that will hold
     * the users input. Setting it empty in the
     * start.*/
    
    var computations:String = ""
    var first = ""
    var second = ""
    var function = ""
    var userInput = ""
    var results = 0.0
    var firstInput = 0.0
    var secondInput = 0.0
    var compareFactorial = 0
    var factorialResult = 0
    var factorialNumber: UInt =  1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /* This function is responsible for adding
     * information to the screen. It takes one argument
     * which is passed when a user taps a button.
     */
    func addtoComputations(value: String){
        let cnt = (computationsLabel.text?.count)! // getting the length of the string
        
        /* if loop which checks if the length of the string is less than or equal to 20
         * continue to update the computationsLabel else if the string exceeds 20 than
         * display an alert, prompting the user to either clear the calculator to continue
         * or to not clear the calculator. If the user selects "Clear Calculator" then it will
         * reset all the labels and reset all the variables.
         */
        
        if cnt <= 20{
            computations = computations + value // value being the button pushed by user.
            computationsLabel.text = computations
        }else{
            let alert = UIAlertController(title: "Number Limit Reached", message: "You have reached the limit of numbers. Would you like to clear?", preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "Clear Calculator", style: .default, handler:{ action in
                self.computations = ""
                self.computationsLabel.text = ""
                self.userInput = ""
                self.resultsLabel.text = ""
                                          }))
            alert.addAction(UIAlertAction(title: "Do Not Clear!", style: .cancel, handler: nil))

            self.present(alert, animated: true)
        }
    }

    
    //Calculator Special Buttons
    
    /* All Clear button, is going to reset all the
     * variables and textviews to zero or empty.*/
    @IBAction func allClear(_ sender: Any) {
        userInput = ""
        computations = ""
        computationsLabel.text = ""
        resultsLabel.text = ""
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        function = "-"
        addtoComputations(value: "-")
        
    }
    
    @IBAction func plusTap(_ sender: Any) {
        function = ""
        addtoComputations(value: "")
    }
    
    @IBAction func percent(_ sender: Any) {
        function = "%"
        addtoComputations(value: "%")
        first = userInput
        userInput = ""
        
        
    }
    
    @IBAction func decimal(_ sender: Any) {
        userInput += "."
        addtoComputations(value: ".")
    }
    
    /* Backspace button first checks to see if the computations
     * are empty or not. If computations variable is empty; nothing
     * happens. If its not empty, I call the removeLast function.
     */
    @IBAction func backSpace(_ sender: Any) {
        if(!computations.isEmpty){
            computations.removeLast()
            if(!userInput.isEmpty){
                userInput.removeLast()
                computationsLabel.text = computations
            }else{
                computationsLabel.text = computations
            }
            computationsLabel.text = computations
        }else if(!function.isEmpty){
            function.removeLast()
            computationsLabel.text = computations
        }
    }
    
    
    // Calculator Operators
    
    @IBAction func divide(_ sender: Any) {
        function = "÷"
        addtoComputations(value: "÷")
        first = userInput
        userInput = ""
    }
    
    @IBAction func multiply(_ sender: Any) {
        function = "*"
        addtoComputations(value: "*")
        first = userInput
        userInput = ""
    }
    
    @IBAction func addition(_ sender: Any) {
        function = "+"
        addtoComputations(value: "+")
        first = userInput
        userInput = ""
    }
    
    @IBAction func squareRoot(_ sender: Any) {
        function = "√"
        addtoComputations(value: "√")
        first = userInput
        userInput = ""
    }
    
    @IBAction func pi(_ sender: Any) {
        function = "π"
        addtoComputations(value: "π")
        first = userInput
        userInput = ""
    }
    
    @IBAction func sinn(_ sender: Any) {
        function = "sin"
        addtoComputations(value: "sin")
        first = userInput
        userInput = ""
    }
    
    @IBAction func coss(_ sender: Any) {
        function = "cos"
        addtoComputations(value: "cos")
        first = userInput
        userInput = ""
    }
    
    @IBAction func tann(_ sender: Any) {
        function = "tan"
        addtoComputations(value: "tan")
        first = userInput
        userInput = ""
    }
    
    @IBAction func rand(_ sender: Any) {
        function = "rand"
        addtoComputations(value: "rand")
        first = userInput
        userInput = ""
    }
    
    @IBAction func squared(_ sender: Any) {
        function = "²"
        addtoComputations(value: "²")
        first = userInput
        userInput = ""
    }
    
    @IBAction func cubed(_ sender: Any) {
        function = "³"
        addtoComputations(value: "³")
        first = userInput
        userInput = ""

    }
    
    @IBAction func exponent(_ sender: Any) {
        function = "e"
        addtoComputations(value: "e")
        first = userInput
        userInput = ""
    }
    

    @IBAction func factorial(_ sender: Any) {
        function = "!"
        addtoComputations(value: "!")
        first = userInput
        userInput = ""
    }
    
    
    @IBAction func subtract(_ sender: Any) {
        function = "-"
        addtoComputations(value: "-")
        first = userInput
        userInput = ""
    }
    
    @IBAction func equals(_ sender: Any) {
        
        if(function == "+" || function == "-" || function == "÷" || function == "*"){
            second = userInput
            firstInput = Double(first)!
            secondInput = Double(second)!
            
            if(function == "+"){
                results = firstInput + secondInput
                resultsLabel.text = String(results)
                userInput = ""
                userInput = String(results)
            }else if(function == "-"){
                results = firstInput - secondInput
                resultsLabel.text = String(results)
                userInput = ""
                userInput = String(results)
            }else if(function == "*"){
                results = firstInput * secondInput
                resultsLabel.text = String(results)
                userInput = ""
                userInput = String(results)
            }else if(function == "÷"){
                results = firstInput / secondInput
                resultsLabel.text = String(results)
                userInput = ""
                userInput = String(results)
            }
            
        }else if(function == "%"){
            firstInput = Double(first)!
            results = firstInput / 100
            resultsLabel.text = String(results)
            
        }else if(function == "√"){
            firstInput = Double(first)!
            results = sqrt(firstInput)
            resultsLabel.text = String(results)
            
        }else if(function == "π"){
            firstInput = Double(first)!
            results = firstInput * 3.141592653589793238462643383279502884197169399375105820974944592307816406286
            resultsLabel.text = String(results)
        
        }else if(function == "sin"){
            firstInput = Double(first)!
            results = sin(firstInput)
            resultsLabel.text = String(results)
        
        }else if(function == "cos"){
            firstInput = Double(first)!
            results = cos(firstInput)
            resultsLabel.text = String(results)
        
        }else if(function == "tan"){
            firstInput = Double(first)!
            results = tan(firstInput)
            resultsLabel.text = String(results)
       
        }else if(function == "rand"){
            firstInput = Double(first)!
            results = Double.random(in: 0...firstInput)
            resultsLabel.text = String(results)
        
        }else if(function == "²"){
            firstInput = Double(first)!
            results = pow(firstInput, 2)
            resultsLabel.text = String(results)
        
        }else if(function == "³"){
            firstInput = Double(first)!
            results = pow(firstInput, 3)
            resultsLabel.text = String(results)
       
        }else if(function == "e"){
            firstInput = Double(first)!
            results = pow(2.71828, firstInput)
            resultsLabel.text = String(results)
        
        }else if(function == "!"){
            firstInput = Double(first)!
            var product: UInt = 1
            
            if firstInput == 0{
                resultsLabel.text = String("1")
            }
            for i in 1...UInt(firstInput){
                product = product * i
                print("r = ", product)
            }
            resultsLabel.text = String(product)
        }
        
        
        
    }
    
    
    //Calculator Numbers
    @IBAction func one(_ sender: Any) {
        userInput += "1"
        addtoComputations(value: "1")
    }
    
    @IBAction func two(_ sender: Any) {
        userInput += "2"
        addtoComputations(value: "2")
    }
    
    @IBAction func three(_ sender: Any) {
        userInput += "3"
        addtoComputations(value: "3")
    }
    
    @IBAction func four(_ sender: Any) {
        userInput += "4"
        addtoComputations(value: "4")
    }
    
    @IBAction func five(_ sender: Any) {
        userInput += "5"
        addtoComputations(value: "5")
    }
    
    @IBAction func six(_ sender: Any) {
        userInput += "6"
        addtoComputations(value: "6")
    }
    
    @IBAction func seven(_ sender: Any) {
        userInput += "7"
        addtoComputations(value: "7")
    }
    
    @IBAction func eight(_ sender: Any) {
        userInput += "8"
        addtoComputations(value: "8")
    }
    
    @IBAction func nine(_ sender: Any) {
        userInput += "9"
        addtoComputations(value: "9")
    }
    
    @IBAction func zero(_ sender: Any) {
        userInput += "0"
        addtoComputations(value: "0")
    }
    
}

