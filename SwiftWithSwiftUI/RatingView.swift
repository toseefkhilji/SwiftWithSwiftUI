//
//  RatingView.swift
//  SwiftWithSwiftUI
//
//  Created by Toseef on 1/20/22.
//

import SwiftUI
struct RatingView: View {

    @Binding var rating: Int
    var onCallDelegate: ((Int)->Void)? = nil
    var maximumRating = 5
    var offImage = Image(systemName: "star")
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow

    var body: some View {
        HStack {

            ForEach(1..<maximumRating + 1) { number in
                 self.image(for: number).resizable().frame(width: 40, height: 40)
                    .foregroundColor(number > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = number
                        onCallDelegate?(number)
                    }
            }
        }
    }

    func image(for number: Int) -> Image {
        var image: Image

        if number > rating {
            image = offImage ?? onImage
        } else {
            image = onImage
        }

        return image
    }
}


struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        let rate = 02
        RatingView(rating: .constant(rate))
    }
}
