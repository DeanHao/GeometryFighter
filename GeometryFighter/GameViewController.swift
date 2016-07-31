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
	var cameraNode: SCNNode!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		confView()
		confCamera()
		createGeometry()
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
		
		scnScene.background.contents = "GeometryFighter.scnassets/Textures/Background_Diffuse.png"
		
		scnView.showsStatistics = true
		scnView.allowsCameraControl = true
		scnView.autoenablesDefaultLighting = true
	}
	
	func confCamera() {
		cameraNode = SCNNode()
		cameraNode.camera = SCNCamera()
		cameraNode.position = SCNVector3(x: 0, y: 0, z: 10)
		
		scnScene.rootNode.addChildNode(cameraNode)
	}
	
	func createGeometry() {
		var geometry: SCNGeometry
		
		switch Shape.random() {
		case .Box:
			geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
		case .Shpere:
			geometry = SCNSphere(radius: 1.0)
		case .Pyramid:
			geometry = SCNPyramid(width: 1.0, height: 1.0, length: 1.0)
		case .Torus:
			geometry = SCNTorus(ringRadius: 1.0, pipeRadius: 0.5)
		case .Capusle:
			geometry = SCNCapsule(capRadius: 1.0, height: 1.0)
		case .Cylinder:
			geometry = SCNCylinder(radius: 1.0, height: 2.0)
		case .Cone:
			geometry = SCNCone(topRadius: 0, bottomRadius: 1.0, height: 1.0)
		case .Tube:
			geometry = SCNTube(innerRadius: 0.5, outerRadius: 1.0, height: 2)
		}
		
		let geometryNode = SCNNode(geometry: geometry)
		scnScene.rootNode.addChildNode(geometryNode)
	}
	
}