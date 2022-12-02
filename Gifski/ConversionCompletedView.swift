//
//  ConversionCompletedView.swift
//  Gifski
//
//  Created by Benjamin Palmer on 12/1/22.
//  Copyright © 2022 Sindre Sorhus. All rights reserved.
//

import SwiftUI

struct ConversionCompletedView: View {
	@ObservedObject private var vm: ConversionCompletedViewModel
	internal init(vm: ConversionCompletedViewModel) {
		self.vm = vm
	}
    var body: some View {
		VStack {
			HStack {
				Button {
				} label: {
					Image(systemName: "chevron.left")
				}
				Spacer()
				Button {
				} label: {
					Image(systemName: "plus")
					Text("Open")
				}
			}
			VStack(spacing: 16) {
				
				Image(systemName: "square")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 140)
					.foregroundColor(.blue)
				
				Text("filename.gif")
				Text("12 MB")
				
				HStack {
					Button("Copy") {
					}
					Button("Share") {
					}
					Button("Save As...") {
					}
				}
			}
			
		}
		.padding()
    }
}

final class ConversionCompletedViewModel: ObservableObject {
}



struct ConversionCompletedView_Previews: PreviewProvider {
    static var previews: some View {
		ConversionCompletedView(vm: ConversionCompletedViewModel())
			.frame(width: 360, height: 240)
    }
}
