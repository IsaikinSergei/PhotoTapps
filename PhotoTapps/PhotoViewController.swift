//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Sergei Isaikin on 13.12.2020.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        present(shareController, animated: true, completion: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
    }

}
