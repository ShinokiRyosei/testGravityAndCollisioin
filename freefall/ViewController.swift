//
//  ViewController.swift
//  freefall
//
//  Created by shinokiryosei on 2015/06/13.
//  Copyright (c) 2015年 shinokiryosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var balls: [UIView]!
    
//    DynamicAnimatorを変数宣言する
    var dynamicAnimator: UIDynamicAnimator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.startGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startGame() {
//        UIDynamicAnimatorのクラス群のUIDynamicBehaviorを使う
        let gravityBehavior = UIGravityBehavior(items: self.balls)
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        dynamicAnimator.addBehavior(gravityBehavior)
        
//        衝突のシュミレーションのためにUICollisionBehaviorを使う
        let collisionBehavior = UICollisionBehavior(items: self.balls)
        
      
        
        
//        外枠にボールがぶつかれば跳ね返るようにする
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        
        
        dynamicAnimator.addBehavior(collisionBehavior)
        
        
        
    }


}

