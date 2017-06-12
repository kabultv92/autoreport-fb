require 'rubygems'
require 'mechanize'
require 'colorize'

puts ''
puts "BlackRuby-Dev => #{'www.facebook.com/groups/blackrubydeveloper'.green} || #{'When ruby Goes To Evil'.red}"
puts ''
puts "Created By {\n #{'Nier'.red} => https://www.facebook.com/CodeH4CK3R || https://www.facebook.com/nier.nier.1088 \n #{'Hacker-eater.Midir'.red} \nThanks For Refrence: \n #{'Denny Darmawan'.green} => https://www.facebook.com/denny.darmawan.intra \n}"
puts "This Tools is who want to learn about Lib Mechanize. #{'Author'.red} May Not #{'Warranty'.red}"
puts ''
puts 'Usage: ruby autoreport-fb.rb [your id/email] [your pass facebook] [target(reportable_ent_token / profile_id)]

class Facebook < Mechanize
	user_agent_alias = 'Windows Mozilla'
	follow_meta_refresh = true
	
	def login(email, pass)
		get 'https://www.facebook.com/'
		form_login = page.form_with(:method => 'POST') do |a|
			a.email = email
			a.pass = pass
		end.submit(form_login)
	end

	def report(ent)
		get "https://m.facebook.com/nfx/basic/question/?context_str={%22initial_action_name%22%3A%22RESOLVE_PROBLEM%22%2C%22breadcrumbs%22%3A[]%2C%22story_location%22%3A%22profile_someone_else%22%2C%22is_from_feed_tombstone%22%3Afalse%2C%22actions_taken%22%3A%22%22%2C%22is_rapid_reporting%22%3Afalse%2C%22reportable_ent_token%22%3A%22#{ent}%22%2C%22is_impostor%22%3A%22%22}&redirect_uri=%2Fprofile.php%3Fid%3D#{ent}" do |a|
			b = page.forms.first do |a|
				a['a'] = 'b'
			end
			c = b.radiobutton_with(:value => /account/).check
			d = a.form_with(:method => 'POST') do |a|
				puts 'Segment Report 1 Submitted'
			end.submit(d)
		end
		e = page.forms.first do |a|
			a['a'] = 'b'
		end
		f = e.radiobutton_with(:value => /fake/).check
		g = page.form_with(:method => 'POST') do |a|
			puts 'Segment Report 2 Submitted'
		end.submit(g)
		h = page.forms.first do |a|
			a['a'] = 'b'
		end
		i = h.radiobutton_with(:value => /REPORT_CONTENT/).check
		j = page.form_with(:method => 'POST') do |a|
			puts 'Review To Facebook'
		end.submit(j)
		pp j
		
	
	end
end

facebook = Facebook.new
facebook.login(ARGV[0], ARGV[1])
facebook.report(ARGV[2])
#BUDI DILARANG COPY PASTE !!1111!!1
