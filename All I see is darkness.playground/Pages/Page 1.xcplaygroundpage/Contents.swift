//: *Did you ever happen to drink too much one night and wake up somewhere unfamilar?*
//:
//: *You probably got scared... or maybe you thought it was funny...*
//:
//: *In any case, you are here now. But these things, they don't always end well...*
//:
//: [▷](@next)
import Foundation
import SwiftUI
import PlaygroundSupport
import AVFoundation

// import font (you need the file in resources)
let cfURL = Bundle.main.url(forResource: "dogica", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)


import AVFoundation

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

//Page 1 View

playSound("Ambient1")

struct Page1: View {
    
    @State var opacityVal = 1.0
    let timer = Timer.publish(every: 0.7, on: .main, in: .common).autoconnect()
                
    var body: some View {
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            VStack {
                Button (action: {
//                    playSound("CreepySteps")
                    PlaygroundPage.current.setLiveView(Page2())
                },
                        label: {
                    Text("[ TAP TO START ]")
                        .font(Font.custom("dogica", size: 15))
                        .shadow(color: .green, radius: 2)
                        .shadow(color: .green, radius: 2)
                        .opacity(opacityVal)
                        .onReceive(timer) { _ in
                            if opacityVal == 1.0 {
                                opacityVal = 0.0
                            }else{
                                opacityVal = 1.0
                            }
                        }
                })
            }
        }
        
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
        }
    }

struct Page2: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("I rub my eyes as I")
                Text("come to.")
                Text("")
                Text("But when I open them,")
                Text("all I see is darkness.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            //these two previous functions aspply to all the Text() views in there
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame a little smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page3())
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
            // the 'bottomTRailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on topa
            
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page1())
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
        
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}

struct Page3: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("I look around, but I")
                Text("can’t make")
                Text("out anything.")
                Text("")
                Text("No shapes, no lights.")
                Text("")
                Text("The silence is almost")
                Text("as suffocating as the")
                Text("darkness.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            //these two previous functions aspply to all the Text() views in there
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame a little smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                    PlaygroundPage.current.setLiveView(Page4())
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
            // the 'bottomTRailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on topa
            
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page2())
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
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}

struct Page4: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("What is going on?")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            //these two previous functions aspply to all the Text() views in there
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame a little smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                    PlaygroundPage.current.setLiveView(Page5())
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
            // the 'bottomTRailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on topa
            
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page3())
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
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}
struct Page5: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("I get up and I start")
                Text("groping around.")
                Text("")
                Text("I feel a damp wall.")
                Text("The cold ground")
                Text("under me.")
                Text("")
                Text("And then, finally,")
                Text("something else.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            //these two previous functions aspply to all the Text() views in there
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame a little smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                    PlaygroundPage.current.setLiveView(Page6())
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
            // the 'bottomTRailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on topa
            
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page4())
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
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}
struct Page6: View {
    var body: some View {
        
        
        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            // first Vstack is for the text in the center; spacing is between Text() views
            VStack(spacing:15) {
                Text("A small object.")
                Text("")
                Text("Rectangle-shaped, with")
                Text("rounded edges.")
                Text("")
                Text("A phone…?")
                Text("")
                Text("It works, but the only")
                Text("thing I can do is text")
                Text("an unknown contact.")
            }
            .multilineTextAlignment(.center)
            .font(Font.custom("dogica", size: 11))
            //these two previous functions aspply to all the Text() views in there
            .shadow(color: .green,radius: 2)
            .shadow(color: .green,radius: 2)
            .frame(width: 250, height: 400) //puts the text in a frame a little smaller than the zstack frame for border spacing
            
            // second VStack is for the button
            VStack{
                Button(
                    action:{
                    PlaygroundPage.current.setLiveView(Page7())
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
            // the 'bottomTRailing' aligns the whole VStack content on the bottom right of the frame, which has the same dimension of the Text VStack but it's layered on topa
            
            VStack{
                Button(
                    action:{
                        PlaygroundPage.current.setLiveView(Page5())
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
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }
}

struct Page7: View {
    @State var scale = 03.0
    @State var img = "envelopebianca.png"
    @State var opacityVal = 1.0
    let timer = Timer.publish(every: 0.7, on: .main, in: .common).autoconnect()
    
    var body: some View {

        ZStack {        //stacks the views one in front of the other like image levels
            
            Color.black    //background
                .ignoresSafeArea()
            
            VStack {
                Button (action: {
//                    PlaygroundPage.current.setLiveView(Page6())
                },
                        label: {

                    Image(uiImage: UIImage(named: "envelopebianca.png")!)
                        .shadow(color: .green,radius: 9)
                                .shadow(color: .green,radius: 4)
                                .shadow(color: .green,radius: 4)
                                .shadow(color: .green,radius: 4)
                                .opacity(opacityVal)
                                .onReceive(timer) { _ in
                                    if opacityVal == 1.0 {
                                        opacityVal = 0.0
                                    }else{
                                        opacityVal = 1.0
                                    }
                                }
                })
                        }
//                                .scaleEffect(scale)
        .frame(width: 300, height: 500) //the dimensions of the box
        .foregroundColor(.white) //the color is here so it applies to everything inside the ZStack
    }

                                          
  }
}
//run it
PlaygroundPage.current.setLiveView(Page1())



//: [▷](@next)

