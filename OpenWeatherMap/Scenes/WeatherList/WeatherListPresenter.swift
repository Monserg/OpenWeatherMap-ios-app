//
//  WeatherListPresenter.swift
//  OpenWeatherMap
//
//  Created by msm72 on 21.04.16.
//  Copyright (c) 2016 msm72. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol WeatherListPresenterInput {
    func presentSomething(response: WeatherListResponse)
}

protocol WeatherListPresenterOutput: class {
    func displaySomething(viewModel: WeatherListViewModel)
}

class WeatherListPresenter: WeatherListPresenterInput {
    weak var output: WeatherListPresenterOutput!
  
    // MARK: Presentation logic
    func presentSomething(response: WeatherListResponse) {
        // NOTE: Format the response from the Interactor and pass the result back to the View Controller
        let viewModel = WeatherListViewModel()
        output.displaySomething(viewModel)
    }
}