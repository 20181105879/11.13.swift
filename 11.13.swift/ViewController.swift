//
//  ViewController.swift
//  11.13.swift
//
//  Created by s20181105879 on 2019/11/13.
//  Copyright © 2019 s20181105879. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var show: UITextField!
    var cc=""
    var x=""
    var num1=""
    var num2=""
    var oprea=""
    var sum=0.0
    var nn1=""
    var nn2=""
    var num=0.0
    
    
    
    
    @IBAction func selectnum(_ sender: Any) {
        
        let CButten = sender as! UIButton
        if(CButten .currentTitle==".")
        {
            if(x==".")
            {
                
            }
            else if(cc=="")
            {
                cc="0."
            }
            else{
                cc=cc+CButten.currentTitle!
            }
            
            
        }
        else if(cc=="0.")
            {
               cc=cc+CButten.currentTitle!
            }
        else if(Double(cc)==0){
            
            cc=CButten.currentTitle!
        }
        else{
            cc=cc+CButten.currentTitle!
        }
        
        show.text=cc
       

    }
    
    
    @IBAction func Ac(_ sender: Any) {
        show.text="0"
        cc=""
        x=""
    }
    
    

    
    
    
    @IBAction func opre(_ sender: Any) {
        
        let cOper = sender as! UIButton
        
        if(cOper.currentTitle!=="/")
        {
            show.text="/"
            oprea="/"
            num1=cc
            cc=""
            x=""
            
        }
        else if(cOper.currentTitle!=="-")
        {
            show.text="-"
            oprea="-"
            num1=cc
            cc=""
            x=""
        }
        else if(cOper.currentTitle!=="+")
        {
            show.text="+"
            oprea="+"
            num1=cc
            cc=""
            x=""
            
        }
        else if(cOper.currentTitle!=="*")
        {
            show.text="*"
            oprea="*"
            num1=cc
            cc=""
            x=""
        }
        else if(cOper.currentTitle!=="+/-")
        {
           num=Double(cc)!
           num=num*(-1);
          show.text="\(num)"
          cc=String(num)
        }
        else if(cOper.currentTitle!=="%")
        {
            
            num=Double(cc)!
            num=num/100;
            show.text="\(num)";

        }
 
        
    }
    
    @IBAction func result(_ sender: Any) {
        num2=cc
        if(oprea=="/")
        {
           sum=Double(num1)!/Double(num2)!
        }
        else if(oprea=="+")
        {
            sum=Double(num1)!+Double(num2)!
        }
        else if(oprea=="-")
        {
           sum=Double(num1)!-Double(num2)!
        }
        else if(oprea=="*")
        {
           sum=Double(num1)!*Double(num2)!
        }
        else{
            
        }
       // num2=num1
        num1=String(sum)
        
        
    
        show.text=String(sum)
        
        
        
        
        
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

