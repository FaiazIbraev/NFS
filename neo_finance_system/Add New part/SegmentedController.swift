//
//  SegmentedController.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 13/10/22.
//

import UIKit

extension UISegmentedControl{
    func replaceSegments(segments: Array<String>){
        self.removeAllSegments()
        for segment in segments {
            self.insertSegment(withTitle: segment, at: self.numberOfSegments, animated: false)
        }
    }
}
