//
//  ViewController.swift
//  cltview
//
//  Created by Trần Tiến Anh on 8/14/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate , UICollectionViewDataSource {
    @IBOutlet weak var myColectionView: UICollectionView!
    var arrImag = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        myColectionView.dataSource = self
//myColectionView.delegate = self
    }
     var imagePicker = UIImagePickerController()
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBAction func btnClick(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        arrImag.append(image)
        self.dismiss(animated: true, completion: {
         ()-> Void in
             self.myColectionView.reloadData()
        })
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrImag.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myColectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! myCollectionViewCell
        if arrImag.count != 0 {
            cell.img.image = arrImag[indexPath.row]
        }
        return cell
    }
}


