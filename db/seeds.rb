Testimonial.destroy_all

# testi = {
#   name: "John McIntyre", 
#   position: "CEO, TransTech",
#   image_url: "person-1.jpg",
#   content: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections."
# }


# 7.times do 
#   Testimonial.create(testi)
# end

aws_path = "https://s3-us-west-2.amazonaws.com/full-tilt/testimonials"

real_testimonials = [
	{
		name: "Todd Vanduzer",
		position: "CEO & Founder",
		company: "Student-Tutor",
		image_url: "#{aws_path}/todd-v.jpg",
		content: "For over a year I worked at a desk across from Jesse building Student-Tutor to what it is now, a successful private tutoring company that services students across the country! His efforts in sales, marketing, and operations were fundamental to our growth and scalability.</p><p>Jesse's keen attention to detail, foresight, and problem-solving allowed us to streamline nearly everything we do so that little issues wouldn't get out of hand down the road."
	},
	{
		name: "Sarah Marie",
		position: "Founder",
		company: "The Bouj",
		image_url: "#{aws_path}/sarah-r.jpg",
		content: "Nothing short of impressive having a full stack developer taking full ownership of immensely detailed work.</p><p>Jesse has been fully responsive in incorporating all requests and feedback involving design and functionality for the Bouj®. Jesse consistently goes above and beyond with adding valuable insight for application performance, scaling and design.</p><p>It is a pleasure having a software developer that provides real-time progress updates on a consistent basis."
	},
	{
		name: "Laura Petersen",
		position: "Founder",
		company: "Podtent Marketing",
		image_url: "#{aws_path}/laura-p.jpg",
		content: "Jesse was a foundational element to our team at Student-Tutor. From his first day, he went above and beyond the call of duty, eager to take on more challenges.</p><p>Not only was he an exceptional sales associate, but he was also a major contributor to our website UX, sales funnel structure, and completely automated our daily operations in Infusionsoft.</p><p>Rather than call Infusionsoft for technical support, Jesse quickly became our go-to problem solver."
	},
	{
		name: "Beke Richardson",
		position: "Real Estate Agent",
		company: "Ray White Barrington",
		image_url: "#{aws_path}/beke-r.jpg",
		content: "After the devastating 2011 earthquake in Christchurch New Zealand, Greenpeace had to cease all fundraising efforts in the area. As the Team Leader at the time, I was relocated to Auckland and was eager to return home. After a few months, Jesse was hired and offered to help me pilot a program to test the areas fundraising viability.</p><p>Thanks to Jesse's assistance and unwavering commitment, I was able to establish an extremely successful team to once again campaign for Greenpeace in Christchurch NZ."
	},
	{
		name: "Tony Caldwell", 
		position: "Business Analyst",
		company: "Pacific Change Semiconductors",
		image_url: "#{aws_path}/tony-c.jpg", 
		content: "Jesse is a humble leader and outstanding businessman. He taught me a great deal about organizational efficiency and business development. If you need someone with skill sets far beyond what he may initially reveal, choose Jesse."
	},
	{
		name: "John McIntyre", 
		position: "CEO",
		company: "TransTech",
		image_url: "person-1.jpg",
		content: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections."
	}
]


real_testimonials.each do |testimonial|
	Testimonial.create(testimonial)
end