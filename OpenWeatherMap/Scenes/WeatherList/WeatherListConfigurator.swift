//
//  WeatherListConfigurator.swift
//  OpenWeatherMap
//
//  Created by msm72 on 21.04.16.
//  Copyright (c) 2016 msm72. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

class WeatherListConfigurator {
    // MARK: Object lifecycle
    class var sharedInstance: WeatherListConfigurator {
        struct Static {
            static var instance: WeatherListConfigurator?
            static var token: dispatch_once_t = 0
        }
    
        dispatch_once(&Static.token) {
            Static.instance = WeatherListConfigurator()
        }
    
        return Static.instance!
    }
  
    
    // MARK: - Configuration -
    func configure(viewController: WeatherListViewController) {
        let router = WeatherListRouter()
        router.viewController = viewController
    
        let presenter = WeatherListPresenter()
        presenter.output = viewController
    
        let interactor = WeatherListInteractor()
        interactor.output = presenter
    
        viewController.output = interactor
        viewController.router = router
    }
}


// MARK: - Connect View, Interactor, and Presenter -
extension WeatherListViewController: WeatherListPresenterOutput {
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        router.passDataToNextScene(segue)
    }
}

extension WeatherListInteractor: WeatherListViewControllerOutput {
}

extension WeatherListPresenter: WeatherListInteractorOutput {
}

