//
//  CustomCityViewCell.swift
//  Wheather App
//
//  Created by Admin on 07.01.2021.
//

import UIKit

class CustomCityViewCell: UITableViewCell {
    @IBOutlet weak var cityEmblemView: UIImageView! {
        didSet {
            self.cityEmblemView.layer.borderColor = UIColor.label.cgColor
            self.cityEmblemView.layer.borderWidth = 2
        }
    }
    
    @IBOutlet weak var cityTitleLabel: UILabel! {
        didSet {
            self.cityTitleLabel.textColor = UIColor(named: "Default")
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(city: String, emblem: UIImage) {
        self.cityTitleLabel.text = city
        self.cityEmblemView.image = emblem
        //self.alpha = 0
      // self.backgroundColor = UIColor.white
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.cityTitleLabel.text = nil
        self.cityEmblemView.image = nil
    }

    override func layoutIfNeeded() {
        super.layoutIfNeeded()
            
        cityEmblemView.clipsToBounds = true
        cityEmblemView.layer.cornerRadius = cityEmblemView.frame.width / 2
    }

}
