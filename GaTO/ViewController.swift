//
//  ViewController.swift
//  GaTO
//
//  Created by Jorge Maldonado Borbón on 05/11/17.
//  Copyright © 2017 Jorge Maldonado Borbón. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    @IBOutlet weak var c4: UIButton!
    @IBOutlet weak var c5: UIButton!
    @IBOutlet weak var c6: UIButton!
    @IBOutlet weak var c7: UIButton!
    @IBOutlet weak var c8: UIButton!
    @IBOutlet weak var c9: UIButton!
    var xo : String = ""
    var cc1 = ""
    var cc2 = ""
    var cc3 = ""
    var cc4 = ""
    var cc5 = ""
    var cc6 = ""
    var cc7 = ""
    var cc8 = ""
    var cc9 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBAction func botones(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
            gato(boton: c1)
            cc1 = c1.currentTitle!
            raya()
        case 2:
            gato(boton: c2)
            cc2 = c2.currentTitle!
            raya()
        case 3:
            gato(boton: c3)
            cc3 = c3.currentTitle!
            raya()
        case 4:
            gato(boton: c4)
            cc4 = c4.currentTitle!
            raya()
        case 5:
            gato(boton: c5)
            cc5 = c5.currentTitle!
            raya()
        case 6:
            gato(boton: c6)
            cc6 = c6.currentTitle!
            raya()
        case 7:
            gato(boton: c7)
            cc7 = c7.currentTitle!
            raya()
        case 8:
            gato(boton: c8)
            cc8 = c8.currentTitle!
            raya()
        case 9:
            gato(boton: c9)
            cc9 = c9.currentTitle!
            raya()
        default:
            print("no hay mas")
        }
        
    }
    
    func gato(boton: UIButton){
        if xo == "" {
            boton.setTitle("X", for: .normal)
            boton.isEnabled = false
            xo = "X"
        }else if xo == "X"{
            boton.setTitle("O", for: .normal)
            boton.isEnabled = false
            xo = ""
        }
    }
    
    func ganar(){
        let alert = UIAlertController(title: "juego terminado", message: "HAZ GANADO", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            self.limpiar()
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func raya(){
        // lineas horzontales
        if cc1 == "X" && cc2 == "X" && cc3 == "X" {
            ganar()
        }
        if cc4 == "X" && cc5 == "X" && cc6 == "X" {
            ganar()
        }
        if cc7 == "X" && cc8 == "X" && cc9 == "X" {
            ganar()
        }
        
        if cc1 == "O" && cc2 == "O" && cc3 == "O" {
            ganar()
        }
        if cc4 == "O" && cc5 == "O" && cc6 == "O" {
            ganar()
        }
        if cc7 == "O" && cc8 == "O" && cc9 == "O" {
            ganar()
        }
        // lineas verticales
        
        if cc1 == "X" && cc4 == "X" && cc7 == "X" {
            ganar()
        }
        if cc2 == "X" && cc5 == "X" && cc8 == "X" {
            ganar()
        }
        if cc3 == "X" && cc6 == "X" && cc9 == "X" {
            ganar()
        }
        
        if cc1 == "O" && cc4 == "O" && cc7 == "O" {
            ganar()
        }
        if cc2 == "O" && cc5 == "O" && cc8 == "O" {
            ganar()
        }
        if cc3 == "O" && cc6 == "O" && cc9 == "O" {
            ganar()
        }
        
        // lienas diagonales
        if cc1 == "X" && cc5 == "X" && cc9 == "X" {
            ganar()
        }
        if cc3 == "X" && cc5 == "X" && cc7 == "X" {
            ganar()
        }
        
        if cc1 == "O" && cc5 == "O" && cc9 == "O" {
            ganar()
        }
        if cc3 == "O" && cc5 == "O" && cc7 == "O" {
            ganar()
        }
        
        
    }// fin funcion
    
    func limpiar(){
        c1.setTitle("", for: .normal)
        c2.setTitle("", for: .normal)
        c3.setTitle("", for: .normal)
        c4.setTitle("", for: .normal)
        c5.setTitle("", for: .normal)
        c6.setTitle("", for: .normal)
        c7.setTitle("", for: .normal)
        c8.setTitle("", for: .normal)
        c9.setTitle("", for: .normal)
        c1.isEnabled = true
        c2.isEnabled = true
        c3.isEnabled = true
        c4.isEnabled = true
        c5.isEnabled = true
        c6.isEnabled = true
        c7.isEnabled = true
        c8.isEnabled = true
        c9.isEnabled = true
        xo = ""
        cc1 = ""
        cc2 = ""
        cc3 = ""
        cc4 = ""
        cc5 = ""
        cc6 = ""
        cc7 = ""
        cc8 = ""
        cc9 = ""
    }
    
    @IBAction func reiniciar(_ sender: UIButton) {
        limpiar()
    }
}














