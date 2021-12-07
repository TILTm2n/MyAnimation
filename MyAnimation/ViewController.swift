//
//  ViewController.swift
//  MyAnimation
//
//  Created by Eugene on 07.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewForAnimate: UIView!
    
    var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewForAnimate.center = view.center
        viewForAnimate.layer.backgroundColor = UIColor.red.cgColor
        viewForAnimate.frame.size.height = 0
        viewForAnimate.frame.size.width = 0
        
        animator = UIViewPropertyAnimator(duration: 3, curve: .easeInOut, animations: {
            self.viewForAnimate.frame.size.height = 128
            self.viewForAnimate.frame.size.width = 240
            self.viewForAnimate.layer.backgroundColor = UIColor.blue.cgColor
            self.viewForAnimate.transform = CGAffineTransform(rotationAngle: .pi)
            self.viewForAnimate.center = self.view.center
        })
        
        animator.startAnimation()
        
    }


}

