namespace :dev do
	task fake_product: :environment do
		80.times do |i|
			Product.create!(name: FFaker::Product.product,
				description: FFaker::BaconIpsum.sentences,
				price: FFaker::AddressNL.building_number,
				)
		end
	end
end