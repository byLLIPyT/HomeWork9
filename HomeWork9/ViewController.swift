//
//  ViewController.swift
//  HomeWork9
//
//  Created by Александр Уткин on 19/08/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springLabel: UILabel!
    @IBOutlet var runButton: SpringButton!
    @IBOutlet var springView: SpringView!
    
    var animationCount = 0
    var animatedStruct: [animated] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animatedStruct = createAnimated()
    }

    @IBAction func startSpringAnimation() {
        
        switch animationCount {
        case 0:
            print("Анимация 1")
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.titleLabel?.text = animatedStruct[0].text
            } else {
                runButton.titleLabel?.text = animatedStruct[animationCount + 1].text
            }
            animationCount += 1
        case 1:
            print("Анимация 2")
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1 {
                runButton.titleLabel?.text = animatedStruct[0].text
            } else {
                runButton.titleLabel?.text = animatedStruct[animationCount + 1].text
            }
            animationCount += 1
        case 2:
            print("Анимация 3")
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.titleLabel?.text = animatedStruct[0].text
            } else {
                runButton.titleLabel?.text = animatedStruct[animationCount + 1].text
            }
            animationCount += 1
        case 3:
            print("Анимация 4")
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.titleLabel?.text = animatedStruct[0].text
            } else {
                runButton.titleLabel?.text = animatedStruct[animationCount + 1].text
            }
            animationCount += 1
        case 4:
            print("Анимация 5")
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.titleLabel?.text = animatedStruct[0].text
            } else {
                runButton.titleLabel?.text = animatedStruct[animationCount + 1].text
            }
            animationCount += 1
        case 5:
            print("Сброс")
            animationCount = 0
        default:
            break
        }
    }
    
    func startAnimation(animation: animated){
            springView.animation = animation.animation
            springView.curve = animation.curve
            springView.force = animation.force
            springView.duration = animation.duration
            springView.delay = animation.delay
            springView.animate()
    }
    
    func createAnimated() -> [animated] {
        let anim = [
        animated(animation: "wobble",
                 curve: "spring",
                 force: 2.7,
                 duration: 2.9,
                 delay: 1.8,
                 text:"animated: AAA, curve: 2, force: 2, duration:1, delay: 1"),
        animated(animation: "fall",
                 curve: "easeIn",
                 force: 1.8,
                 duration: 1,
                 delay: 2,
                 text:"animated: AAA, curve: 2, force: 2, duration:1, delay: 1"),
        animated(animation: "slideUp",
                 curve: "easeInOutBack",
                 force: 1,
                 duration: 2,
                 delay: 1,
                 text:"animated: AAA, curve: 2, force: 2, duration:1, delay: 1"),
        animated(animation: "fadeOut",
                 curve: "easeInCirc",
                 force: 1,
                 duration: 1,
                 delay: 1,
                 text:"animated: AAA, curve: 2, force: 2, duration:1, delay: 1"),
        animated(animation: "swing",
                 curve: "easeInCirc",
                 force: 2,
                 duration: 1,
                 delay: 3,
                 text:"animated: AAA, curve: 2, force: 2, duration:1, delay: 1")
        ]
        return anim
    }
}



