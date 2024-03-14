//
//  MapViewActionButton.swift
//  UberCloneSwiftUI
//
//  Created by Rene Salomone on 3/13/24.
//

import SwiftUI

struct MapViewActionButton: View {
    //@Binding var showLocationSearchView: Bool
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                actionForState(mapState)
            }
        } label: {
            // logic for systemName
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundStyle(Color(.black))
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func actionForState(_ state: MapViewState) {
        switch state {
        case .noInput:
            print("DEBUG: No input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected, .polylineAdded:
            mapState = .noInput
            // resets the selectedLocationCoordinate and erasses polyline to previous coordinate
            viewModel.selectedUberLocation = nil
        }
    }
    
    // Switch function for the Menu/Back Button Image
    func imageNameForState(_ state: MapViewState) -> String {
        switch state {
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected, .polylineAdded:
            return "arrow.left"
        default:
            return "line.3.horizontal"
        }
    }
}


#Preview {
    MapViewActionButton(mapState: .constant(.noInput))
}
