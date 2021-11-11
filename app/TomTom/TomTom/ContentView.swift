//
//  ContentView.swift
//  TomTom
//
//  Created by Sanne Albreghs on 11/11/2021.
//

// this represents the view.

import SwiftUI

enum Sheets: Identifiable {
    
    var id: Int {
        self.hashValue
    }
    
    case sheet_light;
    case sheet_service;
    case sheet_petrol;
    case sheet_supermarket;
    case sheet_surveillance;
    case sheet_toilet;
    case sheet_hotel;
    case sheet_shower;
    case sheet_restaurant;
//    case sheet_main;
}

struct ContentView: View {
    
    @State private var activeSheet: Sheets?
    
    // variables that are used for the slider
    @State private var rating = 0.0
    @State private var isEditing = false
    
    @State private var rating_light = 0.0
    @State private var rating_service = 0.0
    @State private var rating_petrol = 0.0
    @State private var rating_supermarket = 0.0
    @State private var rating_surveillance = 0.0
    @State private var rating_toilet = 0.0
    @State private var rating_hotel = 0.0
    @State private var rating_shower = 0.0
    @State private var rating_restaurant = 0.0
    
    var body: some View {
        VStack { // should stack element vertically on top of eachother
            // up to 10 elements
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit) // fit scalls it to fit in the bounds
            
            // make a spacer
            Spacer() // it takes up all the available space between these 2 elements
            
            Text("Which services are\navailable at the rest stop?")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .font(.custom("Helvetica", size:25))
            
            Spacer()
            
            
            // beginning picture line 1
            HStack(alignment: .top) {
                Button(action: {
                    activeSheet = .sheet_light
                }) {
                        Image("licht")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_service
                }) {
                        Image("antenne")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_petrol
                }) {
                        Image("tanken")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
            }
            // ending picture line 1
            
            // beginning picture line 2
            HStack(alignment: .top) {
                Button(action: {
                    activeSheet = .sheet_supermarket
                }) {
                        Image("supermarket")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_surveillance
                }) {
                        Image("camera")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_toilet
                }) {
                        Image("wc")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
            }
            // ending picture line 2
            
            // beginning picture line 3
            HStack(alignment: .top) {
                Button(action: {
                    activeSheet = .sheet_hotel
                }) {
                        Image("slapen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_shower
                }) {
                        Image("douche")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
                Button(action: {
                    activeSheet = .sheet_restaurant
                }) {
                        Image("bestek")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.all, 3.0)
                }
            }
            // ending picture line 3
            
            Spacer()
            
            Button(action: {
                print("vervang dit voor een functie die naar volgende pagina gaat?")
            }) {
                Text("Submit Form")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(minWidth: 0)
                    .font(.system(size: 18))
                    .padding()
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.black, lineWidth: 4)
                )
            }
            
            Button(action: {
                print("vervang dit voor een functie die naar volgende pagina gaat?")
            }) {
                Text("Skip Step")
                    .font(.system(size: 15))
                    .padding()
                    .foregroundColor(.black)
            }
                    

        } // ending brace of vertical stack
        
        .sheet(item: $activeSheet) { item in
            
            switch item {
                case .sheet_light:
                    // beginning vstack
                    VStack(alignment: .center) {
                        Spacer()
                        Text("How well is the rest stop illuminated?")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("licht")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                    // ending vstack
            
                case .sheet_service:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the cellular service")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("antenne")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                    .padding(.bottom)
                case .sheet_petrol:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the service at the petrol station")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("tanken")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_supermarket:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the supermarket facillities")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("supermarket")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_surveillance:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the amount of video surveillance")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("camera")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_toilet:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the sanitary facilities")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("wc")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_hotel:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the sleeping facilities")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("slapen")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_shower:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the shower facilities")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("douche")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
                case .sheet_restaurant:
                    VStack(alignment: .center) {
                        Spacer()
                        Text("Rate the restaurant facilities")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:30))
                            .padding(20)
                        Text("Keep rating as 0.0 if not present")
                            .multilineTextAlignment(.center)
                            .font(.custom("Helvetica", size:15))
                            .padding(.bottom)
                        Image("bestek")
                        Slider(
                            value: $rating,
                            in: 0...5,
                            step:1,
                            onEditingChanged: { editing in
                            isEditing = editing
                            }
                        )   .padding(40)
                            .accentColor(.black)
                            
                        Spacer()
                        Text("\(rating)")
                            .foregroundColor(isEditing ? .black : .green)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.custom("Helvetica", size:25))
                        Spacer()
                        Button(action: {
                            // go back to main sheet
                            
                        }) {
                            Text("Submit Rating")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(minWidth: 0)
                                .font(.system(size: 30))
                                .padding()
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 4)
                            )
                        }
                        Spacer()
                        
                    }
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
