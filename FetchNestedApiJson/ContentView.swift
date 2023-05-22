//
//  ContentView.swift
//  FetchNestedApiJson
//
//  Created by Claudio Tendean on 22/05/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var fetch = ApiService()
    
    var body: some View {
        NavigationView{
            VStack {
                ForEach(fetch.datatotal) {data in
                    // Kolom 1
                    HStack{
                        HStack{
                            Spacer()
                            VStack{
                                Image(systemName: "hear.fill")
                                    .foregroundColor(Color.white)
                                Text("Sembuh")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                Text("\(data.jumlah_sembuh)")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                Spacer()
                            }
                            .frame(height: 100)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(20)
                        }
                    }
                }
                
                if (fetch.isLoading) {
                    VStack {
                        Indicator()
                        Text("Loading....")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color.secondary, radius: 20)
                }
            }
            .navigationBarTitle("Covid 19 Data")
        }
    }
}


// komponen indicator

struct Indicator : UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        let indi = UIActivityIndicatorView(style: .large)
        indi.color = UIColor.red
        return indi
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        uiView.startAnimating()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
