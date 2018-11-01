//
//  CreativityView.swift
//  DrawingProject
//
//  Created by Cassat, Stephen on 11/1/18.
//  Copyright © 2018 Cassat Stephen. All rights reserved.
//

import UIKit

public class CreativityView : UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle()
        drawSquare()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 4.0

        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))

        

        return figure
    }
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawSquare() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint( x: 100, y: 130))
        logo.addLine(to: CGPoint(x: 100, y: 180))
        logo.move(to: CGPoint(x: 150, y: 190))
        logo.addLine(to: CGPoint(x: 100, y: 180))
        logo.close()
        logo.fill()
    }
    
}

