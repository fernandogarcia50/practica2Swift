//
//  SegundaPantallaController.swift
//  EnvioParametros
//
//  Created by Mac11 on 16/02/22.
//

import UIKit

class SegundaPantallaController: UIViewController {
    
    var recibirNombre: String?
    var recibirEdad: Int?
    @IBOutlet weak var cambiarImagen: UIImageView!
    @IBOutlet weak var textoPantalla: UILabel!
    override func viewDidLoad() {
        if(recibirEdad!>=18)
        {
            print("soy mayor de edad")
            textoPantalla.text="Hola \(recibirNombre!) eres mayor de edad"
            cambiarImagen.image=UIImage(named: "mayor")
            self.view.backgroundColor=UIColor.green
           
        }else{
            print("soy menor de edad")
            textoPantalla.text="Hola \(recibirNombre!) eres menor de edad"
            cambiarImagen.image=UIImage(named: "menor")
            self.view.backgroundColor=UIColor.red
        }
        super.viewDidLoad()
        

    }
    

    @IBAction func regresarBtn(_ sender: UIButton) {
        dismiss(animated: true) {
            print("regreso a la pantalla principal")
        }
    }
    
    @IBAction func salirBtn(_ sender: UIButton) {
        exit(0)
    }
    
}
