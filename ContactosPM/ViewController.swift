//
//  ViewController.swift
//  ContactosPM
//
//  Created by Mac8 on 03/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var recibirNombre: String?

    @IBOutlet weak var tablaContactos: UITableView!
    
    override func viewDidLoad() {
    
        // Do any additional setup after loading the view.
        tablaContactos.delegate = self
        tablaContactos.dataSource = self
        
        super.viewDidLoad()
    }
    
    //MARK:- METODOS TABLA
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaContactos.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        celda.textLabel?.text = "Manuel"
        celda.detailTextLabel?.text = "123"
        return celda
    }
    
    // para seleccionar el contacto
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "editar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarNombre"{
            let objDestino = segue.destination as! EditarViewController
            objDestino.recibirNombre = recibirNombre
         
        }
    }


}

