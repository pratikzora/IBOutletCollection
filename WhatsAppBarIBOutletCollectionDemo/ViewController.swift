//
//  ViewController.swift
//  WhatsAppBarIBOutletCollectionDemo
//
//  Created by Pratik Zora on 2020-10-11.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    // Generate IBOutlet Collection for Buttons.
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // Reset all buttons state to false to display outlined
        for btn in buttons {
            btn.isSelected = false
        }
        
        // Toggle selected button state
        sender.isSelected.toggle()
        
        // Configure Label according to user tapped button
        switch sender.tag {
        case 1:
            label.text = "You can check your friend's status here"
        case 2:
            label.text = "You can check your call logs here."
        case 3:
            label.text = "Smile Please, You are on Camera."
        case 4:
            label.text = "Lets Chats."
            
        case 5:
            label.text = "Configure your settings here."
        
        default:
        print("User has selected wrong choice!")
        }
        
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}

