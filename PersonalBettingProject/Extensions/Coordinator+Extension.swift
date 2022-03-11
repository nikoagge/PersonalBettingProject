//
//  Coordinator+Extension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension Coordinator {
    func navigate(_ navigationItem: NavigationItem) {
        var controllersToInitialNavigation: [UIViewController] = []
        var controllerToNavigate: UIViewController!

        switch navigationItem.pageType {
        case .viewControllers(let viewControllers):
            controllersToInitialNavigation = viewControllers
            
        case .viewController(let viewController):
            controllerToNavigate = viewController
            
        case .launchViewController:
            controllerToNavigate = StoryboardType.launch.getController(LaunchViewController.self)
            
        case .onboardingContainerViewController:
            controllerToNavigate = StoryboardType.onboarding.getController(OnboardingContainerViewController.self)
            
        case .welcomeViewController(let isLoggedIn):
            controllerToNavigate = StoryboardType.welcome.getController(WelcomeViewController.self) { welcomeViewController in
                welcomeViewController.isLoggedIn = isLoggedIn
            }
            
        case .loginViewController(let loginViewControllerDelegate):
            controllerToNavigate = StoryboardType.login.getController(LoginViewController.self) { loginViewController in
                loginViewController.loginViewControllerDelegate = loginViewControllerDelegate
            }
            
        case .termsAndConditionsViewController:
            controllerToNavigate = StoryboardType.termsAndConditions.getController(TermsAndConditionsViewController.self)
            
        case .privacyPolicyViewController:
            controllerToNavigate = StoryboardType.privacyPolicy.getController(PrivacyPolicyViewController.self)
            
        case .registerViewController:
            controllerToNavigate = StoryboardType.register.getController(RegisterViewController.self)
            
        case .countryPickerViewController(let countryPickerViewControllerDelegate, let countryNameOnlyToSelect):
            controllerToNavigate = StoryboardType.countryPicker.getController(CountryPickerViewController.self) { countryPickerVieController in
                countryPickerVieController.countryPickerViewControllerDelegate = countryPickerViewControllerDelegate
                countryPickerVieController.countryNameOnlyToSelect = countryNameOnlyToSelect
            }
            
        case .myToursViewController:
            controllerToNavigate = StoryboardType.myTours.getController(MyToursViewController.self)
            
        case .myActivitiesViewController:
            controllerToNavigate = StoryboardType.myActivities.getController(MyActivitiesViewController.self)

        case .myNewsViewController:
            controllerToNavigate = StoryboardType.myNews.getController(MyNewsViewController.self)

        case .myGroupsViewController:
            controllerToNavigate = StoryboardType.myGroups.getController(MyGroupsViewController.self)

        case .myFavoritesViewController:
            controllerToNavigate = StoryboardType.myFavorites.getController(MyFavoritesViewController.self)

        case .mapViewController:
            controllerToNavigate = StoryboardType.map.getController(MapViewController.self)

        case .homeViewController:
            controllerToNavigate = StoryboardType.home.getController(HomeViewController.self)
            
        case .myProfileViewController:
            controllerToNavigate = StoryboardType.myProfile.getController(MyProfileViewController.self)

        case .temporaryImagesViewController:
            controllerToNavigate = StoryboardType.temporaryImages.getController(TemporaryImagesViewController.self)

        case .languageViewController:
            controllerToNavigate = StoryboardType.language.getController(LanguageViewController.self)

        case .analyticsViewController:
            controllerToNavigate = StoryboardType.analytics.getController(AnalyticsViewController.self)

        case .settingsViewController:
            controllerToNavigate = StoryboardType.settings.getController(SettingsViewController.self)

        case .editSubscriptionViewController:
            controllerToNavigate = StoryboardType.editSubscription.getController(EditSubscriptionViewController.self)

        case .logoutViewController:
            controllerToNavigate = StoryboardType.logout.getController(LogoutViewController.self)
            
        case .mainViewController(let email):
            controllerToNavigate = StoryboardType.main.getController(MainViewController.self) { mainViewController in
                mainViewController.email = email
            }
        }
        
        if let controllerToNavigate = controllerToNavigate {
            controllersToInitialNavigation.append(controllerToNavigate)
        }
        
        DispatchQueue.main.async {
            switch navigationItem.navigationStyle {
            case .present(let animated):
                controllerToNavigate.modalPresentationStyle = .overFullScreen
                self.present(controllerToNavigate, animated: animated)
                
            case .presentWithinNavigation(let animated, let hidesBottomBar):
                controllerToNavigate.tabBarController?.hidesBottomBarWhenPushed = hidesBottomBar
                let navigationController = UINavigationController(rootViewController: controllerToNavigate)
                navigationController.isNavigationBarHidden = true
                self.present(navigationController, animated: animated)
                
            case .push(let animated):
                self.navigationController?.pushViewController(controllerToNavigate, animated: animated)
                
            case .replace(let animated):
                if var viewControllers = self.navigationController?.viewControllers {
                    viewControllers.removeLast()
                    viewControllers.append(controllerToNavigate)
                    self.navigationController?.setViewControllers(viewControllers, animated: animated)
                }
                
            case .setInitialNavigationRootControllers(let animated):
                Constants.appDelegate.initialNavigationController.setViewControllers(controllersToInitialNavigation, animated: animated)
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {}
