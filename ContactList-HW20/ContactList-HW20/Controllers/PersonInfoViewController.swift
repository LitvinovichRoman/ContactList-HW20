//
//  PersonInfoViewController.swift
//  ContactList-HW20
//
//  Created by Роман Литвинович on 16.09.23.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var emailSubView: UIView!
    @IBOutlet weak var phoneSubView: UIView!
    
    
    @IBOutlet weak var emailInfoLabel: UILabel!
    @IBOutlet weak var phoneInfoLabel: UILabel!

    @IBOutlet weak var updateInfoButton: UIButton!
    
    var emailLabelText: String?
    var phoneNumberLabelText: String?
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func updateInfoButtonAction(_ sender: UIButton) {
    }
    
    
    
    
    
    
    private func setupUI() {
           emailSubView.roundElementByHeight()
           emailSubView.setShadow()
           
           phoneSubView.roundElementByHeight()
           phoneSubView.setShadow()
           
           infoView.layer.maskedCorners = [.layerMinXMaxYCorner]
           infoView.roundElementEdges()
           infoView.setShadow()
        
           emailInfoLabel.text = emailLabelText
           phoneInfoLabel.text = phoneNumberLabelText
        
           updateInfoButton.roundElementByHeight()
        updateInfoButton.setShadow()
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
