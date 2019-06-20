//  Copyright © 2019 Olga Zimina. All rights reserved.

import UIKit

class BasicAnimationView: UIView {
    
    var shapeSubView: UIView?

    private var shapeSize: CGSize {
        var size: CGFloat {
            return min(self.bounds.size.height, self.bounds.size.width) * 2 / 4
        }
        return CGSize(width: size, height: size)
    }
    
    func addShape() {
        
        var step: CGFloat {
            return min(self.bounds.size.height, self.bounds.size.width) / 4
        }
        let shapeOriginPoint = CGPoint(x: step, y: step)
        let frame = CGRect(origin: shapeOriginPoint, size: shapeSize)
        
        let shape = UIView(frame: frame)
        shape.backgroundColor = UIColor.red
        shapeSubView = shape
        addSubview(shape)
    }
    
    func changeSubViewPosition() {
        let step = self.frame.size.width / 5
        self.frame.origin.x += step
        self.frame.origin.y += (3 * step)
    }
    
    func changeSubViewColor(color: UIColor) {
        shapeSubView?.backgroundColor = color
    }
    
    func changeSubViewSize() {
        shapeSubView?.frame.size.height /= 2
        shapeSubView?.frame.size.width /= 2
    }
    
}
