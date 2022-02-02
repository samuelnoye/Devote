//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com 
//

import SwiftUI

@main
struct DevoteApp: App {
  let persistenceController = PersistenceController.shared
  
  @AppStorage("isDarkMode") var isDarkMode: Bool = false
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
  }
}
