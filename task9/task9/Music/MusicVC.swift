//
//  MusicVC.swift
//  task9
//
//  Created by Алмагуль Абдыгали on 14.11.2024.
//

import UIKit

class MusicVC: UIViewController {

    private var songs: [Music] = [
        Music(
            title: "That's What I Like",
            description: "'That's What I Like' is a song by American singer-songwriter Bruno Mars from his third studio album, 24K Magic (2016). The song was written by Mars, Philip Lawrence, Christopher Brody Brown, James Fauntleroy, Johnathan Yip, Ray Romulus, Jeremy Reeves, and Ray McCullough II. ",
            image: ._1 ,
            singer: "Bruno Mars",
            genre: "Hip hop soul",
            isFavorite: false
        ),
        Music(
            title: "Bloodline",
            description: "'Bloodline' is a song by American singer Ariana Grande from her fifth studio album, Thank U, Next (2019) through Republic Records. It was written by Ariana Grande, Savan Kotecha, and its producers Max Martin and Ilya Salmanzadeh.",
            image: ._2,
            singer: "Ariana Grande",
            genre: "Reggae, Pop",
            isFavorite: false
        ),
        Music(
            title: "Lovesong",
            description: "'Lovesong' (sometimes listed as 'Love Song') is the tenth track on Adele's album 21. It is a song originally recorded by the English alternative rock band The Cure, released as the third single from their eighth studio album Disintegration in 1989. ",
            image: ._3,
            singer: "Adele",
            genre: "Soul",
            isFavorite: false
        ),
        Music(
            title: "Die with a smile",
            description: "'Die with a Smile' is a song by American singer-songwriters Lady Gaga and Bruno Mars. It was released on August 16, 2024, through Interscope Records. They wrote and produced the track alongside Dernst 'D'Mile' Emile II and Andrew Watt while James Fauntleroy provided additional songwriting.",
            image: ._4,
            singer: "Bruno Mars, Lady Gaga",
            genre: "Soft rock",
            isFavorite: false
        ),
        Music(
            title: "Kozder",
            description: "Ayau – ein beliebter kasachischer Musiker und Songwriter, Künstler, der M'Dee zum „Vereinigten Club“ gemacht hat. Es ist eine beliebte Musik- und R&B-Musik aus dem Ausland. Ich habe den ersten Teil des Tracks „sybyrlaiyn <3“ gelesen, der in Kasachstan gefunden wurde.",
            image: ._5,
            singer: "Ayau",
            genre: "pop",
            isFavorite: false
        ),
        Music(
            title: "Loyalty",
            description: "'Loyalty' is a song by American rapper Kendrick Lamar featuring Barbadian singer Rihanna from the former's fourth studio album Damn, released on April 14, 2017. The song was later sent to urban and rhythmic radio June 20, 2017, as the second single from the album.",
            image: ._6,
            singer: "Kendrick Lamar, Rihanna",
            genre: "Contemporary R&B",
            isFavorite: false
            
        ),
        Music(
            title: "She's my collar",
            description: "She's My Collar is the seventeenth track on Gorillaz' 2017 album 'Humanz'. It features vocals from singer and songwriter Kali Uchis.",
            image: ._7,
            singer: "Gorillaz, Kali Uchis",
            genre: "Alternative/Indie",
            isFavorite: false
        ),
        Music(
            title: "Les",
            description: "Camp is the debut studio album by American rapper Donald Glover, under his stage name Childish Gambino. It was released on November 15, 2011, by Glassnote Records. ",
            image: ._8,
            singer: "Childish Gambino",
            genre: "Hip-hop",
            isFavorite: false
        ),
        Music(
            title: "Finesse",
            description: "'Finesse' is a song by American singer Bruno Mars from his third studio album, 24K Magic (2016). The lyrics demonstrate the happiness of being with who one loves and the positive outcome of that for them and others. Musically, it is a new jack swing, hip hop soul and funk song. ",
            image: ._11,
            singer: "Bruno Mars, Cardi B",
            genre: "Hip-hop soul",
            isFavorite: false
        ),
        Music(
            title: "Partition",
            description: "'Partition' is a song recorded by American singer and songwriter Beyoncé for her self-titled fifth studio album released in 2013.The song was sent to urban contemporary on February 25, 2014 as the third single from Beyoncé by Columbia Records.",
            image: ._9,
            singer: "Beyonce",
            genre: "R&B/Soul",
            isFavorite: false
        ),
        Music(
            title: "So high",
            description: "'So High' is the debut single by American rapper and singer Doja Cat. She originally self-published an early version of the song exclusively to SoundCloud on November 8, 2012 at the age of 17. ",
            image: ._10,
            singer: "Doja Cat",
            genre: "R&B/Soul",
            isFavorite: false
        ),
    ]

    @IBOutlet private weak var tableView: UITableView!

    private var selectedMusic: Music?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? MusicTBC else {
            return
        }
        destVC.configure(with: selectedMusic)
    }
}

extension MusicVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMusic = songs[indexPath.row]
        performSegue(withIdentifier: "goToDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension MusicVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "primaryCell", for: indexPath) as! PrimaryMusicTBC
        let currentModel = songs[indexPath.row]
        cell.configure(currentModel)
        return cell
    }
}
