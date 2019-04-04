//
//  ViewController.swift
//  NicPics
//
//  Created by David Mkrtychyan on 10/24/18.
//  Copyright © 2018 David Mkrtychyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nicPics = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create tapgesturerecognizer to detect taps on screen.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.onTap))
        // Add tapGesture to the view
        self.view.addGestureRecognizer(tapGesture)
        
        for i in 1...11 {
            let name = "NC\(i)"
            let nicPic = UIImage(named: name)
            nicPics.append(nicPic!)
        }
        
    }
    //Function that gets called when user taps on the screen.
    @objc func onTap(_ tapGesture: UITapGestureRecognizer) {
        
        let touchLocation = tapGesture.location(in: tapGesture.view)
        
        //important to note for tap to center the circle we had to / 2 whatever H and W are and subtract from X and Y
        let circle = UIView()
        let randomSize = CGFloat.random(from: 50, to: 300)

        circle.center = touchLocation

        circle.bounds.size = CGSize(width: randomSize, height: randomSize)
        circle.backgroundColor = UIColor.random
        circle.alpha = 0.8
        circle.layer.cornerRadius = randomSize/2

        // Initialized the UIImageView
        let imageView = UIImageView(image: nicPics.randomElement())
        imageView.bounds.size = CGSize(width: randomSize - 10, height: randomSize - 10)
        imageView.layer.cornerRadius = randomSize/2
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        self.view.addSubview(circle)
        circle.addSubview(imageView)
        imageView.center = CGPoint(x: randomSize/2, y: randomSize/2)
        
        //Animation
        circle.transform = CGAffineTransform(scaleX: 0, y: 0)
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            circle.transform = .identity
        }, completion: nil)
    }
}

