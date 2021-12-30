import SwiftUI

struct FrameworkDetailView: View {
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()
            FrameworkTitleView(framework: viewModel.framework)
            Text(viewModel.framework.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!) { 
                Label("Learn More", systemImage: "book.fill")
            }
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
////                AFButton(title: "Learn More")
//                Label("Learn More", systemImage: "book.fill")
//            }
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
//            .tint(.red)
        }
//        .sheet(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString) ?? URL(string: "www.apple.com")!)
//        }
        .padding()
    }
}
