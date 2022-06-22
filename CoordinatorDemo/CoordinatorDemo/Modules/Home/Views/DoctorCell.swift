//
//  DoctorCell.swift
//  CoordinatorDemo
//
//  Created by Rana Ijaz Ahmad on 22/06/2022.
//

import UIKit

class DoctorCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var doctorImage: UIImageView!
    @IBOutlet weak var speciality: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var perHourCharges: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValues(doctor: Doctor){
        
        nameLbl.text = doctor.name
        doctorImage.image = UIImage(named: doctor.picURL ?? "") //doctorImage.loadImage(urlString: doctor.picURL ?? "")
        speciality.text = doctor.speciality
        rating.text = String(describing: doctor.rating ?? 0.0)
        perHourCharges.text = "$\(doctor.perHourCharges ?? 0)/hour"
        
    }
    
}
