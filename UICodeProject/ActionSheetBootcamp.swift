//
//  ActionSheetBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/21/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
//        Button("Click Me") {
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet) {
//            getActionSheet()
//        }
        
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isOtherPost
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    private func getActionSheet() -> ActionSheet{
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let deletebutton: ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        let title: Text = Text("What would you like to do?")
        switch actionSheetOption{
        case .isOtherPost:
            return ActionSheet(title: title,
            message: nil,
            buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(title: title,
            message: nil,
            buttons: [shareButton, reportButton, deletebutton, cancelButton])
        }
        
        
        
//        return ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(title: Text("This is the title"),
//        message: Text("This is the message!"),
//        buttons: [button1, button2, button3])
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
