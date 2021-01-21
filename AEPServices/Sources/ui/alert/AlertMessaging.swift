/*
 Copyright 2020 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import Foundation

/// Fullscreen message lifecycle event listener
@objc(AEPAlertMessaging) public protocol AlertMessaging {
    /// Invoked on positive button clicks
    /// - Parameters:
    ///     - message: Alert message which is currently shown
    func onPositiveResponse(message: AlertMessage?)

    /// Invoked on negative button clicks
    /// - Parameters:
    ///     - message: Alert message which is currently shown
    func onNegativeResponse(message: AlertMessage?)

    /// Invoked when the alert message is displayed
    /// - Parameters:
    ///     - message: Alert message which is currently shown
    func onShow(message: AlertMessage?)

    /// Invoked when the alert message is dismissed
    /// - Parameters:
    ///     - message: Alert message which is currently dismissed
    func onDismiss(message: AlertMessage?)
}