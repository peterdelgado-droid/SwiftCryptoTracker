//
//  HomeStatsView.swift
//  SwiftCryptoTracker
//
//  Created by Peter Delgado on 6/9/22.
//

import SwiftUI

struct HomeStatsView: View {



	@EnvironmentObject private var vm: HomeViewModel

	@Binding var showPortofolio: Bool

	var body: some View {
		HStack{
			ForEach(vm.statistics) { stat in
				StatisticView(stat: stat)
					.frame(width: UIScreen.main.bounds.width / 3)

			}
		}
		.frame(width: UIScreen.main.bounds.width, alignment: showPortofolio ? .trailing : .leading)
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
		HomeStatsView(showPortofolio: .constant(false))
			.environmentObject(dev.homeVM)
    }
}
