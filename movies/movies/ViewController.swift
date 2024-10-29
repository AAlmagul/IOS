//
//  ViewController.swift
//  movies
//
//  Created by Алмагуль Абдыгали on 25.10.2024.
//

import UIKit

struct Movie {
    let cover: UIImage
    let title: String
    let year: String
    let genre: String
}

class ViewController: UIViewController {

    let favouriteMovies: [Movie] = [
        Movie( cover: #imageLiteral(resourceName: "final_destination"), title: "Final Destination", year: "2000", genre: "Horror, thriller, action"),
        Movie( cover: #imageLiteral(resourceName: "white_chicks"), title: "White Chicks", year: "2004", genre: "Comedy, crime, mystery"),
        Movie( cover: #imageLiteral(resourceName: "avengers"), title: "Avengers: Age of Ultron", year: "2015", genre: "Action, superhero, sci-fi"),
        Movie( cover: #imageLiteral(resourceName: "proposal"), title: "The Proposal", year: "2009", genre: "Romantic comedy, romance, comedy"),
        Movie( cover: #imageLiteral(resourceName: "htlg10d"), title: "How to Lose a Guy in 10 Days", year: "2003", genre: "Romantic comedy, romance, comedy"),
        Movie( cover: #imageLiteral(resourceName: "substance"), title: "The Substance", year: "2024", genre: ""),
        Movie( cover: #imageLiteral(resourceName: "shes_the_man"), title: "She's the Man", year: "2006", genre: "Romantic comedy, romance, comedy"),
        Movie( cover: #imageLiteral(resourceName: "spiderman"), title: "The Amazing Spider-Man", year: "2012", genre: "Action, superhero, sci-fi"),
        Movie( cover: #imageLiteral(resourceName: "ugly_truth"), title: "The Ugly Truth", year: "2009", genre: "Romantic comedy, romance, comedy"),
        Movie( cover: #imageLiteral(resourceName: "the_call"), title: "The call", year: "2013", genre: "Horror, thriller, action"),
        Movie( cover: #imageLiteral(resourceName: "10tihay"), title: "10 Things I Hate About You", year: "1999", genre: "Romantic comedy, romance, comedy"),
    ]

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteMovies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath) as! MovieTableViewCell
        let movie = favouriteMovies[indexPath.row]

        cell.configure(with: movie)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 250
    }
}
