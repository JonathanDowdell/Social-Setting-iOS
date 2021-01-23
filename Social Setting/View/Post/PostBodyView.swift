//
//  PostBodyView.swift
//  Social Setting
//
//  Created by Mettaworldj on 1/23/21.
//

import SwiftUI

struct PostBodyView: View {
    
    @Binding var showProfile: Bool
    
    @Binding var post: PostResponse
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.postName)
                .bold()
                .font(.system(size: 24))
                .foregroundColor(.gray99)
                .padding(.bottom, 10)
                .fixedSize(horizontal: false, vertical: true)
            HStack {
                Text(post.description)
                    .font(.body)
                    .foregroundColor(.gray99)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct PostBodyView_Previews: PreviewProvider {
    static var previews: some View {
        PostBodyView(showProfile: .constant(false), post: .constant(MockData.post[0]))
    }
}
