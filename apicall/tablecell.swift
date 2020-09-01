//
//  tablecell.swift
//  apicall
//
//   Created by Bilal on 30/08/2020..
//  Copyright © 2020 Stars Developer. All rights reserved.
//

import UIKit

class tablecell: UITableViewCell {
    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var name:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
