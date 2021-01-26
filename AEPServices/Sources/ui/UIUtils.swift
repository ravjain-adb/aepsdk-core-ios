/*
 Copyright 2021 Adobe. All rights reserved.
 This file is licensed to you under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License. You may obtain a copy
 of the License at http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software distributed under
 the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
 OF ANY KIND, either express or implied. See the License for the specific language
 governing permissions and limitations under the License.
 */

import Foundation
import UIKit

class UIUtils {
    internal static func getFrame() -> (frame: CGRect?, screenBounds: CGSize?)? {
        var newFrame = CGRect(x: 0, y: 0, width: 0, height: 0)
        // x is always 0
        newFrame.origin.x = 0
        // for fullscreen, width and height are both full screen
        let keyWindow = UIApplication.shared.getKeyWindow()
        guard let screenBounds: CGSize = keyWindow?.frame.size else { return nil }
        newFrame.size = screenBounds

        // y is dependant on visibility and height
        newFrame.origin.y = 0
        return (newFrame, screenBounds)
    }
}

