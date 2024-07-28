//
//  ContentView.swift
//  Day-019-UnitConvert
//
//  Created by Deren Bozer on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    
    /// Focus state for keyboard
    @FocusState private var fieldIsFocused: Bool
    
    /// Temperature Options
    let tempOptions = ["C", "F", "K"]
    
    /// Temperature Selections
    @State private var tempTypeStart = "C"
    @State private var tempTypeEnd = "F"
    
    /// Temperature Values
    @State private var tempStart: Double = 100.0
    @State private var tempEnd: Double = 212.0
    
    /// Result Values
    var calc: Double {
        switch tempTypeStart {
        case "C":
            switch tempTypeEnd {
            case "C":
                return tempStart
            case "F":
                return (tempStart * (9/5)) + 32
            case "K":
                return tempStart + 273.15
            default:
                return 0.0
            }
        case "F":
            switch tempTypeEnd {
            case "C":
                return (tempStart - 32) * (5/9)
            case "F":
                return tempStart
            case "K":
                return ((tempStart - 32) * (5/9)) + 273.15
            default:
                return 0.0
            }
        case "K":
            switch tempTypeEnd {
            case "C":
                return tempStart - 273.15
            case "F":
                return (tempStart - 273.15) * 9/5 + 32
            case "K":
                return tempStart
            default:
                return 0.0
            }
        default:
            return 0.0
        }
    }
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Temperature") {
                    HStack {
                        Text("From")
                            .frame(width: 40, alignment: .leading)
                        
                        Picker("Initial Unit", selection: $tempTypeStart) {
                            ForEach(tempOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    
                    
                    HStack {
                        Text("To")
                            .frame(width: 40, alignment: .leading)
                            
                        
                        Picker("Desired Unit", selection: $tempTypeEnd) {
                            ForEach(tempOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    
                    HStack {
                        Text("Enter :")
                            .frame(width: 60, alignment: .leading)
                        
                        TextField("Start Temp",value: $tempStart,format: .number.precision(.fractionLength(2)))
                            .keyboardType(.decimalPad)
                            .focused($fieldIsFocused)
                            .frame(width: 100)
                        
                        Text("° \(tempTypeStart)")
                    }
                    
                    HStack {
                        Text("Result :")
                            .frame(width: 60, alignment: .leading)
                        
                        Text(calc, format: .number.precision(.fractionLength(2)))
                            .frame(width: 100, alignment: .leading)
                        
                        Text("° \(tempTypeEnd)")
                    }
                }
                
                
            }
            .navigationTitle("Unit Conversion")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                if fieldIsFocused {
                    Button("Done") {
                        fieldIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
