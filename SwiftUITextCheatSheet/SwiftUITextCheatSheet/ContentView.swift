//
//  ContentView.swift
//  SwiftUITextCheatSheet
//
//  Created by Krupanshu Sharma on 31/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                textWithFontAndColor
                textWithMonoSpaced
                textWithStrikeThrough
                textWithUnderline
                textWithKerning
                textWithTracking
                textWithBaselineOffSet
                textWithMarkDown
                textWithMultipleLines
            }
            .navigationTitle("Text Customization")
        }
    }
}

private var textWithFontAndColor: some View {
    Section {
        Text("I am inevitable")
            .fontWeight(.bold)
        
        Text("And I am IronMan")
            .fontWeight(.bold)
            .foregroundColor(.red)
        
    }header: {
        Text("Font Types and Color")
    }
}

private var textWithMonoSpaced: some View {
    Section {
        Group
        {
            Text("Normal Date")
            Text(Date().formatted(date: .long, time: .complete))
                             .font(.system(size: 20))
        }
        
        Group
        {
            Text(Date().formatted(date: .long, time: .complete))
                             .font(.system(size: 20))
                             .monospacedDigit()
            Text("MonoSpaced Applied:")
        }
    }header: {
        Text("Monospaced Digit")
    }
}

private var textWithStrikeThrough: some View {
    Section {
        Text("I am inevitable")
            .strikethrough(true,color: .red)
        
        Text("I am inevitable")
            .strikethrough(true)

    }header: {
        Text("Strike Through with and without custom color")
    }
}

private var textWithUnderline: some View {
    Section {
        Text("May the force be with you.")
            .underline(true, color: .blue)
        
        Text("May the force be with you.")
            .underline(true)
        
        Text("May the force be with you.")
            .underline(true, pattern: .dashDot)
        

    }header: {
        Text("Underline with and without custom color")
    }
}


private var textWithKerning: some View {
    Section {
        Text("ABCDEF").kerning(-3)
        Text("ABCDEF")
        Text("ABCDEF").kerning(3)
    }header: {
        Text("Text with Kerning Example")
    }
}

private var textWithTracking: some View {
    Section {
        Text("ABCDEF").tracking(-3)
        Text("ABCDEF")
        Text("ABCDEF").tracking(3)
    }header: {
        Text("Text with Tracking Example")
    }
}

private var textWithBaselineOffSet: some View {
    Section {
        HStack(alignment: .top) {
                 Text("Hello")
                     .baselineOffset(-10)
                     .border(Color.red)
                 Text("Hello")
                     .border(Color.green)
                 Text("Hello")
                     .baselineOffset(10)
                     .border(Color.blue)
             }
             .background(Color(white: 0.9))

    }header: {
        Text("Text with baselineOffSet Example")
    }
}


private var textWithMarkDown: some View {
    Section {
        Text("Well, *John Wasn't Exactly The Boogeyman*. **He Was The One You Sent To Kill The Fuc*ng Boogeyman**. [Here is my Button Tutorial](https://medium.com/@sharma17krups/swiftui-button-customization-56dd71279845)")
        
    }header: {
        Text("Text with MarkDown")
    }
}

private var textWithMultipleLines: some View {
    Section {
        Text("It's good to meet you, Dr. Banner. Your work on anti-electron collisions is unparalleled. And I'm a huge fan of the way you lose control and turn into an enormous green rage monster.")
            .lineSpacing(10)
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
        
    }header: {
        Text("Text with Multiple lines")
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
