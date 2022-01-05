//
//  ViewController.swift
//  TinyToyTank
//
//  Created by nju on 2022/1/4.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    var tankAnchor: TinyToyTank._TinyToyTank?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        arView.scene.anchors.append(tankAnchor!)
        // Load the "Box" scene from the "Experience" Reality File
        //let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        //arView.scene.anchors.append(boxAnchor)
    }
    @IBAction func turretLeft(_ sender: Any) {
    }
    @IBAction func cannonFire(_ sender: Any) {
    }
    @IBAction func turretRight(_ sender: Any) {
    }
    @IBAction func tankLeft(_ sender: Any) {
    }
    @IBAction func tankForward(_ sender: Any) {
    }
    @IBAction func tankRight(_ sender: Any) {
    }
    
}
