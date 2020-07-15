//
//  ViewController.swift
//  Divercity - KWK group project
//
//  Created by Rachel Tiffany Gunawan on 7/14/20.
//  Copyright © 2020 Rachel Tiffany Gunawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func seattle(_ sender: UIButton) {
    }

    @IBAction func louisville(_ sender: UIButton) {
    }

    @IBAction func minneapolis(_ sender: UIButton) {
    let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func newyork(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func aurora(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func losangeles(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func chicago(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func houston(_ sender: UIButton) {
    let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "Okay", style: .default))
    self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func columbus(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Sorry!", message: "This page is coming soon!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
}

