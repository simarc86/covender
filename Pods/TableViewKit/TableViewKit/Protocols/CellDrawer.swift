import Foundation
import UIKit

/// The type of a cell (nib, class)
public typealias CellType<Cell: UITableViewCell> = NibClassType<Cell>

/// A type that can draw a cell
public protocol CellDrawer {
    associatedtype Cell: UITableViewCell
    associatedtype GenericItem

    /// Define the `type` of the cell
    static var type: CellType<Cell> { get }

    /// Returns the cell from the `manager`
    ///
    /// - parameter manager: The `manager` where the cell came from
    /// - parameter item:    The cell `item`
    /// - parameter indexPath:    Where the cell is located
    ///
    /// - returns: The the cell
    static func cell(in manager: TableViewManager, with item: GenericItem, for indexPath: IndexPath) -> Cell

    /// Draw the `cell` using the `item`
    ///
    /// - parameter cell: The `cell` that must be drawn
    /// - parameter item: The cell `item` that generated the drawer
    static func draw(_ cell: Cell, with item: GenericItem)

}

public extension CellDrawer {

    /// Returns a dequeued cell and set the item property if the cell conforms to ItemCompatible
    static func cell(in manager: TableViewManager, with item: GenericItem, for indexPath: IndexPath) -> Cell {

        let cell = manager.tableView.dequeueReusableCell(withIdentifier: self.type.reusableIdentifier, for: indexPath)
        cell.selectionStyle = item is Selectable ? .default : .none

        if let cell = cell as? ItemCompatible {
            cell.item = item as? TableItem
        }

        // swiftlint:disable:next force_cast
        return cell as! Cell
    }
}

/// A type-erased wrapper over any cell drawer
public struct AnyCellDrawer {
    let type: CellType<UITableViewCell>
    let cell: (TableViewManager, TableItem, IndexPath) -> UITableViewCell
    let draw: (UITableViewCell, TableItem) -> Void

	/// Creates a type-erased drawer that wraps the given cell drawer
    public init<Drawer: CellDrawer, GenericItem, Cell>(_ drawer: Drawer.Type)
        where Drawer.GenericItem == GenericItem, Drawer.Cell == Cell {
        self.type = drawer.type.cellType
        // swiftlint:disable:next force_cast
        self.cell = { manager, item, indexPath in drawer.cell(in: manager, with: item as! GenericItem, for: indexPath) }
        // swiftlint:disable:next force_cast
        self.draw = { cell, item in drawer.draw(cell as! Cell, with: item as! GenericItem) }
    }

	public func cell(in manager: TableViewManager, with item: TableItem, for indexPath: IndexPath) -> UITableViewCell {
        return cell(manager, item, indexPath)
    }

	public func draw(_ cell: UITableViewCell, with item: TableItem) {
        draw(cell, item)
    }

}
