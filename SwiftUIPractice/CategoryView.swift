//
//  CategoryView.swift
//  SwiftUIPractice
//
//  Created by 민지은 on 2024/04/22.
//

import SwiftUI

struct Category: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

struct CategoryView: View {
    
    @State private var query = ""
    
    var filterCategory: [Category] {
        return query.isEmpty ? category : category.filter({ category in
            category.name.contains(query)
        })
    }
    
    let item = ["SF", "오락", "스릴러", "로맨스", "범죄", "호러", "개그", "일상"]
    
    @State private var category = [Category(name: "스릴러", count: 1),
                    Category(name: "스릴러", count: 1),
                    Category(name: "SF", count: 3),
                    Category(name: "로맨스", count: 4),
                    Category(name: "애니메이션", count: 5)]
    
    func setupRows(_ category: Category) -> some View {
        HStack {
            Image(systemName: "play")
            Text("\(category.name) (\(category.count))")
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filterCategory, id: \.id) { value in
                    NavigationLink {
                        SearchDetailView(category: value)
                    } label: {
                        setupRows(value)
                    }
                }
            }
            .navigationTitle("영화 검색")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        category.append(Category(name: item.randomElement()!, count: .random(in: 1...100)))
                    } label: {
                       Image(systemName: "ellipsis.circle")
                    }
                }
            }
            .searchable(text: $query, placement: .navigationBarDrawer, prompt: "영화 장르 검색")
            .onSubmit(of: .search) {
                print("검색")
            }
        }
    }

}

struct SearchDetailView: View {
    
    let category: Category
    
    var body: some View {
        Text("\(category.name): \(category.count)")
    }
}

#Preview {
    CategoryView()
}
