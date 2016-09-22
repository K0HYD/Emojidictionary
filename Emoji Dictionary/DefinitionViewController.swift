//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Dale Puckett on 9/19/16.
//  Copyright © 2016 k0hyd. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet var createdLabel: UILabel!
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var definitionLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "✈️" {
            definitionLabel.text = "An airplane to fly away"
            categoryLabel.text = "Travel"
            createdLabel.text = "2014"
        }
        if emoji == "😜" {
            definitionLabel.text = "Winking faced with stuck out tonuge"
            categoryLabel.text = "Smiley"
            createdLabel.text = "2013"
        }
        if emoji == "👲" {
            definitionLabel.text = "A man with Chinese cap"
        }
        if emoji == "🍾" {
            definitionLabel.text = "Champagne for a celebration"
        }
        if emoji == "❤" {
            definitionLabel.text = "A warm heart"
        }
        if emoji == "😉" {
            definitionLabel.text = "Winking face"
        }
        if emoji == "🎈" {
            definitionLabel.text = "A balloon for a party"
        }
        if emoji == "🚌" {
            definitionLabel.text = "Bus trip"
        }
        if emoji == "😈" {
            definitionLabel.text = "Smiling face with horns"
        }
        if emoji == "😍" {
            definitionLabel.text = "Smiling face with heart shaped eyes"
        }
        if emoji == "🚗" {
            definitionLabel.text = "A car for your road trip"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
