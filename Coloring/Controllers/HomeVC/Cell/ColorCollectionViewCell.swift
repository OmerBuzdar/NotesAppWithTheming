//
//  ColorCollectionViewCell.swift
//  Soha
//
//  Created by Tabish Mahmood on 05/01/2024.
//

import UIKit
@_exported import SwiftPopup

class ColorCollectionViewCell: UICollectionViewCell {
    //MARK: - Outlets
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthConstraint: NSLayoutConstraint!
    
    //MARK: - Variables
    var plusButtonTapped: (()->())? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        plusBtn.isHidden = true
        colorView.layer.cornerRadius = 12
    }
    //MARK: - Action
    @IBAction func plusBtnClicked(_ sender: Any) {
        plusButtonTapped?()
    }
}
