//
//  ViewController.swift
//  Plist Opener
//
//  Created by Brian Hill on 5/2/16.
//

import UIKit

class TitleViewController: UIViewController {
    
    var plistTitle: String! = nil
    
    var errorTitle: String! = nil
    
    @IBOutlet weak var errorView: UIView!
    
    @IBOutlet weak var titleTextField: UITextField! = nil

    @IBOutlet weak var errorLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        titleTextField.text = plistTitle
        if errorTitle != "" {
            errorLabel.text = errorTitle
            errorLabel.textColor = UIColor.redColor()
            errorLabel.textAlignment = NSTextAlignment.Center
            errorView.hidden = false
        }
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
