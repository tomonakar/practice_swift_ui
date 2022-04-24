//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by tomonakar on 2022/04/24.
//

import SwiftUI

struct FavoriteButton: View {
    // 親のViewのプロパティを子が変えたい時に@Bindingを使う
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
