//: [◁](@previous)

import Foundation
import SwiftUI
import PlaygroundSupport
import AVFoundation
import Darwin



// import font
let cfURL = Bundle.main.url(forResource: "dogica", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)

playSound("CreepySteps.4")
struct Scene5: View {
    var body: some View {
        
                ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing:15) {
                Text("Someone is coming…")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400)

            VStack{
                Button(
                    action:{
                        playSound("Creaky_door_01")
                        PlaygroundPage.current.setLiveView(Scene5_2())
                    },
                    label: {
                    Image(systemName: "arrowtriangle.right")
                            .foregroundColor(.white)
                            .imageScale(.large)
                            .shadow(color: .green,radius: 2)
                            .shadow(color: .green,radius: 2)
                    })
            }
            .frame(width: 250, height: 450, alignment: .bottomTrailing)
            
            
            
        }
        
        .frame(width: 300, height: 500)
        .foregroundColor(.white)
        
        
    }
}


struct Scene5_2: View {
    @State var scale = 0.60
    @State var distance: CGFloat = 0.5

    var body: some View {
        
        ZStack {
            Color.black    //background
                .ignoresSafeArea()
            
            
            VStack{
                  Image(uiImage: UIImage(named: "porta.png")!)
                    .scaleEffect(scale)
                   

            }
            VStack{
                
                Rectangle()
                        .foregroundColor(.black)
                            

            }
            .frame(width: 400, height: 600, alignment: .center)
            .scaleEffect()
            .position(x: 50,y: 400)
//muove tutto
            .offset(x:(distance*400))
            .animation(.linear(duration: 2.9), value: distance)
            .onAppear(perform: {
                distance=1
            })
            
            
            VStack{
                Button("   ")
                    {
//                        playSound("Creaky_door_01")
//                        //do {sleep(2)}
                        
                        PlaygroundPage.current.setLiveView(Scene5_3())
                        playSound("Sweet dreams")
                        
                    }
            }
            .frame(width: 250, height: 450)
                            

           
            

        }
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}
            




struct Scene5_3: View {
    
    @State var scale = 0.80
    var body: some View {
        
                ZStack {
            
            Color.black    //background
                .ignoresSafeArea()
            
         
                    VStack{
                        Image(uiImage: UIImage(named: "eee.jpg")!)
                            .resizable()
                            .scaleEffect(scale)
                        
                    }
            
            
        }
        
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
        
        
    }
}



            

//run it
PlaygroundPage.current.setLiveView(Scene5())


//: ### *Who was the person who came?*
//:
//: *Maybe you thought waking up somewhere you didn't recognise would just be a funny tale to tell to your friends...*
//: *These things don't always end well, do they?*

//: P.S.: Did you find the easter egg? 😉

//: [◁](@previous)
