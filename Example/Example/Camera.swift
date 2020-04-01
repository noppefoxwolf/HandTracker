//
//  Camera.swift
//  Example
//
//  Created by Tomoya Hirano on 2020/04/02.
//  Copyright © 2020 Tomoya Hirano. All rights reserved.
//

import AVFoundation

class Camera: NSObject {
    lazy var session: AVCaptureSession = .init()
    lazy var input: AVCaptureDeviceInput = try! AVCaptureDeviceInput(device: device)
    lazy var device: AVCaptureDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front)!
    lazy var output: AVCaptureVideoDataOutput = .init()
    
    override init() {
        super.init()
        output.videoSettings = [kCVPixelBufferPixelFormatTypeKey as String : kCVPixelFormatType_32BGRA]
        session.addInput(input)
        session.addOutput(output)
        session.connections[0].videoOrientation = .portrait
        session.connections[0].isVideoMirrored = true
    }
    
    func setSampleBufferDelegate(_ delegate: AVCaptureVideoDataOutputSampleBufferDelegate) {
        output.setSampleBufferDelegate(delegate, queue: .main)
    }
    
    func start() {
        session.startRunning()
    }
    
    func stop() {
        session.stopRunning()
    }
}
