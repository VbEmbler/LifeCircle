//
//  ThirdScreenViewController.swift
//  LifeCircle
//
//  Created by Vladimir on 06/02/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import UIKit

class ThirdScreenViewController: UIViewController {
    @IBOutlet weak var someLabel: UILabel! {
        didSet {
            print("!!!!!!!!Outlet Init")
        }
    }
    
    var someProperties: String? {
        didSet {
            print("!!!!!!!!Some Properties Did Set")
        }
    }
    
    override func awakeFromNib() {
        print("ThirdScreen awakeFromNib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ThirdScreen viewDidLoad")
        someLabel.text = someProperties
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ThirdScreen viewWillAppear")
    }
    
    override func updateViewConstraints() {
        print("ThirdScreen updateViewConstraints")
        //super вызывать после всех изменний
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ThirdScreen viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        //сохранение последнего состояния объекта. По умолчанию метод не делает
        //ничего поэтому super вызывать не нужно
        //super.viewDidLayoutSubviews()
        print("ThirdScreen viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ThirdScreen viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("ThirdScreen viewWillTransition")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ThirdScreen viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ThirdScreen viewDidDisappear")
    }
    
    deinit {
        print("ThirdScreen deinit")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("ThirdScreen didReceiveMemoryWarning")
    }
}
