import SwiftUI

struct ContentView: View {
    @AppStorage("counterValue") private var counter = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("Sayaç")
                .font(.largeTitle)
                .bold()

            Text("\(counter)")
                .font(.system(size: 64, weight: .bold))

            HStack(spacing: 16) {
                Button("Azalt") {
                    counter -= 1
                }
                .buttonStyle(.bordered)

                Button("Artır") {
                    counter += 1
                }
                .buttonStyle(.borderedProminent)
            }

            Button("Sıfırla") {
                counter = 0
            }
            .foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
