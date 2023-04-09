//
//  AlertsBootcamp.swift
//  UICodeProject
//
//  Created by Ishaan Bhasin on 3/17/23.
//

import SwiftUI

struct AlertsBootcamp: View {
    @State var showAlert: Bool = false
    @State var bgColor: Color = .red
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    enum MyAlerts{
        case success
        case error
    }
    var body: some View {
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button(action: {
//                    alertTitle = "Error 1"
//                    alertMessage = "Message 1"
                    alertType = .error
                    showAlert.toggle()
                }, label: {
                    Text("Button 1")
                        .foregroundColor(.red)
                        .padding()
                        .background {
                            Color.white
                                .cornerRadius(10)
                        }
                    
                })
                
                Button(action: {
                    alertType = .success
//                    alertTitle = "Error 2"
//                    alertMessage = "Message 2"
                    showAlert.toggle()
                }, label: {
                    Text("Button 2")
                        .foregroundColor(.red)
                        .padding()
                        .background {
                            Color.white
                                .cornerRadius(10)
                        }
                    
                })
            }
            .alert(isPresented: $showAlert) {
                //            Alert(title: Text("There was an error!"))
                getAlert()
            }
        }
    }
    private func getAlert() -> Alert {
        
        return Alert(title: Text(alertMessage), message: Text(alertMessage), dismissButton: .default(Text("Ok")))
        //        return Alert(
        //            title: Text("This is the title"),
        //            message: Text("Here we will show alert"),
        //            primaryButton: .destructive(Text("Delete"), action: {
        //                bgColor = .yellow
        //            }),
        //            secondaryButton: .cancel(Text("Cancel"), action: {
        //                bgColor = .red
        //            }))
    }
}

struct AlertsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertsBootcamp()
    }
}
