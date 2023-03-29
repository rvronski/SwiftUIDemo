//
//  TextView.swift
//  SwiftUIDemo
//
//  Created by ROMAN VRONSKY on 29.03.2023.
//

import SwiftUI

struct TextView: View {
    
    var body: some View {
        ViewThatFits {
            
            VStack {
                Text("Добро пожаловать!")
                    .font(.largeTitle)
                    .background(Color(.systemGray4))
                    .cornerRadius(10)
                    .frame(width: 350, height: 100, alignment: .center)
                
                Text(Date(), style: .time).fontWeight(.heavy)
                
                Spacer()
            }
            .background(Color(.red))
            .frame(width: 350, height: 150 )
            .cornerRadius(10)
        }
    }
}
struct TextViewPreviews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
