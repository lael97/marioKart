//
//  ViewController.swift
//  marioKart
//
//  Created by Alexis Gonzalez on 2/20/19.
//  Copyright © 2019 alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kart1: UIImageView!
    @IBOutlet weak var kart2: UIImageView!
    @IBOutlet weak var kart3: UIImageView!
    
    var startingPointKart1 = CGPoint()
    var startingPointKart2 = CGPoint()
    var startingPointKart3 = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startingPointKart1 = kart1.center
        startingPointKart2 = kart2.center
        startingPointKart3 = kart3.center
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        print("Location: x: \(location.x), y: \(location.y)")
        let kartView = sender.view!
        kartView.center = location


    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        print("scale: \(scale)")
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)


    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        print("rotation: \(rotation)")
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)


    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }

    }
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8) {
            self.kart1.center = self.startingPointKart1
            self.kart2.center = self.startingPointKart2
            self.kart3.center = self.startingPointKart3
            
            self.kart1.transform = CGAffineTransform.identity
            self.kart2.transform = CGAffineTransform.identity
            self.kart3.transform = CGAffineTransform.identity
        }
        
       
        
    }
    
}

