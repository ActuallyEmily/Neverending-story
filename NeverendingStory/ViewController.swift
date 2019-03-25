//
//  ViewController.swift
//  NeverendingStory
//
//  Created by Emily Hall on 22/03/2019.
//  Copyright © 2019 Emily Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Defining the tableview as "Options"
    @IBOutlet weak var Options: UITableView!
    
    // Defining the options to be chosen by the user in an array
    var stringOptions = ["Go left...","Go right...","Go straight ahead..."]
    
    // Loading function that occurs straight away
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Options.dataSource = self
        Options.delegate = self
    }
    
    // Number of rows in the tableview set to the number of options in the array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringOptions.count
    }

    // Setting each row in the tableview with a label from the array
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = stringOptions[indexPath.row]
            return cell
    }

    // Setting a segue to perform in the event of a row being selected by the user
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionChosen = stringOptions[indexPath.row]
        performSegue(withIdentifier: "firstOption", sender: optionChosen)
    }
    
    // Preparing the selected option to be transferred to the next view controller during segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let oneVC = segue.destination as! OptionFirstViewController
        oneVC.optionChosen = sender as! String
    }
    
    
    
}

