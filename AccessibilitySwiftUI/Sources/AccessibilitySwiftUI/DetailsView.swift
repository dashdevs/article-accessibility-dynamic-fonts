import SwiftUI

struct DetailsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(0..<20, id: \.self) {
                    DetailsViewCell(title: "Title \($0)", subtitle: "Subtitle \($0)", isOn: $0 % 2 == 0)
                        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                }
            }
        }
        .navigationTitle("Details")
    }
}
