//
//  MovieTableViewCell.swift
//  movies
//
//  Created by Алмагуль Абдыгали on 26.10.2024.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with movie: Movie) {
        coverImage.image = movie.cover
        titleLabel.text = movie.title
        yearLabel.text = movie.year
    }

}
