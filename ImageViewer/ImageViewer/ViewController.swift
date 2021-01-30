//
//  ViewController.swift
//  ImageViewer
//
//  Created by chap on 2021/01/31.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 6
    
    @IBOutlet var imgView: UIImageView!
    
    func viewImage() {
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewImage()
    }

    @IBAction func previous(_ sender: UIButton) {
        numImage = numImage - 1
        if numImage < 1 {
            numImage = maxImage
        }
        
        viewImage()
    }
    @IBAction func next(_ sender: UIButton) {
        numImage += 1
        if numImage > maxImage {
            numImage = 1
        }
        
        viewImage()
    }
    
}

