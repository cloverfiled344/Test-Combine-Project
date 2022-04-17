//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class TableBuilder: TableBuilderType {
    
    private var tableView = UITableView()
    
    func startBuild() -> Self {
        tableView = UITableView()
        return self
    }
    
    func build() -> UITableView {
        tableView
    }
    
    func useAutoLayout() -> Self {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setBackgroudColor(_ color: UIColor?) -> Self {
        tableView.backgroundColor = color
        return self
    }
    
    func setStyle(_ style: TableViewStyle) -> Self {
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> Self {
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = radius
        return self
    }
    
    func setSeparator(style: UITableViewCell.SeparatorStyle, _ color: UIColor?, _ insets: UIEdgeInsets?) -> Self {
        tableView.separatorStyle = style
        
        if let color = color {
            tableView.separatorColor = color
        }
        
        if let insets = insets {
            tableView.separatorInset = insets
        }
        
        return self
    }
    
    func subscribeToDelegate(_ delegate: UITableViewDelegate) -> Self {
        tableView.delegate = delegate
        return self
    }
    
    func subscribeToDataSource(_ dataSource: UITableViewDataSource) -> Self {
        tableView.dataSource = dataSource
        return self
    }
    
    func setRowHeight(_ height: CGFloat) -> Self {
        tableView.rowHeight = height
        return self
    }
    
    func setTableViewStyle(_ style: UITableView.Style) -> Self {
        tableView = UITableView(frame: .zero, style: style)
        return self
    }
    
    func setHeaderSectionPadding(_ padding: CGFloat) -> Self {
        if #available(iOS 15.0, *) {
            tableView.sectionHeaderTopPadding = padding
        }
        return self
    }
    
    func setRefreshControl(_ any: Any, _ selector: Selector, _ event: UIControl.Event) -> Self {
        let refreshControl = ProjectRefreshControl()
        tableView.refreshControl = refreshControl
        tableView.refreshControl?.addTarget(any, action: selector, for: event)
        tableView.contentOffset = .init(x: 0, y: -refreshControl.frame.size.height)
        return self
    }
}
