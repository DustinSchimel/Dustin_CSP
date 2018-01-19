//
//  AlgorithmsView.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 10/26/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit

public class AlgorithmsView: UIViewController {

    @IBOutlet weak var algorithmText: UILabel!
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        // TODO: Define algorithm and all steps
        let algorithm :String = "These are the instructions to create a project in Swift using Xcode and Github \n"
        let stepOne :String = "First, open Xcode and select 'Create a new Xcode project', hit 'Single View App' and enter the info needed."
        let stepTwo :String = "Second, on GitHub hit 'File', then 'New Repository...'. Make the name the same as the Xcode project, and set the file path to it's location."
        let stepThree :String = "You've completed all the basic steps!"
        
        // TODO: Finish adding all steps to the algorithm
        algorithmSteps = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "⭐"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setupAlgorithm()
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
