//
//  SwiftUIView.swift
//  SwiftWithSwiftUI
//
//  Created by Toseef on 1/20/22.
//

import SwiftUI

struct SwiftUIView: View {
    var onCallDelegate: ((String, Int)->Void)? = nil
    @State var text: String = ""
    @State var rating: Int = 0
    var body: some View {
        VStack {
            Text("Hello, World! \nthis is SwiftUI").padding()
            HStack(alignment: .center) {
                TextField("Enter Name", text: $text)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            RatingView(rating: $rating)
                .padding()
            Button(action: {
                onCallDelegate?(text, rating)
            }, label: {
                Text("Call Delegate").foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.green)
                    .mask(Capsule())
            })

        }.padding(8)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView( text: "")
    }
}
