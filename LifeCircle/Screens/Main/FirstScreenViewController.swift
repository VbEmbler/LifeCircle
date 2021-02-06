//
//  FirstScreenViewController.swift
//  LifeCircle
//
//  Created by Vladimir on 06/02/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    override func awakeFromNib() {
        print("FirstScreen awakeFromNib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("FirstScreen viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("FirstScreen viewWillAppear")
    }
    
    override func updateViewConstraints() {
        print("FirstScreen updateViewConstraints")
        //super вызывать после всех изменний 
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("FirstScreen viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        //сохранение последнего состояния объекта. По умолчанию метод не делает
        //ничего поэтому super вызывать не нужно
        //super.viewDidLayoutSubviews()
        print("FirstScreen viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("FirstScreen viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("FirstScreen viewWillTransition")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("FirstScreen viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("FirstScreen viewDidDisappear")
    }
    
    deinit {
        print("FirstScreen deinit")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("FirstScreen didReceiveMemoryWarning")
    }
    
}
