//
//  miniButton.swift
//  AppleAccessories
//
//  Created by Lunga on 2021/09/01.
//

import Foundation
import SwiftUI

struct miniButton: View {
    
    var title: String
    var image: String
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(size: 15, weight: .semibold, design: .default))
                .padding(.trailing,5)
                .padding(.leading,5)
            Image(systemName: image)
                .padding(.bottom, 2)
        }
        //.frame(width: .infinity, height: 40, alignment: .center)
        .padding(5)
        .foregroundColor(.white)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(5)
    }
}
