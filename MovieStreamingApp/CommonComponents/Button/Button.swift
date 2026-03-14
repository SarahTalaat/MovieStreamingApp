//
//  Button.swift
//  MovieStreamingApp
//
//  Created by Sarah Talaat Ammar on 13/03/2026.
//


import SwiftUI

struct CustomButton: View {
    
    var text: String
    var textSize: CGFloat
    var textColor: Color
    var borderColor: Color = .clear
    var buttonColor: Color = .clear
    var disabledButtonColor: Color =
    Color(red:225/255,green: 225/255,blue:226/255)
    var diabledTextColor: Color =
    Color(red:125/255,green: 126/255,blue:131/255)
    var cornerRadius: CGFloat
    var padding: CGFloat
    var horizontalPadding: CGFloat = 0
    var isEnabled: Bool
    var action: () -> Void
    
    var body: some View {
        
        
        Button{
            
        } label: {
            Text(text)
                .font(.system(size: textSize))
                .bold()
            
        }
        .foregroundColor(isEnabled ? textColor : diabledTextColor )
        .padding(.horizontal, horizontalPadding)
        .padding(padding)
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(isEnabled ? buttonColor : disabledButtonColor)
        )
        .overlay {
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(borderColor, lineWidth: 2)
        }
        .disabled(!isEnabled)
        .animation(.easeInOut(duration: 0.2), value: isEnabled)
        
    }
    
    
}

//rgb(104, 92, 240)
//rgb(225, 225, 226)
//rgb(125, 126, 131)

#Preview {
    CustomButton(
        text: "Primary Color",
        textSize: 14,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 10,
        horizontalPadding: 25,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Primary Color",
        textSize: 20,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 20,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Primary Color",
        textSize: 25,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 30,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Secondary Color",
        textSize: 14,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: Color(red:3/255,green: 5/255,blue:15/255),
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 10,
        horizontalPadding: 25,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Secondary Color",
        textSize: 14,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: Color(red:3/255,green: 5/255,blue:15/255),
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 20,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Secondary Color",
        textSize: 25,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: Color(red:3/255,green: 5/255,blue:15/255),
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 30,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}


#Preview {
    CustomButton(
        text: "Tertiary Color",
        textSize: 14,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: .clear,
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 10,
        horizontalPadding: 25,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Tertiary Color",
        textSize: 25,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: .clear,
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 20,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Tertiary Color",
        textSize: 30,
        textColor: Color(red:3/255,green: 5/255,blue:15/255),
        borderColor: .clear,
        buttonColor: .clear,
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 30,
        horizontalPadding: 30,
        isEnabled: true){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Disable Button",
        textSize: 14,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 10,
        horizontalPadding: 25,
        isEnabled: false){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Disable Button",
        textSize: 20,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 20,
        horizontalPadding: 30,
        isEnabled: false){
        
        
    }
}

#Preview {
    CustomButton(
        text: "Disable Button",
        textSize: 25,
        textColor: .white,
        buttonColor: Color(red:104/255,green: 92/255,blue:240/255),
        disabledButtonColor:Color(red:225/255,green: 225/255,blue:226/255) ,
        diabledTextColor: Color(red:125/255,green: 126/255,blue:131/255) ,
        cornerRadius: 999,
        padding: 30,
        horizontalPadding: 30,
        isEnabled: false){
        
        
    }
}
