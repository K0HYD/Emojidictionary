//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Dale Puckett on 9/19/16.
//  Copyright © 2016 k0hyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var emojiTableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTableview.dataSource = self
        emojiTableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "MoveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "✈️"
        emoji1.category = "Travel"
        emoji1.createddate = 2014
        emoji1.definition = "An airplane"
    
            let emoji2 = Emoji()
        emoji2.stringEmoji = "😜"
        emoji2.category = "Smiley"
        emoji2.createddate = 2015
        emoji2.definition = "Winking face with tongue out"

        let emoji3 = Emoji()
        emoji3.stringEmoji = "👲"
        emoji3.category = "Smiley"
        emoji3.createddate = 2012
        emoji3.definition = "Man with Chinese cap"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🍾"
        emoji4.category = "Object"
        emoji4.createddate = 2013
        emoji4.definition = "Champagne for a celebration"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "❤"
        emoji5.category = "Object"
        emoji5.createddate = 2014
        emoji5.definition = "A warm heart"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😉"
        emoji6.category = "Smiley"
        emoji6.createddate = 2011
        emoji6.definition = "Winking Face"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🎈"
        emoji7.category = "Object"
        emoji7.createddate = 2016
        emoji7.definition = "Party Balloon"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🚌"
        emoji8.category = "Travel"
        emoji8.createddate = 2012
        emoji8.definition = "City Bus"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "😈"
        emoji9.category = "Smiley"
        emoji9.createddate = 2015
        emoji9.definition = "Smiling face with horns"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "😍"
        emoji10.category = "Smiley"
        emoji10.createddate = 1012
        emoji10.definition = "Smiley face with heart shaped eyes"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🚗"
        emoji11.category = "Travel"
        emoji11.createddate = 2014
        emoji11.definition = "A car for your road trip"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11]
   }
}
