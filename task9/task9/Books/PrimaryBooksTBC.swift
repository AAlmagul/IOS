//
//  PrimaryMusicTBC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 15.11.2024.
//

import UIKit

class PrimaryBooksTBC: UITableViewCell {
    
    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(_ model: Book) {
        titleLabel.text = model.title
        coverImage.image = model.image
        authorLabel.text = model.author
        genreLabel.text = model.genre
    }

}
