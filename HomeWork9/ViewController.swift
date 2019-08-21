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
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.setTitle(animatedStruct[0].text, for: .normal)
            } else {
                runButton.setTitle(animatedStruct[animationCount + 1].text, for: .normal)
            }
            animationCount += 1
        case 1:
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.setTitle(animatedStruct[0].text, for: .normal)
            } else {
                runButton.setTitle(animatedStruct[animationCount + 1].text, for: .normal)
            }
            animationCount += 1
        case 2:
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.setTitle(animatedStruct[0].text, for: .normal)
            } else {
                runButton.setTitle(animatedStruct[animationCount + 1].text, for: .normal)
            }
            animationCount += 1
        case 3:
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.setTitle(animatedStruct[0].text, for: .normal)
            } else {
                runButton.setTitle(animatedStruct[animationCount + 1].text, for: .normal)
            }
            animationCount += 1
        case 4:
            startAnimation(animation: animatedStruct[animationCount])
            springLabel.text = animatedStruct[animationCount].text
            if animationCount == animatedStruct.count - 1{
                runButton.setTitle(animatedStruct[0].text, for: .normal)
            } else {
                runButton.setTitle(animatedStruct[animationCount + 1].text, for: .normal)
            }
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
                 text:"animated: wobble, curve: spring"),
        animated(animation: "fall",
                 curve: "easeIn",
                 force: 1.8,
                 duration: 1,
                 delay: 2,
                 text:"animated: fall, curve: easeIn"),
        animated(animation: "slideUp",
                 curve: "easeInOutBack",
                 force: 1,
                 duration: 2,
                 delay: 1,
                 text:"animated: slideUp, curve: easeInOutBack"),
        animated(animation: "fadeOut",
                 curve: "easeInCirc",
                 force: 2,
                 duration: 1,
                 delay: 0,
                 text:"animated: fadeOut, curve: easeInCirc"),
        animated(animation: "swing",
                 curve: "easeInCirc",
                 force: 2,
                 duration: 1.5,
                 delay: 0.5,
                 text:"animated: swing, curve: easeInCirc")
        ]
        return anim
    }
}



