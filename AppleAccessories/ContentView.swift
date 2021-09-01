//
//  ContentView.swift
//  AppleAccessories
//
//  Created by Lunga on 2021/08/31.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .center, spacing: 10){
                        
                        Button(action: {
                            //todo:
                        }, label: {
                            miniButton(title: "Add", image: "plus.circle")
                                .padding(.leading, 10)
                        })
                        Button(action: {
                            //todo
                        }, label: {
                            miniButton(title: "Devices", image: "laptopcomputer.and.iphone")
                        })
                        Button(action: {
                            //todo
                        }, label: {
                            miniButton(title: "Items", image: "building.2")
                        })
                        Button(action: {
                            //todo
                        }, label: {
                            miniButton(title: "Friends", image: "person.3")
                        })
                        Button(action: {
                            //todo
                        }, label: {
                            miniButton(title: "Faves", image: "heart")
                                .padding(.trailing, 10)
                        })
                    }
                }
                //.frame(width: 350, height: 50, alignment: .center)
                .navigationTitle("Browse")
                HStack{
                    Text("Devices (8)")
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .padding(.leading, 17)
                    Spacer()
                }
                //below the scroll view (horizontal scroll view)
                ScrollView(.vertical, showsIndicators: false){
                    DeviceView(deviceImage: "airpods", devicetTitle: "AirPods", carDistance: 8, walkDistance: 32, batteryPercentage: 75, button1Title: "123.7", button1Icon: "play.circle.fill", button2Title: "123.7", button2Icon: "paperplane.circle.fill", iconColor: .white, deviceHeight: 50, deviceWidth: 50)
                    DeviceView(deviceImage: "teletype", devicetTitle: "Vintage Phone", carDistance: 8, walkDistance: 32, batteryPercentage: 75, button1Title: "123.7", button1Icon: "play.circle.fill", button2Title: "123.7", button2Icon: "paperplane.circle.fill", iconColor: .red,deviceHeight: 50, deviceWidth: 50)
                    DeviceView(deviceImage: "apps.iphone", devicetTitle: "iPhone", carDistance: 8, walkDistance: 32, batteryPercentage: 75, button1Title: "123.7", button1Icon: "play.circle.fill", button2Title: "123.7", button2Icon: "paperplane.circle.fill",iconColor: .white,deviceHeight: 60, deviceWidth: 35)
                        
                    
                }
                Spacer()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        
    }
}





