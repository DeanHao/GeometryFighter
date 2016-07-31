//
//  GameViewController.swift
//  GeometryFighter
//
//  Created by DeanWang on 16/7/31.
//  Copyright (c) 2016年 Dean. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {
	
	var scnView: SCNView!
	var scnScene: SCNScene!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		confView()
	}
	
	override func shouldAutorotate() -> Bool {
		return true
	}
	
	override func prefersStatusBarHidden() -> Bool {
		return true
	}
	
	func confView() {
		scnView = self.view as! SCNView
		
		scnScene = SCNScene()
		scnView.scene = scnScene
	}
}