require 'uri'
module Jekyll
	class Bower
		def initialize()
			print "Checking if NPM is available\n"
			fail unless system('which npm')
			print "Great, NPM is available\n"
			print "Checkin if Bower is available\n"
			unless system('which bower')
				print "Bower not available\n"
				print "Installing bower\n"
				system('npm install -g bower')
				print "Installation completed\n"
			else
				print "Great, Bower is available\n"
			end
		end

		def resolve(site)
			if File.exists?("bower.json")
				print "Resolving dependencies with bower\n"
				unless system('bower install')
					print "Looks like bower is run by a sudo user\n"
					print "Trying with --allow-root\n"
					system('bower install --allow-root')
				end
				print "Bower dependencies resolved successfully\n"
			else
				if site.config['bower']
					print "Resolving bower individually configured in config" + "\n"
					site.config['bower'].each do |name, library| 
						unless File.exists?('bower_components' + File::SEPARATOR + name)
							bower_command = 'bower install ' + library
							unless system(bower_command)
								print "Trying resolving bower with allow-root" + "\n"
								system(bower_command + ' --allow-root')
							end

							if library =~ URI::regexp
								print "Identified bower downloaded dependency is a URL" + "\n"
								print "Performing rename activity if possible" + "\n"
								uri = URI.parse(library)
								filename = File.basename(uri.path, ".*")
								bowerOld = 'bower_components' + File::SEPARATOR + filename
								bowerNew = 'bower_components' + File::SEPARATOR + name
								unless File.exists?(bowerNew)
									File.rename(bowerOld, bowerNew)
									print "Renamed bower ("+filename+") library to " + name + "\n"
								end
							end
							print "Downloaded bower dependency: " + name + "\n"
						else
							print "Bower dependency exists, skipping download\n"
						end
					end
				end
			end
		end
	end
end