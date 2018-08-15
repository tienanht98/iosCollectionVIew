//
//  myCollectionViewCell.swift
//  cltview
//
//  Created by Trần Tiến Anh on 8/14/18.
//  Copyright © 2018 iAnh. All rights reserved.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var BTLIke_OL: UIButton!
    var bRec:Bool = false
    @IBAction func btlike(_ sender: Any) {
        bRec = !bRec
        if (bRec == true) {
            BTLIke_OL.setImage(UIImage(named: "like"), for:.normal )
            
        } else {
            BTLIke_OL.setImage(UIImage(named: "heart"), for:.normal )
            
        }
    }
    
    
}
