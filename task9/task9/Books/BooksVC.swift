//
//  BooksVC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 14.11.2024.
//

import UIKit

class BooksVC: UIViewController {

    private var books: [Book] = [
        Book(
            title: "Pride and Prejudice",
            description: "'Pride and Prejudice is the second novel by English author Jane Austen, published in 1813. A novel of manners, it follows the character development of Elizabeth Bennet, the protagonist of the book, who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.",
            image: .b1 ,
            author: " Jane Austen",
            genre: "Romance novel",
            isFavorite: false
        ),
        Book(
            title: "It's time for you to make mistakes.",
            description: "Fear of making mistakes stops us from acting here and now. We are afraid to write to old friends because it may look stupid. We are embarrassed to ask questions whose answers may seem obvious.",
            image: .b2 ,
            author: "Kim Eun Joo",
            genre: "Pshycology",
            isFavorite: false
        ),
        Book(
            title: "We",
            description: "We is a dystopian novel by Russian writer Yevgeny Zamyatin that was written in 1920–1921. It was first published as an English translation by Gregory Zilboorg in 1924 by E. P. Dutton in New York, with the original Russian text first published in 1952. ",
            image: .b3 ,
            author: "Yevgeny Zamyatin",
            genre: "Dystopian Fiction",
            isFavorite: false
        ),
        Book(
            title: "Divine Comedy",
            description: "The Divine Comedy is an Italian narrative poem by Dante Alighieri, begun c. 1308 and completed around 1321, shortly before the author's death. It is widely considered the pre-eminent work in Italian literature and one of the greatest works of Western literature.",
            image: .b4,
            author: "Dante Alighieri",
            genre: "Narrative poem",
            isFavorite: false
        ),
        Book(
            title: "If i had my life to live over",
            description: "Kim Hae Nam, a practicing psychotherapist, dreamed of going to America to study psychoanalysis. Everything seemed fine, but at 43 she was diagnosed with Parkinson's disease. Life became unstable",
            image: .b5,
            author: "Kim Hae Nam",
            genre: "Pschycology",
            isFavorite: false
        ),
        Book(
            title: "I'll take a break today.",
            description: "When we run, we seem to lose touch with reality. We don’t see our children growing up, our parents getting old, people passing away. But most importantly, we don’t notice ourselves.",
            image: .b6,
            author: "Him-chan Son",
            genre: "Pschycology",
            isFavorite: false
            
        ),
        Book(
            title: "Harry Potter and the Philosopher's Stone",
            description: "Harry Potter, an eleven-year-old orphan, discovers that he is a wizard and is invited to study at Hogwarts. Even as he escapes a dreary life and enters a world of magic, he finds trouble awaiting him.",
            image: .b7,
            author: "J. K. Rowling",
            genre: "Fantasy novel",
            isFavorite: false
        ),
        Book(
            title: "Murder on the Orient Express",
            description: "Murder on the Orient Express is a work of detective fiction by English writer Agatha Christie featuring the Belgian detective Hercule Poirot. It was first published in the United Kingdom by the Collins Crime Club on 1 January 1934.",
            image: .b8,
            author: "Agatha Christie",
            genre: "Dtective",
            isFavorite: false
        ),
        Book(
            title: "Little Women",
            description: "Little Women is a coming-of-age novel written by American novelist Louisa May Alcott, originally published in two volumes, in 1868 and 1869. The story follows the lives of the four March sisters—Meg, Jo, Beth, and Amy—and details their passage from childhood to womanhood.",
            image: .b9 ,
            author: "May Alcott",
            genre: "Novel",
            isFavorite: false
        ),
        Book(
            title: "Fahrenheit 451",
            description: "Fahrenheit 451 is a 1953 dystopian novel by American writer Ray Bradbury. It presents a future American society where books have been outlawed and 'firemen' burn any that are found.",
            image: .b10,
            author: "Ray Bradbury",
            genre: "Dystopian Fiction",
            isFavorite: false
        ),
        Book(
            title: "Me Before You",
            description: "Me Before You is a romance novel written by Jojo Moyes. The book was first published on 5 January 2012 in the United Kingdom. A sequel titled After You was released on 24 September 2015 through Pamela Dorman Books.",
            image: .b11,
            author: "Jojo Moyes",
            genre: "Romance novel",
            isFavorite: false
        ),
    ]

    @IBOutlet private weak var tableView: UITableView!

    private var selectedBook: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? BooksTBC else {
            return
        }
        destVC.configure(with: selectedBook)
    }
}

extension BooksVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBook = books[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension BooksVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "primaryCell", for: indexPath) as! PrimaryBooksTBC
        let currentModel = books[indexPath.row]
        cell.configure(currentModel)
        return cell
    }
}
