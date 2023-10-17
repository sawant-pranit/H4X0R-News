//
//  DetailsView.swift
//  H4X0R News
//
//  Created by pranit on 21/09/23.
//

import SwiftUI

struct DetailsView: View {
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}
