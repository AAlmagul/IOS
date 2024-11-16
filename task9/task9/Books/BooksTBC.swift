//
//  BooksTBC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 15.11.2024.
//

import UIKit

class BooksTBC: UIViewController {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var coverImage: UIImageView!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var genreLabel: UILabel!

    private var inputModel: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = inputModel?.title
        descriptionLabel.text = inputModel?.description
        coverImage.image = inputModel?.image
        authorLabel.text = inputModel?.author
        genreLabel.text = inputModel?.genre
        
    }

    func configure(with model: Book?) {
        self.inputModel = model
    }
 }
