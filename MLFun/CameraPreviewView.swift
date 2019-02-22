import UIKit
import AVFoundation

class CameraPreviewView : UIView {
    
    private weak var previewLayer : AVCaptureVideoPreviewLayer?
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func addCaptureVideoPreviewLayer(previewLayer : AVCaptureVideoPreviewLayer ) {
        self.previewLayer?.removeFromSuperlayer()
        self.layer.insertSublayer(previewLayer, at: 0)
        self.previewLayer = previewLayer
        self.previewLayer?.videoGravity = .resizeAspectFill
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        previewLayer?.frame = bounds
    }
}
