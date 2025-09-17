// ### What I Learned
// Today, I learned how to create a grid view in SwiftUI using `LazyVGrid` with adaptive and fixed layouts. Grids are a versatile way to present data in a structured manner, and SwiftUI makes it easy to implement them with flexible layouts.

// ### Key Concepts
// - **LazyVGrid**: A container view that arranges its child views in a grid that grows vertically, creating items only when they are needed.
// - **GridItem**: Defines a single item in a grid, specifying its size and spacing.

// ### Example Code
// Here is an example demonstrating a grid view with adaptive layout:


import SwiftUI

struct GridViewUI: View {
    let items = Array(1...1000)
    let layout = [GridItem(.adaptive(minimum: 50))]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: layout) {
            ForEach(items,id:\.self){ item in
                Text("\(item)")
                    .frame(width: 50, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
          }
        }
    }
}

struct GridViewUI_Previews: PreviewProvider {
    static var previews: some View {
        GridViewUI()
    }
}
