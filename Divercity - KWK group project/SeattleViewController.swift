//
//  SeattleViewController.swift
//  Divercity - KWK group project
//
//  Created by Apple on 7/15/20.
//  Copyright © 2020 Rachel Tiffany Gunawan. All rights reserved.
//

import UIKit

class SeattleViewController: UIViewController {

    @IBOutlet weak var articleButton: UIButton!
    @IBOutlet weak var articleLabel: UILabel!
    
    @IBOutlet weak var businessButton: UIButton!
    @IBOutlet weak var businessLabel: UILabel!
    
    @IBOutlet weak var restaurantButton: UIButton!
    @IBOutlet weak var restaurantLabel: UILabel!
    
    @IBAction func selectArticle(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            if self.articleLabel.isHidden{
                self.movePosition(button: self.businessButton, label: self.businessLabel, yPosition: Double(self.articleLabel.frame.origin.y + self.articleLabel.frame.size.height))
                self.movePosition(button: self.restaurantButton, label: self.restaurantLabel, yPosition: Double(self.restaurantButton.frame.origin.y + self.articleLabel.frame.size.height))
            }else{
                self.movePosition(button: self.businessButton, label: self.businessLabel, yPosition: 50.0)
                self.movePosition(button: self.restaurantButton, label: self.restaurantLabel, yPosition: Double(self.restaurantButton.frame.origin.y - self.articleLabel.frame.size.height))
            }
        })
        self.articleLabel.isHidden = !self.articleLabel.isHidden
        self.view.layoutIfNeeded()
    }
    
    @IBAction func selectBusiness(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            if self.businessLabel.isHidden{
                self.movePosition(button: self.restaurantButton, label: self.restaurantLabel, yPosition: Double(self.restaurantButton.frame.origin.y + self.businessLabel.frame.size.height))
            }else{
                self.movePosition(button: self.restaurantButton, label: self.restaurantLabel, yPosition: Double(self.restaurantButton.frame.origin.y - self.businessLabel.frame.size.height))
            }
        })
        self.businessLabel.isHidden = !self.businessLabel.isHidden
        self.view.layoutIfNeeded()
    }
    
    @IBAction func selectRestaurant(_ sender: Any) {
        restaurantLabel.frame.origin.y = restaurantButton.frame.origin.y + 50.0
        restaurantLabel.isHidden = !restaurantLabel.isHidden
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func movePosition(button : UIButton, label : UILabel, yPosition : Double){
        button.frame = CGRect(x: 0.0, y: yPosition, width: 414.0, height: 50.0)
        label.frame.origin.y = button.frame.origin.y + 50.0
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
