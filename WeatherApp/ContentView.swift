//
//  ContentView.swift
//  WeatherApp
//
//  Created by Shiva Kumar Mangina on 25/02/24.
//

import SwiftUI

struct ContentView: View {
    
    var isNight: Bool = false
    var body: some View {
        
        
        
        ZStack {
            ContainerRelativeShape()
                      .fill(isNight ? Color.black.gradient : Color.blue.gradient)
                      .ignoresSafeArea()
            
            
            VStack {
                Text("Bangalore, IN")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                Image(systemName: "cloud.sun.fill")
                               .renderingMode(.original)
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 180, height: 180)
                
                Text("76°")
                    .font(.system(size: 48,weight: .medium,design: .default))
                    .foregroundColor(.white)
                
                HStack {
                    WeatherDayView(dayOfWeek: "TUE",
                                                       imageName: "cloud.sun.fill",
                                                       temperature: 74)
                                        
                                        WeatherDayView(dayOfWeek: "WED",
                                                       imageName: "sun.max.fill",
                                                       temperature: 88)
                                        
                                        WeatherDayView(dayOfWeek: "THU",
                                                       imageName: "wind.snow",
                                                       temperature: 55)
                                        
                                        WeatherDayView(dayOfWeek: "FRI",
                                                       imageName: "sunset.fill",
                                                       temperature: 60)
                                        
                                        WeatherDayView(dayOfWeek: "SAT",
                                                       imageName: "snow",
                                                       temperature: 25)
                }
                
                Button(action: {
                   // Your code here
                 }) {
                   Text("Red thin text")
                         .frame(width: 280, height: 50)
                         .background(.mint)
                        .foregroundColor(.white)
                                   .font(.system(size: 20, weight: .bold))
                                   .cornerRadius(10)
                 }
               
            }
           
            
        }
       
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
//                .foregroundColor(.pink)
//                .foregroundStyle(.pink, .orange, .green)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
