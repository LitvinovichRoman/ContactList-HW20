//
//  TableViewController.swift
//  Solved HW
//
//  Created by Martynov Evgeny on 05.07.21.
//

import UIKit

class TableViewController: UITableViewController {
    let person = Person.self
    let persons = PersonData.createPersons().sorted { a, b -> Bool in
        a.sureName < b.sureName
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        self.navigationItem.rightBarButtonItem = editButtonItem
    }
        
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.sureName
        cell.detailTextLabel?.text = person.name
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
           let destinationController = segue.destination as? PersonInfoViewController {
            let person = persons[indexPath.row]
            destinationController.emailLabelText = person.email
            destinationController.phoneNumberLabelText = person.phoneNumber
        }
    }
    
    
}

    
   
    

    
  
    
    

    
