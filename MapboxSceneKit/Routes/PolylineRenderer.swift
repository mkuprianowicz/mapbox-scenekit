//
//  PolylineRenderer.swift
//  MapboxSceneKit
//
//  Created by Jim Martin on 9/12/18.
//  Copyright © 2018 MapBox. All rights reserved.
//

import Foundation
import SceneKit
import Metal

/// Implement this protocol to define new line rendering behavior
internal protocol PolylineRenderer {
    func render(_ polyline: PolylineNode, withSampleCount sampleCount: Int)
}

/// Responsible for selecting the correct renderer based on iOS version or GPU context.
internal class PolylineRendererVersion {
    
    /// Change linerenderer class based on the ios version / metal availability
    ///
    /// - Returns: The best linerenderer for the current platform
    public static func getValidRenderer() -> PolylineRenderer? {
        guard MTLCreateSystemDefaultDevice() != nil else { return nil }
        return PolylineShader()
    }
}
