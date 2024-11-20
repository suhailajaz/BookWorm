//
//  RatingView.swift
//  Project11-BookWorm
//
//  Created by suhail on 20/11/24.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int
    var label = ""
    
    var maxRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onCOlor = Color.yellow
    
    var body: some View {
        HStack{
            if label.isEmpty == false{
                Text(label)
                
            }
            ForEach(1..<maxRating+1,id: \.self){ number in
                Button{
                    rating = number
                }label:{
                    //image(for: number)
                    onImage
                        .foregroundStyle(number > rating ? offColor : onCOlor)
                }
            }
            .buttonStyle(.plain)
        }
    }
    
    func image(for number: Int) ->Image{
        if number > rating{
            offImage ?? onImage
        }else{
            onImage
        }
    }
}

#Preview {
    RatingView(rating: .constant(4))
}
