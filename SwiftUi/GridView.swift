// ### What I Learned
// Today, I learned how to create a grid view in SwiftUI using `LazyVGrid` with adaptive and fixed layouts. Grids are a versatile way to present data in a structured manner, and SwiftUI makes it easy to implement them with flexible layouts.

// ### Key Concepts
// - **LazyVGrid**: A container view that arranges its child views in a grid that grows vertically, creating items only when they are needed.
// - **GridItem**: Defines a single item in a grid, specifying its size and spacing.

// ### Grid Layout Types
// 1. **Adaptive Layout**: Allows the grid to adjust the number of columns to fit the available space. Each item has a minimum width, and the grid adapts to accommodate as many items as possible within the given width.
// 2. **Flexible Layout**: Allows each item to have a flexible width within a specified range. This ensures that the items resize to fit the available space while maintaining a minimum and maximum width.
// 3. **Fixed Layout**: Specifies a fixed width for each item. The grid will have a fixed number of columns regardless of the available space.


import SwiftUI

struct GridView: View {
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
        .navigationTitle("GridView")
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
