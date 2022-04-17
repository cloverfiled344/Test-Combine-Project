//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//


import Foundation
import UIKit

protocol TableBuilderType {
    func startBuild() -> Self
    func build() -> UITableView
    func useAutoLayout() -> Self
    func setBackgroudColor(_ color: UIColor?) -> Self
    func setStyle(_ style: TableViewStyle) -> Self
    func setCornerRadius(_ radius: CGFloat) -> Self
    func setSeparator(style: UITableViewCell.SeparatorStyle, _ color: UIColor?, _ insets: UIEdgeInsets?) -> Self
    func subscribeToDelegate(_ delegate: UITableViewDelegate) -> Self
    func subscribeToDataSource(_ dataSource: UITableViewDataSource) -> Self
    func setRowHeight(_ height: CGFloat) -> Self
    func setTableViewStyle(_ style: UITableView.Style) -> Self
    func setHeaderSectionPadding(_ padding: CGFloat) -> Self
    func setRefreshControl(_ any: Any, _ selector: Selector, _ event: UIControl.Event) -> Self
}

enum TableViewStyle {
    case separator
    case nonSeparator
}
