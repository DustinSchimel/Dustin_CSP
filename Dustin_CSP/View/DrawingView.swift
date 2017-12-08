//
//  DrawingView.swift
//  Dustin_CSP
//
//  Created by Schimel, Dustin on 12/5/17.
//  Copyright © 2017 Schimel, Dustin. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect)
    {
        //Drawing code
        drawStickFigure().stroke()
        drawTurtle().stroke()
        drawKoalaBall().fill()
    }
    
    private func drawStickFigure() -> UIBezierPath
    {
        let stickFigure = UIBezierPath()
        
        UIColor.green.setStroke()
        stickFigure.lineWidth = 3.0
        
        stickFigure.addArc(withCenter: CGPoint(x: 200, y: 200),
                           radius: CGFloat(20),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise:true)
        stickFigure.move(to: CGPoint(x: 200, y: 220))
        stickFigure.addLine(to: CGPoint(x: 200, y: 270))
        stickFigure.move(to: CGPoint(x: 180, y: 240))
        stickFigure.addLine(to: CGPoint(x: 220, y: 240))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 180, y: 300))
        stickFigure.move(to: CGPoint(x: 200, y: 270))
        stickFigure.addLine(to: CGPoint(x: 220, y: 300))
        
        return stickFigure
    }
    
    public func drawKoalaBall() -> UIBezierPath
    {
        let koala = UIBezierPath()
        
        UIColor.green.setStroke()
        koala.lineWidth = 3.0
        
        koala.addArc(withCenter: CGPoint(x: 100, y: 75),
                           radius: CGFloat(50),
                           startAngle: CGFloat(0),
                           endAngle: CGFloat(2) * CGFloat.pi,
                           clockwise:false)
        UIColor(patternImage: UIImage(named: "cuteKoala")!).setFill() //FIX THIS AND SAVE THE IMAGE TO XCASSETS
        
        return koala
    }
    
    private func drawTurtle() -> UIBezierPath
    {
        let logo = UIBezierPath()
        UIColor.red.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
        
        return logo
    }

}
