import SwiftUI

struct DetailsViewCell: View {
    let title: String
    let subtitle: String
    @State var isOn: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                Text(subtitle)
            }
            Spacer()
            Toggle("", isOn: $isOn)
        }
    }
}
