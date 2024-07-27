//
//  ContentView.swift
//  Day-017-WeSplit
//
//  Created by Deren Bozer on 7/27/24.
//

import SwiftUI

struct ContentView: View {
    
    /// Focus for keyboard
    @FocusState private var amountIsFocused: Bool
    
    /// Input variables
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    /// Tip Options
    let tipOptions = [0,5,10,15,20,25]
    
    
    /// Tip Amount
    var tipAmount: Double {
        let tipSelection = Double(tipPercentage)
        let grandTotal = checkAmount * (tipSelection / 100.0)
        
        return grandTotal
    }
    
    /// Bill Total
    var totalBill: Double {
        return checkAmount + tipAmount
    }
    
    /// Total per person
    var totalPerPerson: Double {
        return totalBill / Double(numberOfPeople + 2)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                /// Check Amount
                Section("Bill Amount") {
                    TextField(
                        "Amount:",
                        value: $checkAmount,
                        format: .currency(code: Locale.current.currency?.identifier ?? "USD")
                    )
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                }
                
                /// Tip Percent
                Section("How much tip do you want to leave?") {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipOptions, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                /// Number of people
                Section("Guests") {
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                /// Tip Amount
                Section("Tip Amount") {
                    Text(tipAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                /// Total Bill
                Section("Bill Total") {
                    Text(totalBill, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                /// Split Amount
                Section("Bill split \(numberOfPeople + 2) ways") {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
            } // form end
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
            
            
        } // Nav end
        
        
    } // View end
    
    
} // struct end


#Preview {
    ContentView()
}

