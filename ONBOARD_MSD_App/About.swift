//
//  About.swift
//  ONBOARD_MSD_App
//
//  Created by Михаил Дядченко on 30.10.2024.
//

import SwiftUI

struct About: View {
    var body: some View {
        Text("О нас")
            .font(.largeTitle)
            .padding()
        Text("ОНБОРД — уникальный медиа-сервис для любителей настольных игр, где пользователи могут найти себе компанию для игр вживую, а также войти в интересующие сообщества по игровым вселенным")
            .padding()
    }
}



#Preview {
    About()
}
