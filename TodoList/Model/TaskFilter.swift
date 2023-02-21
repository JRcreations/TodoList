//
//  TaskFilter.swift
//  TodoList
//
//  Created by John Reichel on 2/14/23.
//

import SwiftUI

enum TaskFilter: String {
    static var allFilters: [TaskFilter] {
        return [.NonCompleted,.Completed,.OverDue,.All]
    }
    case All = "All"
    case NonCompleted = "To Do"
    case Completed = "Completed"
    case OverDue = "Overdue"
}
