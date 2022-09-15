//
//  PageMenuViewController.swift
//  BNTN-RSS
//
//  Created by Takumi Aoki on 2022/9/4.
//

import UIKit
import XLPagerTabStrip

/// ページメニュー用ViewController
class PageMenuViewController: ButtonBarPagerTabStripViewController {
    
    // MARK: LifeCycle

    override func viewDidLoad() {
        setButtonBar()
        super.viewDidLoad()
        navigationItem.title = "ASCII"
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return createNewsViewController()
    }
    
    // MARK: Private Function

    /// タブメニューのレイアウトを設定します
    /// - Warning: 必ずsuper.viewDidLoad()の上で呼び出してください。
    private func setButtonBar() {
        settings.style.buttonBarBackgroundColor = .clear
        settings.style.selectedBarBackgroundColor = .orange
        settings.style.buttonBarMinimumLineSpacing = 2
    }
    
    /// ニュース表示用のViewControllerを生成します。
    private func createNewsViewController() -> [UIViewController] {
        var childViewControllers: [UIViewController] = []
        NewsType.allCases.forEach {
            let itemInfo = IndicatorInfo(title: $0.itemInfo)
            let vc = NewsViewController(newsType: $0,
                                        style: .plain,
                                        itemInfo: itemInfo)
            childViewControllers.append(vc)
        }
        return childViewControllers
    }
}
