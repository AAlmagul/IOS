//
//  PrimaryMusicTBC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 15.11.2024.
//

import UIKit

class PrimaryMusicTBC: UITableViewCell {
    
    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var singerLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(_ model: Music) {
        titleLabel.text = model.title
        coverImage.image = model.image
        singerLabel.text = model.singer
        genreLabel.text = model.genre
    }

}
