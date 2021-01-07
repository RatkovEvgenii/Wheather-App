//
//  WeatherCell.swift
//  Wheather App
//
//  Created by Admin on 02.01.2021.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    @IBOutlet weak var weather: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var shadowView: UIView!{
        didSet {
            self.shadowView.layer.borderColor = UIColor.label.cgColor
            self.shadowView.layer.borderWidth = 2
            //            self.shadowView.layer.shadowOffset = .zero
            //            self.shadowView.layer.shadowOpacity = 0.75
            //            self.shadowView.layer.shadowRadius = 6
            //            self.shadowView.backgroundColor = .clear
            //            self.clipsToBounds = true
        }
    }
        
    
    override func layoutSubviews() {
        super.layoutSubviews()

        self.shadowView.layer.shadowPath = UIBezierPath(ovalIn: self.shadowView.bounds).cgPath
      self.shadowView.layer.cornerRadius = self.shadowView.frame.width / 2
    }
//    override func layoutIfNeeded() {
//        super.layoutIfNeeded()
//
//        shadowView.clipsToBounds = true
//        shadowView.layer.cornerRadius = shadowView.frame.width / 2
//    }


    
}
