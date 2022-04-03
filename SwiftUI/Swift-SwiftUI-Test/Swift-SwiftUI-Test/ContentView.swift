//
//  ContentView.swift
//  Swift-SwiftUI-Test
//
//  Created by DSM on 2022/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {   // 수직 정렬 (Vertical)
            Text("Hong Gil Dong")
                .font(.title)
            HStack {    // 수평? 정렬 (Horizon)
                Text("Daedeok Software Meister High School")
                    .font(.subheadline) // 크기
                    .foregroundColor(.secondary)    // 색상
                Spacer()
                Text("Daejeon")
                    .font(.subheadline)
            }
        }.padding(30)
    }
}

//MARK: - Previews 보여주는 코드 (오른쪽 휴대폰 화면)

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
