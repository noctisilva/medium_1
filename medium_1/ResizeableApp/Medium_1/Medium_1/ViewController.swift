//
//  ViewController.swift
//  Medium_1
//
//  Created by Tae Hong Min on 6/19/20.
//  Copyright © 2020 tableview.practice.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let bookText = ["Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten. Reading was my escape and my comfort, my consolation, my stimulant of choice: reading for the pure pleasure of it, for the beautiful stillness that surrounds you when you hear an author's words reverberating in your head.",
                         "Outside of a dog, a book is man's best friend. Inside of a dog it's too dark to read.",
                         "Sometimes, you read a book and it fills you with this weird evangelical zeal, and you become convinced that the shattered world will never be put back together unless and until all living humans read the book.",
                         "I declare after all there is no enjoyment like reading! How much sooner one tires of any thing than of a book! -- When I have a house of my own, I shall be miserable if I have not an excellent library.",
                         "Books are the ultimate Dumpees: put them down and they’ll wait for you forever; pay attention to them and they always love you back. There are worse crimes than burning books. One of them is not reading them.",
                         "I can never read all the books I want; I can never be all the people I want and live all the lives I want. I can never train myself in all the skills I want. And why do I want? I want to live and feel all the shades, tones and variations of mental and physical experience possible in my life. And I am horribly limited.",
                         "A great book should leave you with many experiences, and slightly exhausted at the end. You live several lives while reading.",
                         "Books are the perfect entertainment: no commercials, no batteries, hours of enjoyment for each dollar spent. What I wonder is why everybody doesn't carry a book around for those inevitable dead spots in life. So please, oh please, we beg, we pray, Go throw your TV set away, And in its place you can install A lovely bookshelf on the wall. Then fill the shelves with lots of books.",
                         "You get a little moody sometimes but I think that's because you like to read. People that like to read are always a little fucked up. You think your pain and your heartbreak are unprecedented in the history of the world, but then you read. It was books that taught me that the things that tormented me most were the very things that connected me with all the people who were alive, who had ever been alive."
    ]
    
    let imageNames = ["1","2","3","4","5","6","7","8","9"]
    
    let bookCellId = "BookCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         setup()
    }
    
    func setup() {
        self.view.addSubview(mainTableView)

    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return //
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return //
    }
    
    
}
