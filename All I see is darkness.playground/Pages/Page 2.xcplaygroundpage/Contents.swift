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
                    if index != 0 {
                        Text(myHistory[0].text).transition(.opacity)
                            .fixedSize(horizontal: false, vertical: true)
                            .shadow(color: myHistory[0].by, radius: 2)
                            .shadow(color: myHistory[0].by, radius: 2)
                    }
                    if t > 1 {
                        Text(myHistory[1].text).transition(.opacity)
                            .fixedSize(horizontal: false, vertical: true)
                            .shadow(color: myHistory[1].by, radius: 2)
                            .shadow(color: myHistory[1].by, radius: 2)
                    }
                    if t > 2 {
                        Text(myHistory[2].text).transition(.opacity)
                            .fixedSize(horizontal: false, vertical: true)
                            .shadow(color: myHistory[2].by, radius: 2)
                            .shadow(color: myHistory[2].by, radius: 2)
                    }
                    if t > 3 {
                        Text(myHistory[3].text).transition(.opacity)
                            .fixedSize(horizontal: false, vertical: true)
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
                        
                        Button("> Who are you?") {
                            addText("> Who are you?", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> Who are you? And how do you have my number?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {
                                timer in index = 2
                            }
                        }
                        
                        Button("> Where am I?"){
                            addText("> Where am I?", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> How would I know?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {
                                timer in index = 1
                            }
                        }
                        
                        Button("> HELP ME!!!") {
                            addText("> HELP ME!!!", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> Who are you? And how do you have my number?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {
                                timer in index = 2
                            }
                        }
                    
                    case 1:
                        
                        Button("> Who are you?") {
                            addText("> Who are you?", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> Who are you? And how do you have my number?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {
                                timer in index = 2
                            }
                        }
                        
                        Button("> HELP ME!!!") {
                            addText("> HELP ME!!!", by: .green)
                            index = 9
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> Who are you? And how do you have my number?", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) {
                                timer in index = 2
                            }
                        }
                    
                    case 2:
                        
                        Button("> Please help me!"){
                            index = 9
                            addText("> Please help me! I don’t know where I am.", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in addText("> The only thing I have is your number on this phone.", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> I woke up here. Everything is dark. I can’t find an exit.", by: .green)
                            }
                            Timer.scheduledTimer(withTimeInterval: 4, repeats: false) {
                                timer in addText("> There’s nothing I can do.", by: .yellow)
                            }
                            Timer.scheduledTimer(withTimeInterval: 5, repeats: false) {
                                timer in index = 3
                            }
                        }
                        
                    case 3:
                        
                        Button("> Please! Help!"){
                            index = 9
                            addText("> Please! Help!", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) {
                                timer in index = 4
                            }
                        }
                    
                    case 4:
                        
                        Button("> Call someone!"){
                            index = 9
                            addText("> Call someone! Call the police!", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> How do I know this is not a prank?", by: .yellow)
                            }
                        }
                        
                        Button("> You’re the only one I can ask to"){
                            index = 9
                            addText("> You’re the only one I can ask to", by: .green)
                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) {
                                timer in addText("> How do I know this is not a prank?", by: .yellow)
                            }
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
