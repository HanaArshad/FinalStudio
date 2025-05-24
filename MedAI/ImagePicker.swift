//
//  ImagePicker.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
import UIKit
 
struct ImagePicker: UIViewControllerRepresentable {
    var sourceType: UIImagePickerController.SourceType
    @Binding var image: UIImage?
    var onFinish: () -> Void
 
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = sourceType
        return picker
    }
 
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
 
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
 
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        var parent: ImagePicker
 
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
 
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.image = uiImage
                parent.onFinish()
            }
            picker.dismiss(animated: true)
        }
    }
}
