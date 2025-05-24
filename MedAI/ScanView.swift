//
//  ScanView.swift
//  MedAI
//
//  Created by Hana Arshad Ahmed on 15/5/2025.
//

import SwiftUI
import PhotosUI
 
struct ScanView: View {
    @State private var selectedImage: UIImage?
    @State private var showImagePicker = false
    @State private var showLoading = false
    @State private var showResults = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
 
    var body: some View {
        NavigationStack {
            VStack(spacing: 32) {
                Image("medai_logo")
                    .resizable()
                    .frame(width: 40, height: 40)
 
                Text("Let’s Start, Piya")
                    .font(.title2)
                    .bold()
 
                Text("Upload your X-ray or Mammogram")
                    .font(.subheadline)
                    .foregroundColor(.gray)
 
                VStack(spacing: 20) {
                    Button("📁 Upload from Files/Library") {
                        sourceType = .photoLibrary
                        showImagePicker = true
                    }
                    .buttonStylePrimary()
 
                    Button("📷 Take a Photo") {
                        sourceType = .camera
                        showImagePicker = true
                    }
                    .buttonStylePrimary()
                }
 
                Spacer()
            }
            .padding()
            .fullScreenCover(isPresented: $showImagePicker) {
                ImagePicker(sourceType: sourceType, image: $selectedImage, onFinish: {
                    showLoading = true
                })
            }
            .navigationDestination(isPresented: $showLoading) {
                LoadingView {
                    showResults = true
                }
            }
            .navigationDestination(isPresented: $showResults) {
                ScanResultsView()
            }
        }
    }
}
 
