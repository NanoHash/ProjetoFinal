//
//  CadastroViewController.swift
//  ProjetoFinal
//
//  Created by Student on 3/8/17.
//  Copyright © 2017 Rodrigo Leandro. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
    var imagePicked = UIImage()
    
    @IBOutlet weak var buttonImage: UIButton!
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var senhaText: UITextField!
    
    @IBOutlet weak var dateText: UITextField!
    
    @IBAction func saveAction(_ sender: Any) {
    
    }

    @IBAction func photoPicker(_ sender: Any) {
        // 1. Crie o AlertController
        let alert: UIAlertController = UIAlertController(title: "Escolha sua foto",                                                         message: "",                                                         preferredStyle: .actionSheet)
        
        let cameraAction: UIAlertAction = UIAlertAction(title: "Camera",
                                                        style: .default) {
            void in self.fromCameraPicker()
        }
        
        let galeriaAction: UIAlertAction = UIAlertAction(title: "Galeria",
                                                         style: .default) {
            void in self.fromPhotoLibrary()
        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancelar",
                                                        style: .cancel) {
                                                            void in print ("Cancel")
        }
        
        alert.addAction(cameraAction)
        alert.addAction(galeriaAction)
        alert.addAction(cancelAction)
        
        self.present (alert, animated: true, completion: nil)
        
    }
    
    func savePhoto () {
        /*var imageData = UIImageJPEGRepresentation(imagePicked, 0.6)
        var compressedJPGImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
        
        var alert = UIAlertView(title: "Wow",
                                message: "Your image has been saved to Photo Library!",
                                delegate: nil,
                                cancelButtonTitle: "Ok")
        alert.show()*/
        buttonImage.imageView?.image = imagePicked
    }

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            buttonImage.setImage(pickedImage, for: .normal)
            print ("Got the image")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func fromCameraPicker () {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    func fromPhotoLibrary () {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
