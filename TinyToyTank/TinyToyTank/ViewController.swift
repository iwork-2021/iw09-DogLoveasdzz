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
    var isActionPlaying: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tankAnchor = try! TinyToyTank.load_TinyToyTank()
        
        tankAnchor!.turret?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
        
        tankAnchor?.actions.actionComplete.onAction = { _ in self.isActionPlaying = false}
        
        arView.scene.anchors.append(tankAnchor!)
        // Load the "Box" scene from the "Experience" Reality File
        //let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        //arView.scene.anchors.append(boxAnchor)
    }
    @IBAction func turretLeft(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.turretLeft.post()
    }
    @IBAction func cannonFire(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.cannonFire.post()
    }
    @IBAction func turretRight(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.turretRight.post()
    }
    @IBAction func tankLeft(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankLeft.post()
    }
    @IBAction func tankForward(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankForward.post()
    }
    @IBAction func tankRight(_ sender: Any) {
        if self.isActionPlaying { return }
        else { self.isActionPlaying = true }
        tankAnchor!.notifications.tankRight.post()
    }
    
}
