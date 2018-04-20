//
//  ViewController.swift
//  racecar1
//
//  Created by Abayomi kazeem Sodia.  on 19/04/2018.
//  Copyright © 2018 Abayomi kazeem Sodia. . All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController,subviewDelegate {
   
    func changeSomething() {
        display.text = "X Position: " + car0.center.x.description
    }
   
    @IBOutlet weak var car0: racecarimageview!
    
    @IBOutlet weak var car1: UIImageView!
    
    @IBOutlet weak var car2: UIImageView!
    
    @IBOutlet weak var car3: UIImageView!
    @IBOutlet weak var car4: UIImageView!
    @IBOutlet weak var car5: UIImageView!
    @IBOutlet weak var car6: UIImageView!
    
    @IBOutlet weak var display: UILabel!
    
    @IBOutlet weak var road: UIImageView!
    
    var collisionBehavior: UICollisionBehavior!
    var gravityBehavior: UIGravityBehavior!
    var dynamicAnimator: UIDynamicAnimator!
    var dynamicItemBehavior: UIDynamicItemBehavior!
   
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
        car0.myDelegate = self
        
        
       
        
        
        
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)


        dynamicItemBehavior = UIDynamicItemBehavior(items: [ car1, car2, car3, car4,car5, car6])
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car1);
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car2);
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car3)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car4)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car5)
        self.dynamicItemBehavior.addLinearVelocity(CGPoint(x: 0, y: 300), for: car6);
        
        
        dynamicAnimator.addBehavior(dynamicItemBehavior)

        
        let time1 = DispatchTime.now() + 2
        DispatchQueue.main.asyncAfter(deadline: time1) {
            
            
        }
        
        
        // animation for road
        var imageArray: [UIImage]!
        
        imageArray = [UIImage(named: "road4.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road6.png")!,
                      UIImage(named: "road7.png")!,
                      UIImage(named: "road8.png")!,
                      UIImage(named: "road9.png")!,
                      UIImage(named: "road10.png")!,
                      UIImage(named: "road11.png")!,
                      UIImage(named: "road12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!]
        
        road.image = UIImage.animatedImage(with: imageArray, duration: 1)
       
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }




    
   

}


        

