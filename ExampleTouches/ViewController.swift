//
//  ViewController.swift
//  ExampleTouches
//
//  Created by André Vellori on 07/04/2017.
//  Copyright © 2017 André Vellori. All rights reserved.
//

import UIKit
class A: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Controller A received a begin touch")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Controller A received a move touch")
    }
}

// This prints
/*
 B received a begin touch
 */
class B: UIViewController {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Controller B received a begin touch")
    }
}

// this prints
/*
 A received a begin touch
 C received a move touch
 A received a move touch
 C received a move touch
 A received a move touch
 C received a move touch
 */
class C: UIViewController {
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Controller C received a move touch")
    }
}


// This prints 
/*
 A received a begin touch
 D received a begin touch and passed on
 D received a move touch
 A received a move touch
 D received a move touch
 A received a move touch
 D received a move touch
 A received a move touch
 ...
 */
class D: UIViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("Controller D received a begin touch and passed on")
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Controller D received a move touch")
    }
}
