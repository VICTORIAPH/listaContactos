//
//  EditarViewController.swift
//  ContactosPM
//
//  Created by Mac8 on 03/05/22.
//

import UIKit

class EditarViewController: UIViewController {
   
    @IBOutlet weak var recibirImage: UIImageView!
    
    @IBOutlet weak var recibirTele: UITextField!
    
    @IBOutlet weak var recibirDireccion: UITextField!
    @IBOutlet weak var recibirEmail: UITextField!
    
    @IBOutlet weak var btnCancelar: UIButton!
    
    @IBOutlet weak var btnAceptar: UIButton!
    //var recibirNombre: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   
    @IBAction func btnCancelar(_ sender: UIButton) {
    }
    
    @IBAction func btnAceptar(_ sender: UIButton) {
    }
    
    extension EditarViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        func imagePickerController.In(<#parameters#>) -> <#return type#> {
            <#function body#>
        }
    }

    
}
