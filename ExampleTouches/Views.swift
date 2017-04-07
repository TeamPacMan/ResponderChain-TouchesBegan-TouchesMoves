//
//  Views.swift
//  ExampleTouches
//
//  Created by André Vellori on 07/04/2017.
//  Copyright © 2017 André Vellori. All rights reserved.
//

import Foundation
import UIKit

class SomeSuperLabel: UILabel {
    required override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        
    }
}

@IBDesignable
class ViewTypeA: SomeSuperLabel {
    override func setup() {
        super.setup()
        backgroundColor = .yellow
        text = "ViewType A"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan \(text ?? "")")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved \(text ?? "")")
    }
}

@IBDesignable
class ViewTypeB: SomeSuperLabel {
    override func setup() {
        super.setup()
        backgroundColor = .red
        text = "ViewType B"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan \(text ?? "")")
    }

}

@IBDesignable
class ViewTypeC: SomeSuperLabel {
    override func setup() {
        super.setup()
        backgroundColor = .cyan
        text = "ViewType C"
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved \(text ?? "")")
    }
}

@IBDesignable
class ViewTypeD: SomeSuperLabel {
    override func setup() {
        super.setup()
        backgroundColor = .blue
        text = "ViewType D"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        print("touchesBegan \(text ?? "") and passed on")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved \(text ?? "")")
    }
}
