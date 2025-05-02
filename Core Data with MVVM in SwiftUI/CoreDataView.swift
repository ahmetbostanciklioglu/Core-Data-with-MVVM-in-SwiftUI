//
//  CoreDataView.swift
//  Core Data with MVVM in SwiftUI
//
//  Created by Ahmet Bostanci on 2.05.2025.
//

import SwiftUI
import CoreData

struct CoreDataView: View {
    @StateObject var vm = CoreDataViewModel()
    @State var textFieldText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                TextField("Add fruit here...", text: $textFieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 55)
                    .background(Color(.lightGray))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal)
                Button {
                    guard !textFieldText.isEmpty else { return }
                    vm.addFruit(text: textFieldText)
                    textFieldText = ""
                } label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.pink)
                        .clipShape(.rect(cornerRadius: 10))
                }
                .padding(.horizontal)
                
                List {
                    ForEach(vm.savedEntities, id: \.description) { entity in
                        Text(entity.name ?? "No Name")
                    }
                    .onDelete(perform: vm.deleteFruit)
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .navigationTitle("Fruits")
        }
        
    }
}

#Preview {
    CoreDataView()
}
