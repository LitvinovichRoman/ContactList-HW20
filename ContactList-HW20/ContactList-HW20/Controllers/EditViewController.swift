//
//  ViewController.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 15.09.23.
//

import UIKit

class EditViewController: UIViewController,UIGestureRecognizerDelegate {
    // MARK: -  Views
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var infoLabel: UILabel!
    
    // MARK: -  TextFields
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    // MARK: -  Buttons
    @IBOutlet weak var editButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    @IBAction func EditButtonAction(_ sender: UIButton) {
      }
    
    
    private func setupUI(){
        nameTextField.placeholderColor = UIColor.white
        surnameTextField.placeholderColor = UIColor.white
        emailTextField.placeholderColor = UIColor.white
        phoneNumberTextField.placeholderColor = UIColor.white
        
        subView.roundElementEdges()
        subView.setShadow()
        subView.layer.maskedCorners = [.layerMinXMaxYCorner]
        
        editButton.roundElementByHeight()
        editButton.setShadow()
       
        swipeAction()
    }
    
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            return true
        }
    func swipeAction() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.hideKeyboardOnSwipeDown))
                swipeDown.delegate = self
        swipeDown.direction =  UISwipeGestureRecognizer.Direction.down
                self.view.addGestureRecognizer(swipeDown)
    }
    
    @objc func hideKeyboardOnSwipeDown() {
            view.endEditing(true)
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
