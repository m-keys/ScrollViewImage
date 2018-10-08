//
//  ViewController.swift
//  ScrollViewImage
//
//  Created by Александр Макаров on 08.10.2018.
//  Copyright © 2018 Александр Макаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "priroda")
        scrollView.maximumZoomScale = 10
        scrollView.minimumZoomScale = 1
        scrollView.delegate = self
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}

