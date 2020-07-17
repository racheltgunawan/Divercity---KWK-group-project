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
    //@IBOutlet weak var articleLabel: UILabel!
    
    @IBOutlet weak var articleDropDown: UIButton!
    @IBOutlet weak var articleDropDown2: UIButton!
    
    @IBOutlet weak var businessButton: UIButton!
    //@IBOutlet weak var businessLabel: UILabel!
    @IBOutlet weak var businessDropDown: UIButton!
    
    
    @IBOutlet weak var petitionsButton: UIButton!
    //@IBOutlet weak var restaurantLabel: UILabel!
    @IBOutlet weak var petitionsDropDown: UIButton!
    @IBOutlet weak var petitionsDropDown2: UIButton!
    
    
    @IBAction func selectArticle(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            if self.articleDropDown.isHidden{
                self.movePosition(button: self.businessButton, label: self.businessDropDown, yPosition: Double(self.articleDropDown2.frame.origin.y + self.articleDropDown2.frame.size.height))
                self.movePosition(button: self.petitionsButton, label: self.petitionsDropDown, yPosition: Double(self.petitionsButton.frame.origin.y + (self.articleDropDown2.frame.size.height * 2)))
                self.petitionsDropDown2.frame.origin.y = self.petitionsDropDown2.frame.origin.y + self.articleDropDown.frame.size.height
                
            }else{
                self.movePosition(button: self.businessButton, label: self.businessDropDown, yPosition: 50.0)
                self.movePosition(button: self.petitionsButton, label: self.petitionsDropDown, yPosition: Double(self.petitionsButton.frame.origin.y - (self.articleDropDown2.frame.size.height * 2)))
                self.petitionsDropDown2.frame.origin.y = self.petitionsDropDown2.frame.origin.y - self.articleDropDown.frame.size.height
            }
        })
        self.articleDropDown2.isHidden = !self.articleDropDown2.isHidden
        self.articleDropDown.isHidden = !self.articleDropDown.isHidden
        self.view.layoutIfNeeded()
    }
    
    @IBAction func selectBusiness(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            if self.businessDropDown.isHidden{
                self.movePosition(button: self.petitionsButton, label: self.petitionsDropDown, yPosition: Double(self.petitionsButton.frame.origin.y + self.businessDropDown.frame.size.height))
                self.petitionsDropDown2.frame.origin.y = self.petitionsDropDown2.frame.origin.y + (self.businessDropDown.frame.size.height)
            }else{
                self.movePosition(button: self.petitionsButton, label: self.petitionsDropDown, yPosition: Double(self.petitionsButton.frame.origin.y - self.businessDropDown.frame.size.height))
                
                
                self.petitionsDropDown2.frame.origin.y = self.petitionsDropDown2.frame.origin.y - self.businessDropDown.frame.size.height
            }
        })
        self.businessDropDown.isHidden = !self.businessDropDown.isHidden
        self.view.layoutIfNeeded()
    }
    
    @IBAction func selectPetition(_ sender: Any) {
        UIView.animate(withDuration: 0.3, animations: {
            self.petitionsDropDown.frame.origin.y = self.petitionsButton.frame.origin.y + 50.0
            self.petitionsDropDown.isHidden = !self.petitionsDropDown.isHidden
            self.petitionsDropDown2.isHidden = !self.petitionsDropDown2.isHidden
        
    })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        articleDropDown.isHidden = true
        articleDropDown2.isHidden = true
        businessDropDown.isHidden = true
        petitionsDropDown.isHidden = true
    }
    func movePosition(button : UIButton, label : UIButton, yPosition : Double){
        button.frame = CGRect(x: 0.0, y: yPosition, width: 414.0, height: 50.0)
        label.frame.origin.y = button.frame.origin.y + 50.0
    }
    
    
    @IBAction func selectArticleDropDown(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.huffpost.com/entry/say-her-name-charleena-lyles-the-story-you-havent_b_59627e64e4b0cf3c8e8d59b0")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func selectArticleDropDown2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/p/CBmMN3UgxvJ/?igshid=r2lp5lmx7tp3")! as URL, options: [:], completionHandler: nil)
    }
    
    var businesses = ["https://bakedfromthehart.com/about/", "http://kingphillycheesesteaksseattle2.cafecityguide.website", "http://chickenexpressseattle2.cafecityguide.website", "https://www.facebook.com/pg/nanassouthernkitchen/posts/?ref=page_internal"]
    
    
    
    
    /*@IBAction func clickToSupportBusiness(_ sender: Any) {
    let number = Int.random(in: 0 ..< 4)
    UIApplication.shared.open(URL(string: "\(businesses[number])")! as URL, options: [:], completionHandler: nil)
    
    
    
    }*/
    
    //businessDropDown.titleLabel.numberOfLines = 2
    @IBAction func randomBusiness(_ sender: Any) {
        let number = Int.random(in: 0 ..< 4)
        UIApplication.shared.open(URL(string: "\(businesses[number])")! as URL, options: [:], completionHandler: nil)
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
