//
//  DeviceView.swift
//  AppleAccessories
//
//  Created by Lunga on 2021/09/01.
//

import Foundation
import SwiftUI

struct DeviceView: View {
    
    var deviceImage : String
    
    var devicetTitle : String
    
    var carDistance : Int
    var walkDistance : Int
    var batteryPercentage : Int
    
    //buttons
    var button1Title: String
    var button1Icon: String
    
    var button2Title: String
    var button2Icon: String
    
    var iconColor: Color
    
    var deviceHeight: CGFloat
    var deviceWidth: CGFloat
    
    var body: some View {
        HStack{
            ZStack{
                Image(systemName: deviceImage)
                    .resizable()
                    .frame(width: deviceWidth, height: deviceHeight)
                    .scaledToFit()
                    .foregroundColor(iconColor)
                    .offset(x: 120, y: -56)
                    .font(.system(size:20, weight: .thin))
                    
                
                VStack(alignment: .leading){
                    Text(devicetTitle)
                        .padding(.top, 8)
                        .padding(.bottom, 1)
                        .padding(.leading, 20)
                        .font(.system(size: 30, weight: .bold, design: .default))
                    
                    HStack{
                        Label(
                            title: { Text("\(carDistance) min").font(.system(size: 15, weight: .regular, design: .default)) },
                            icon: { Image(systemName: "car")
                                .font(.system(size: 15, weight: .regular, design: .default))
                                .padding(.leading, 20)
                                
                            })
                        /**/
                        Label(
                            title: { Text("\(walkDistance) min").font(.system(size: 15, weight: .regular, design: .default)) },
                            icon: { Image(systemName: "figure.walk").font(.system(size: 15, weight: .regular, design: .default)) })
                        /**/
                        Label(
                            title: { Text("\(batteryPercentage)").font(.system(size: 15, weight: .regular, design: .default)) },
                            icon: { Image(systemName: "battery.100").font(.system(size: 15, weight: .regular, design: .default)) })
                    }
                    
                    HStack{
                        Button(action: {
                            //TODO
                        }, label: {
                            Label(
                                title: { Text(button1Title)
                                    .foregroundColor(Color.white)
                                },
                                icon: { Image(systemName: button1Icon)
                                }
                            )
                        })
                        .frame(width: 140, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(5)
                        Button(action: {
                            //TODO
                        }, label: {
                            Label(
                                title: { Text(button2Title)
                                    .foregroundColor(Color.white)
                                },
                                icon: { Image(systemName: button2Icon)
                                    .foregroundColor(Color.green)
                                }
                            )
                        })
                        .frame(width: 140, height: 50)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(5)
                    }.frame(width: 320)
                    .padding(.bottom,5)
                    //.border(Color.red)
                }
                //                        .frame(width: 320, height: 180, alignment: .leading)
                //.border(Color.yellow)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .offset(y: -10)
                
            }
            
        }
        .frame(width: 320, height: 180)
        //.background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}

