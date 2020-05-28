//
//  WelcomeLoginVC.swift
//  KawalRumpunExperiment
//
//  Created by Firza Ilhami on 23/05/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import UIKit

class WelcomeLoginVC: UIViewController {

    @IBOutlet weak var goToLoginButton: RoundedButtonWithShadow!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTitleGoToLoginAttr()
    }
    
    func setTitleGoToLoginAttr() {
        // adding attribute for normal state
        let normalAttribute = NSMutableAttributedString(string: goToLoginButton.titleLabel?.text ?? "")
        normalAttribute.addAttribute(.foregroundColor, value: UIColor.lightGray, range: NSRange(location: 0, length: 5))
        normalAttribute.addAttribute(.font, value: UIFont.systemFont(ofSize: 20), range: NSRange(location: 0, length: 5) )
        normalAttribute.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 15, length: 16))
        
        // adding attribute for highlighted state
        let highlightedAttribute = NSMutableAttributedString(string: goToLoginButton.titleLabel?.text ?? "")
        highlightedAttribute.addAttribute(.foregroundColor, value: UIColor.lightGray, range: NSRange(location: 0, length: 31))
        highlightedAttribute.addAttribute(.font, value: UIFont.systemFont(ofSize: 20), range: NSRange(location: 0, length: 5) )
        
        // set attribute button
        goToLoginButton.setAttributedTitle(normalAttribute, for: .normal)
        goToLoginButton.setAttributedTitle(highlightedAttribute, for: .highlighted)
      
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
