//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(0)
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle ?? ""
        
        updateUI(storyBrain.nextStory(userChoice))
        
    }
    
    func updateUI(_ storyNumber: Int) {
        storyLabel.text = storyBrain.stories[storyNumber].title
        
        choice1Button.setTitle(storyBrain.stories[storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyNumber].choice2, for: .normal)
    }
}

