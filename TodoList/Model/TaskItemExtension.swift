//
//  TaskItemExtension.swift
//  TodoList
//
//  Created by John Reichel on 2/14/23.
//

import SwiftUI

extension TaskItem {
    func isCompleted() -> Bool {
        return completedDate != nil
    }
    
    func isOverDue() -> Bool {
        if let due = dueDate {
            return !isCompleted() && scheduleTime && due < Date()
        }
        return false
    }
    
    func overDueColor() -> Color {
        return isOverDue() ? .red : .black
    }
    
    func dueDateTimeOnly() -> String {
        if let due = dueDate {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "hh:mm a"
            return dateFormatter.string(from: due)
        }
        return ""
    }
}
