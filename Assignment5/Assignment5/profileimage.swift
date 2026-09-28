//
//  profileimage.swift
//  Assignment5
//
//  Created by cisstudent on 9/27/26.
//

import SwiftUI

struct profileimage: View {
    var body: some View {
        Image("IMG_6381")
            .resizable()
            .frame(width: 350, height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    profileimage()
}
