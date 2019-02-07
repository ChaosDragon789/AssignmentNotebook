//
//  DetailViewController.swift
//  AssignmentNotebook
//
//  Created by Ethan Chang on 2/6/19.
//  Copyright © 2019 SomeAweApps. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var descTextField: UITextView!
    
    var detailItem: Assignments? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let assignment = self.detailItem  {
            if nameTextField != nil{
                nameTextField.text = assignment.name
                subjectTextField.text = assignment.subject
                dateTextField.text = assignment.dueDate
                descTextField.text = assignment.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem{
            assignment.name = nameTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dateTextField.text!
            assignment.description = descTextField.text!
        }
    }
}

