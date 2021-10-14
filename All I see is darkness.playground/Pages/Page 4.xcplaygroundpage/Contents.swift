//: [◁](@previous) | [▷](@next)

import SwiftUI
import PlaygroundSupport
import Combine

// import font
let cfURL = Bundle.main.url(forResource: "dogica", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(cfURL, CTFontManagerScope.process, nil)


struct CurrentView: View {
    @State private var index = 0
    @State private var myHistory = [sms]()
    @State private var t = 0
    
    private func addText(_ text: String, by sender: Color) {
        withAnimation (.linear(duration: 1)) {
            if t < 4 {
                myHistory.append(sms(text: text, by: sender))
                t += 1
            } else {
                myHistory.removeFirst(4)
                t -= 4
                myHistory.append(sms(text: text, by: sender))
                t += 1
            }
        }
    }
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.black
            
            //whole page
            VStack{
                //Spacing
                VStack{
                    Text("to: Unknown")
                }
                .shadow(color: .green, radius: 2)
                .shadow(color: .green, radius: 2)
                .frame(height: 60, alignment: .bottom)
                
                //texts
                VStack(alignment: .leading, spacing: 10){
                    if !myHistory.isEmpty {
                        Text(myHistory[0].text).transition(.opacity)
                            .shadow(color: myHistory[0].by, radius: 2)
                            .shadow(color: myHistory[0].by, radius: 2)
                    }
                    if t > 1 {
                        Text(myHistory[1].text).transition(.opacity)
                            .shadow(color: myHistory[1].by, radius: 2)
                            .shadow(color: myHistory[1].by, radius: 2)
                    }
                    if t > 2 {
                        Text(myHistory[2].text).transition(.opacity)
                            .shadow(color: myHistory[2].by, radius: 2)
                            .shadow(color: myHistory[2].by, radius: 2)
                    }
                    if t > 3 {
                        Text(myHistory[3].text).transition(.opacity)
                            .shadow(color: myHistory[3].by, radius: 2)
                            .shadow(color: myHistory[3].by, radius: 2)
                    }
                }
                .padding(20.0)
                .frame(width: 220, height: 220, alignment: .topLeading)
                .background(Color.offblack)
                
                //buttons
                VStack(alignment: .leading, spacing: 40){
                    
                    switch index {
                    case 0:
                        
                        Button("> I swear I’m in danger!") {
                            addText("> I swear I’m in danger! I hear footsteps!", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> Someone is coming!", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {
                                timer in addText("> Alright. Calm down.", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 4, repeats: false) {
                                timer in addText("> Tell me anything that comes to your mind.", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 8, repeats: false) {
                                timer in addText("> What’s the last thing you remember?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 9, repeats: false) {
                                timer in index = 1
                            }
                        }
                    
                    case 1:
                        
                        Button("> I don’t know.") {
                            addText("> I don’t know. Everything is blurry.", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> I don’t remember how I got here.", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> Can you try to see something with the light of the screen?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {
                                timer in index = 2
                            }
                        }
                        
                        Button("> I just remember waking up.") {
                            addText("> I don’t know. Everything is blurry.", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> I don’t remember how I got here.", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> Can you try to see something with the light of the screen?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {
                                timer in index = 2
                            }
                        }
                        
                        Button("> My head is pounding.") {
                            addText("> My head is pounding.", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> I don’t remember how I got here.", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> Can you try to see something with the light of the screen?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {
                                timer in index = 2
                            }
                        }
                    
                    case 2:
                        
                        Button("> I can’t!") {
                            index = 9
                            addText("> I can’t! I’m trying!", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> What about those footsteps?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in index = 3
                            }
                        }
                        
                        Button("> No, it’s too dark. But I hear trains nearby.") {
                            index = 9
                            addText("> No, it’s too dark. But I hear trains nearby.", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> What about those footsteps?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in index = 3
                            }
                        }
                        
                        Button("> There’s a rotten smell!") {
                            index = 9
                            addText("> There’s a rotten smell!", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> What about those footsteps?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in index = 3
                            }
                        }
                        
                    case 3:
                        
                        Button("> I can’t hear them anymore."){
                            index = 9
                            addText("> I can’t hear them anymore.", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> I’ll look for help.", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) {
                                timer in addText(">  Wait.", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 4, repeats: false) {
                                timer in index = 4
                            }
                        }
                    
                    case 4:
                        
                        Button("> ..."){
                            index = 9
                        }
                                            
                    default:
                        
                        VStack{}.frame(height: 30)
                        
                    }
                
                }
                .shadow(color: .green, radius: 2)
                .shadow(color: .green, radius: 2)
                .frame(width: 200, height: 200, alignment: .leading)
            
            }
            .font(Font.custom("dogica", size: 11))
        }
        .frame(width: 300, height: 500)
        .foregroundColor(.white)
    }
}

PlaygroundPage.current.setLiveView(CurrentView())

//: [◁](@previous) | [▷](@next)
