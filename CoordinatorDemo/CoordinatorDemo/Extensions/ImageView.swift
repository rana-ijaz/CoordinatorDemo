//
//  ImageView.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import UIKit.UIImageView

extension UIImageView {
    func loadImage(urlString: String) {
        if let url = URL(string: urlString ) {
            print("Image url: \(url)")
            // load image
        }
    }
}
