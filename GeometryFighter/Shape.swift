//
//  Shape.swift
//  GeometryFighter
//
//  Created by DeanWang on 16/7/31.
//  Copyright © 2016年 Dean. All rights reserved.
//

import Foundation

public enum Shape: Int {
	case Box = 0
	case Shpere
	case Pyramid
	case Torus
	case Capusle
	case Cylinder
	case Cone
	case Tube
	
	static func random() -> Shape {
		let maximum = Tube.rawValue
		let random = arc4random_uniform(UInt32(maximum + 1))
		return Shape(rawValue: Int(random))!
	}
}
