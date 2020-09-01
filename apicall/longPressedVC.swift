//
//  longPressedVC.swift
//  apicall
//
//   Created by Bilal on 30/08/2020.
//  Copyright © 2020 Stars Developer. All rights reserved.
//

import UIKit

@objc protocol tapProtocol {
   @objc optional func deleteDoneWithIndex()
}


class longPressedVC: UIViewController,UIGestureRecognizerDelegate {
    @IBOutlet weak var taplbl:UILabel!
    var delegate:tapProtocol? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

       let lpgr = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress))
        lpgr.minimumPressDuration = 0.5
        lpgr.delaysTouchesBegan = true
        lpgr.delegate = self
        self.view.addGestureRecognizer(lpgr)
    }
    
    @objc func handleLongPress(gestureReconizer: UILongPressGestureRecognizer) {
           if gestureReconizer.state != UIGestureRecognizer.State.ended {
               //When lognpress is start or running
            taplbl.text = "When lognpress is start or running"
            
           }
           else {
               //When lognpress is finish
            taplbl.text = "When lognpress is finish"
            self.delegate?.deleteDoneWithIndex!()
           }
       }
    

}
