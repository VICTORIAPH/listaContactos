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
    
    //var recibirNombre: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   
    @IBAction func btnCancelar(_ sender: UIButton) {
    }
    
    @IBAction func btnAceptar(_ sender: UIButton) {
    }
    


    
}
// MARK: - Agregar gestura a la imagen
extension EditarViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagenSeleccionada = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            recibirImage.image = imagenSeleccionada
        }
        
        picker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}
