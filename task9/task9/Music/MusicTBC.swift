//
//  MusicTBC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 15.11.2024.
//

import UIKit

class MusicTBC: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var singerLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    private var inputModel: Music?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = inputModel?.title
        descriptionLabel.text = inputModel?.description
        coverImage.image = inputModel?.image
        singerLabel.text = inputModel?.singer
        genreLabel.text = inputModel?.genre
        
    }

    func configure(with model: Music?) {
        self.inputModel = model
    }
 }
