desc "Runs an external ruby script"
task :run_ruby => :environment do
	
	filepath = Rails.root.join('lib','external_scripts', 'Phil_Banana_Region.R')	
	output = `Rscript --vanilla #{filepath}`
	puts "running R!"
	puts output
end

