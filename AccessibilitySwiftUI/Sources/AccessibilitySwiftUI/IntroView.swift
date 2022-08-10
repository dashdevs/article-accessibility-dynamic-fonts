import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack {
            Text("Title")
                .padding(.top)
            Spacer()
            Image("accessibility", bundle: .module)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .accessibilityLabel("Accessibility image")
                .accessibilityHint("Accessibility icon on the Intro screen")
                .frame(width: 100, height: 100)
            Spacer()
            NavigationLink("Open List Screen") {
                DetailsView()
            }
            .padding(.bottom)
        }
    }
}
