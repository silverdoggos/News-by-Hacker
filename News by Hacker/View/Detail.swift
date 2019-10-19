//
//  Detail.swift
//  News by Hacker
//
//  Created by Артём Шишкин on 18.10.2019.
//  Copyright © 2019 Артём Шишкин. All rights reserved.
//

import SwiftUI


struct Detail: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(url: "google.com")
    }
}




