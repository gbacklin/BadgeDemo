//
//  ViewController.swift
//  BadgeDemo
//
//  Created by Gene Backlin on 10/16/19.
//  Copyright © 2019 Gene Backlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: BadgeImageView!
    
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage(number: appDelegate.badgeNumber)
    }

    @IBAction func incrementBadgeNumber(_ sender: Any) {
        updateImage(number: appDelegate.badgeNumber + 1)
    }
    
    @IBAction func decrementBadgeNumber(_ sender: Any) {
        updateImage(number: appDelegate.badgeNumber - 1)
   }
    
    func updateImage(number: Int) {
        if number < 1 {
            appDelegate.updateBadgeNumber(number: 0)
            imageView.image = UIImage(named: "ic_open_issues")
        } else {
            appDelegate.updateBadgeNumber(number: number)
            if number < 10 {
                imageView.textToImage(drawText: "\(number)", inImage: UIImage(named: "ic_open_issues_badge")!, atPoint: CGPoint(x: 59, y: 3))
            } else {
                imageView.textToImage(drawText: "\(number)", inImage: UIImage(named: "ic_open_issues_badge")!, atPoint: CGPoint(x: 55, y: 3))
            }
        }
    }
    
}

