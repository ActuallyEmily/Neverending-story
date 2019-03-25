//
//  OptionFirstViewController.swift
//  NeverendingStory
//
//  Created by Emily Hall on 25/03/2019.
//  Copyright © 2019 Emily Hall. All rights reserved.
//

import UIKit

class OptionFirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Defining the optionChosen that is passed over from ViewController
    var optionChosen = ""
    
    // Defining the options the user can select on the prev screen that are passed over the segue
    var prevStringOptions = ["Go left...","Go right...","Go straight ahead..."]
    
    // Defining the option chosen into a sentence to be passed onto the YouChoseLabel
    var YouChose = ["You chose to go left, on to the desert plains...","You chose to go right, on to the mountainous track...","You chose to go straight ahead into the deep and dark forest..."]
    
    // Defining the storyline in an array based on the previous option
    var storylineOptions = ["Storyline for going left","Storyline for going right","Storyline for going straight ahead"]
    
    // Defining the storyline choices in an array based on the previous option
    var storychoicesOptions = ["Storychoices for left","Storychoices for right", "Storychoices for ahead"]
    
    // Defining the options to be chosen on this screen
    var stringOptions = ["Option1", "Option2", "Option3"]
    
    // Defining the title label so it can be altered based on the users previous choice
    @IBOutlet weak var YouChoseLabel: UILabel!
    
    // Defining the storyline label so it can be altered based on the users previous choice
    @IBOutlet weak var StoryLine: UILabel!
    
    // Defining the storychoices label so it can be altered based on the users previous choice
    @IBOutlet weak var StoryChoices: UILabel!
    
    // Defining the table view so the next options can be added to it
    @IBOutlet weak var Options: UITableView!
    
    // Loading functon that occurs straight away
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Options.dataSource = self
        Options.delegate = self
        
        // Code that alters the title label based on the option chosen previously
        var placeholder = 0
        while placeholder < prevStringOptions.count {
            if optionChosen == prevStringOptions[placeholder] {
                YouChoseLabel.text = YouChose[placeholder]
            }
            placeholder += 1
        }
    }
    
    // When the user clicks on an option in the table view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    // Number of rows in the tableview equal to the number of options
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = stringOptions[indexPath.row]
        return cell
    }
    
}
