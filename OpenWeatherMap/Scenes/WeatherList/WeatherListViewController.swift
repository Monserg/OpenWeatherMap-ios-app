//
//  WeatherListViewController.swift
//  OpenWeatherMap
//
//  Created by msm72 on 21.04.16.
//  Copyright (c) 2016 msm72. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

// Input protocol
protocol WeatherListViewControllerInput {
    func displaySomething(viewModel: WeatherListViewModel)
}

// Output protocol
protocol WeatherListViewControllerOutput {
    func doSomething(request: WeatherListRequest)
}

class WeatherListViewController: UITableViewController, WeatherListViewControllerInput {
    var output: WeatherListViewControllerOutput!
    var router: WeatherListRouter!
  
    // MARK: - Constructors -
    override func awakeFromNib() {
        super.awakeFromNib()
        print("WeatherListViewController: awakeFromNib run.")

        WeatherListConfigurator.sharedInstance.configure(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("WeatherListViewController: viewDidLoad run.")
    
        doSomethingOnLoad()
    }
  
    
    // MARK: - Methods -
    func doSomethingOnLoad() {
        // NOTE: Ask the Interactor to do some work
        let request = WeatherListRequest()
        output.doSomething(request)
    }
  
    
    // MARK: - Display View Model -
    func displaySomething(viewModel: WeatherListViewModel) {
        // NOTE: Display the result from the Presenter
        // nameTextField.text = viewModel.name
    }
}


// MARK: - UITableViewDataSource -
extension UITableViewDataSource {
    
}


// MARK: - UITableViewDelegate -
extension UITableViewDelegate {
    
}

