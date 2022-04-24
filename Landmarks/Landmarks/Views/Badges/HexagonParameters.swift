//
//  HexagonParameters.swift
//  Landmarks
//
//  Created by tomonakar on 2022/04/24.
//

import Foundation
import CoreGraphics

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adustment: CGFloat = 0.085
    
    static let segments = [
        Segment(
           line:    CGPoint(x: 0.60, y: 0.05),
           curve:   CGPoint(x: 0.40, y: 0.05),
           control: CGPoint(x: 0.50, y: 0.00)
        ),
        Segment(
           line:    CGPoint(x: 0.05, y: 0.20 + adustment),
           curve:   CGPoint(x: 0.00, y: 0.30 + adustment),
           control: CGPoint(x: 0.00, y: 0.25 + adustment)
        ),
        Segment(
           line:    CGPoint(x: 0.00, y: 0.70 - adustment),
           curve:   CGPoint(x: 0.05, y: 0.80 - adustment),
           control: CGPoint(x: 0.00, y: 0.75 - adustment)
        ),
        Segment(
           line:    CGPoint(x: 0.40, y: 0.95),
           curve:   CGPoint(x: 0.60, y: 0.95),
           control: CGPoint(x: 0.50, y: 1.00)
        ),
        Segment(
           line:    CGPoint(x: 0.95, y: 0.80 - adustment),
           curve:   CGPoint(x: 1.00, y: 0.70 - adustment),
           control: CGPoint(x: 1.00, y: 0.75 - adustment)
        ),
        Segment(
           line:    CGPoint(x: 1.00, y: 0.30 + adustment),
           curve:   CGPoint(x: 0.95, y: 0.20 + adustment),
           control: CGPoint(x: 1.00, y: 0.25 + adustment)
        )
    ]
}

