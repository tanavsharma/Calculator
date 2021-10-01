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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /* This function is responsible for adding
     * information to the screen. It takes one argument
     * which is passed when a user taps a button.
     */
    func addtoComputations(value: String){
        computations = computations + value // value being the button pushed by user.
        computationsLabel.text = computations
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
        function = ""
        addtoComputations(value: "-")
    }
    
    @IBAction func percent(_ sender: Any) {
        //function = "%"
        addtoComputations(value: "%")
    }
    
    @IBAction func decimal(_ sender: Any) {
        addtoComputations(value: ".")
    }
    
    @IBAction func backSpace(_ sender: Any) {
        if(!computations.isEmpty){
            computations.removeLast()
            computationsLabel.text = computations
            
        }else if(!userInput.isEmpty){
            userInput.removeLast()
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
    
    @IBAction func subtract(_ sender: Any) {
        function = "-"
        addtoComputations(value: "-")
        first = userInput
        userInput = ""
    }
    
    @IBAction func equals(_ sender: Any) {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        
        if(function == "+"){
            results = firstInput + secondInput
            resultsLabel.text = String(results)
        }else if(function == "-"){
            results = firstInput - secondInput
            resultsLabel.text = String(results)
        }else if(function == "*"){
            results = firstInput * secondInput
            resultsLabel.text = String(results)
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

