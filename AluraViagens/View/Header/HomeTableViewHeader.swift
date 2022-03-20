//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Juliano Santos on 19/3/22.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: -- IBOutlets
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var BannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.00, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
}
