//
//  SecondScreenViewController.swift
//  LifeCircle
//
//  Created by Vladimir on 06/02/2021.
//  Copyright © 2021 Embler. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {

    override func awakeFromNib() {
        print("SecondScreen awakeFromNib")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondScreen viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("SecondScreen viewWillAppear")
    }
    
    override func updateViewConstraints() {
        print("SecondScreen updateViewConstraints")
        //super вызывать после всех изменний 
        super.updateViewConstraints()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("SecondScreen viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        //сохранение последнего состояния объекта. По умолчанию метод не делает
        //ничего поэтому super вызывать не нужно
        //super.viewDidLayoutSubviews()
        print("SecondScreen viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SecondScreen viewDidAppear")
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("SecondScreen viewWillTransition")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SecondScreen viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SecondScreen viewDidDisappear")
    }
    
    deinit {
        print("SecondScreen deinit")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("SecondScreen didReceiveMemoryWarning")
    }
    
    @IBAction func goToThirdScreenButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "ThirdScreen", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "ThirdScreen") as? ThirdScreenViewController else { return }
        viewController.someProperties = "Some Properties from Second Screen"
        present(viewController, animated: true, completion: nil)
    }
}
