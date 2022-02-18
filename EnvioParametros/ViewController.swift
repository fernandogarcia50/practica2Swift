//
//  ViewController.swift
//  EnvioParametros
//
//  Created by Mac11 on 16/02/22.
//

import UIKit

class ViewController: UIViewController {
    var nombreEnviar: String?
    @IBOutlet weak var edadInput: UITextField!
    @IBOutlet weak var NombreInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.systemGray
        // Do any additional setup after loading the view.
    }


    @IBAction func enviarBtn(_ sender: UIButton) {
        //almacenar el valor del textfield
        nombreEnviar=NombreInput.text
        //abrir la otra pantalla
        performSegue(withIdentifier: "mandarDatos", sender: self)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mandarDatos" {
            let objDestino = segue.destination as! SegundaPantallaController
            objDestino.recibirNombre=NombreInput.text 
            let mandarEdad=Int(edadInput.text!) ?? 0
            objDestino.recibirEdad=mandarEdad
        }
    }
}

