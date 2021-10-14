//: [◁](@previous) | [▷](@next)
import AVFoundation
import Foundation
import SwiftUI
import PlaygroundSupport

// import font (remember to put the file in resources)
let cfURL = Bundle.main.url(forResource: "dogica", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)


// for the sound
var player: AVAudioPlayer?

public func playSound(_ file: String) {
    guard let path = Bundle.main.path(forResource: file, ofType:"wav") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}


// to call audio
playSound("Cre")

//Scene 1 View
struct Scene1: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other
            
            Color.black    //background color
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text()
            VStack(spacing:15) {
                Text("* there is a sudden")
                Text("sound of footsteps *")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                        playSound("Ambient1") //play audio when tapping the button
                        PlaygroundPage.current.setLiveView(Scene2())
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
            // the 'bottomTrailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on top
        }
        .frame(width: 300, height: 500) // dimensions of the box
        .foregroundColor(.white) // color applies to everything inside the ZStack
        
    }
}


//Scene 2 View
struct Scene2: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other
            
            Color.black    //background color
                .ignoresSafeArea() // expand to the whole screen
            
            // first Vstack is for the text in the center; spacing is between Text()
            VStack(spacing:15) {
                Text("I raise my eyes from")
                Text("the small screen.")
                Text("")
                Text("Still pitch dark.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Scene3())
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
            // the 'bottomTrailing' aligns the whole VStack content
        
            
            VStack{
                            Button(
                                action:{
                                    PlaygroundPage.current.setLiveView(Scene1())
                                },
                                label: {
                                Image(systemName: "arrowtriangle.left")
                                        .foregroundColor(.white)
                                        .imageScale(.large)
                                        .shadow(color: .green,radius: 2)
                                        .shadow(color: .green,radius: 2)
                                })
                        }
                        .frame(width: 250, height: 450, alignment: .bottomLeading)
        }
        .frame(width: 300, height: 500) // dimensions of the box
        .foregroundColor(.white) // color applies to all the text inside the ZStack
    }
}

         
// Scene 3 View
struct Scene3: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text; spacing is between Text()
            VStack(spacing:15) {
                Text("Someone is coming.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame smaller than the zstack frame for border spacing
            
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Scene4())
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
            // the 'bottomTRailing' aligns the whole VStack content
        
            
            VStack{
                            Button(
                                action:{
                                    PlaygroundPage.current.setLiveView(Scene2())
                                },
                                label: {
                                Image(systemName: "arrowtriangle.left")
                                        .foregroundColor(.white)
                                        .imageScale(.large)
                                        .shadow(color: .green,radius: 2)
                                        .shadow(color: .green,radius: 2)
                                })
                        }
                        .frame(width: 250, height: 450, alignment: .bottomLeading)
}
        .frame(width: 300, height: 500) //box dimensions
        .foregroundColor(.white) // color applies to all the text inside the ZStack
    }
}

// Scene 4 view
struct Scene4: View {
    var body: some View {
        
        
        ZStack {     //stacks the views one in front of the other
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text; spacing is between Text()
            VStack(spacing:15) {
                Text("I can sense them")
                Text("getting closer and")
                Text("closer.")
                Text("")
                Text("Step by step.")
                Text("")
                Text("They’re coming.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Scene5())
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
            // the 'bottomTrailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on top
            
            
            HStack{
                            Button(
                                action:{
                                    PlaygroundPage.current.setLiveView(Scene3())
                                },
                                label: {
                                Image(systemName: "arrowtriangle.left")
                                        .foregroundColor(.white)
                                        .imageScale(.large)
                                        .shadow(color: .green,radius: 2)
                                        .shadow(color: .green,radius: 2)
                                })
                        }
                        .frame(width: 250, height: 450, alignment: .bottomLeading)
        }
        .frame(width: 300, height: 500) // dimensions of the box
        .foregroundColor(.white) // font color of all the text inside ZStack
    }
}

// Scene 5 view
struct Scene5: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("I need to find a way")
                Text("out of here.")
                Text("")
                Text("I need that person to")
                Text("believe me.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                            Button(
                                action:{
                                    PlaygroundPage.current.setLiveView(Scene4())
                                },
                                label: {
                                Image(systemName: "arrowtriangle.left")
                                        .foregroundColor(.white)
                                        .imageScale(.large)
                                        .shadow(color: .green,radius: 2)
                                        .shadow(color: .green,radius: 2)
                                })
                        }
                        .frame(width: 250, height: 450, alignment: .bottomLeading)
}
        .frame(width: 300, height: 500) // dimensions of the box
        .foregroundColor(.white) // font color applies to the whole in ZStack
    }
}

//run it
PlaygroundPage.current.setLiveView(Scene1())

//: Page 2


//: [◁](@previous) | [▷](@next)
