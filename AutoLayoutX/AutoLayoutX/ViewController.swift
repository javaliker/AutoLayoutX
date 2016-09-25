//
//  ViewController.swift
//  AutoLayoutX
//
//  Created by iDevFans on 16/9/25.
//  Copyright © 2016年 macdev. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    lazy var subView: NSView = {
        let subView = NSView()
        subView.wantsLayer = true
        subView.translatesAutoresizingMaskIntoConstraints = false
        subView.layer?.backgroundColor = NSColor.red.cgColor
        self.view.addSubview(subView)
        return subView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configConstraints()
        // Do any additional setup after loading the view.
    }


    func configConstraints() {
        
        subView.top    =  self.view.top + 20
        subView.bottom =  self.view.bottom - 20
        subView.left   =  self.view.left + 20
        subView.right  =  self.view.right - 20
    }

}

