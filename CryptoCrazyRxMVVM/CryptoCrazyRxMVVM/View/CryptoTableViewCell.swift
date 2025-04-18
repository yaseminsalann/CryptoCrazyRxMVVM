//
//  CryptoTableViewCell.swift
//  CryptoCrazyRxMVVM
//
//  Created by Yasemin salan on 18.04.2025.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {

    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public var item : Crypto! {
        didSet {
            guard let item = item else { return }
            nameLabel.text = item.currency
            priceLabel.text = "\(item.price)"
        }
    }
}
