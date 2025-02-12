import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        FrameworkTitleView(imageName: "app-clip", name: "App Clips")
    }
    
//    var body: some View {
//        ZStack {
//            VStack(spacing: 25) {
//                HStack(spacing: 25) {
//                    VStack {
//                        Image("app-clip")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("App Clips")
//                    }
//                    
//                    VStack {
//                        Image("arkit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("ARKit")
//                    }
//                    
//                    VStack {
//                        Image("carplay")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("CarPlay")
//                    }
//                }
//                
//                HStack(spacing: 25) {
//                    VStack {
//                        Image("catalyst")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("Catalyst")
//                    }
//                    
//                    VStack {
//                        Image("classkit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("ClassKit")
//                    }
//                    
//                    VStack {
//                        Image("cloudkit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("CloudKit")
//                    }
//                }
//                
//                HStack(spacing: 25) {
//                    VStack {
//                        Image("coreml")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("CoreML")
//                    }
//                    
//                    VStack {
//                        Image("healthkit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("HealthKit")
//                    }
//                    
//                    VStack {
//                        Image("metal")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("Metal")
//                    }
//                }
//                
//                HStack(spacing: 25) {
//                    VStack {
//                        Image("sf-symbols")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("SF Symbols")
//                    }
//                    
//                    VStack {
//                        Image("sirikit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("SiriKit")
//                    }
//                    
//                    VStack {
//                        Image("spritekit")
//                            .renderingMode(.original)
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 100, height: 100)
//                        Text("SpriteKit")
//                    }
//                }
//            }
//        }
//    }
}

#Preview {
    FrameworkGridView()
}

// MARK: - FramkeworkTitleView
struct FrameworkTitleView: View {
    let imageName: String
    let name: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)

        }
    }
}
