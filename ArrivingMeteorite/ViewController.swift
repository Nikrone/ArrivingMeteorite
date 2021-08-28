//
//  ViewController.swift
//  ArrivingMeteorite
//
//  Created by Evgeniy Nosko on 28.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var planetImageView: UIImageView!
    
    let animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear)

    override func viewDidLoad() {
        super.viewDidLoad()
        configurationInitialSetup()
        configureEndAnimations()
    }
    
    func configurationInitialSetup() {
        planetImageView.alpha = 0.0
        planetImageView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
    }
    
    func configureEndAnimations() {
        animator.addAnimations {
            self.planetImageView.alpha = 1.0
            self.planetImageView.transform = CGAffineTransform(scaleX: 3, y: 3)
        }
        
        animator.addAnimations({
            self.planetImageView.frame.origin.y = -400
        }, delayFactor: 0.6)
    }

    @IBAction func valueDoidChange(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}

