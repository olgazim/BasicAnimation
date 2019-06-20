//  Copyright © 2019 Olga Zimina. All rights reserved.

import UIKit

class BasicAnimationViewController: UIViewController {

    @IBOutlet weak var shapeView: BasicAnimationView!     
   
    
    override func viewDidAppear(_ animated: Bool) {
        shapeView.addShape()
        UIView.animate(withDuration: 1,
                       delay: 1,
                       options: .curveEaseInOut,
                       animations: {
                            self.shapeView.changeSubViewSize()
                            self.shapeView.changeSubViewPosition()
                            self.shapeView.changeSubViewColor(color: .blue)
                            self.shapeView.alpha = 0.5
                        },
                       completion: {finished in print("New position")})
    }
}
