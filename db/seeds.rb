Testimonial.destroy_all

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
		name: "Chris Carew",
		position: "Lead Software Developer",
		company: "Edgenuity Inc",
		image_url: "#{aws_path}/chris-c.jpg",
		content: "Jesse knows his stuff. I've seen a number of people graduate from web development bootcamps but I am most impressed by his spirit of entrepreneurship and enthusiasm for web development.</p><p>I haven't had the pleasure of working with him directly but I've seen the code for some of the things he's worked on - It's clear that he's on track to be a very successful engineer designer."
	},
	{
		name: "Sarah Marie",
		position: "Founder",
		company: "The Bouj",
		image_url: "#{aws_path}/sarah-r.jpg",
		content: "Nothing short of impressive having a full stack developer taking full ownership of immensely detailed work.</p><p>Jesse has been fully responsive in incorporating all requests and feedback involving design and functionality for the Bouj®. Jesse consistently goes above and beyond with adding valuable insight for application performance, scaling and design.</p><p>It is a pleasure having a software developer that provides real-time progress updates on a consistent basis."
	},
	{
		name: "Reid Simpson",
		position: "Investment Professional",
		company: "Sunstone Financial",
		image_url: "#{aws_path}/reid-s.jpg",
		content: "Jesse has a wonderful ability of making things that seem complicated become easy, simple and beautiful. He has a designers eye, and is very creative when it comes to web and app development.</p><p>One thing that sets Jesse apart is his ability to think like a business owner and get a project done. I have worked with Jesse in the past, and will continue to send my personal business and referral business to him!"
	},
		
	{
		name: "Laura Petersen",
		position: "Founder",
		company: "Podtent Marketing",
		image_url: "#{aws_path}/laura-p.jpg",
		content: "Jesse was a foundational element to our team at Student-Tutor. From his first day, he went above and beyond the call of duty, eager to take on more challenges.</p><p>Not only was he an exceptional sales associate, but he was also a major contributor to our website UX, sales funnel structure, and completely automated our daily operations in Infusionsoft.</p><p>Rather than call Infusionsoft for technical support, Jesse quickly became our go-to problem solver."
	},
	{
		name: "Andrea Blake", 
		position: "Travel Blogger",
		company: "Southwest Sampler",
		image_url: "#{aws_path}/andrea-b.jpg",
		content: "Jesse is phenomenal at what he does - he is very knowledgeable in both web development and digital marketing.</p><p>Never have I had anyone go into as much detail as he did for me in the one hour I spent with him. Organized, efficient and over all crystal clear notes. I now feel more prepared than ever, thanks to Jesse."
	},
	{
		name: "Arash Tadayon", 
		position: "CEO",
		company: "Dezapp",
		image_url: "#{aws_path}/arash-t.jpg",
		content: "I've seen Jesse's progress in web development skyrocket since back when he could barely read a single page of basic css.</p><p>He's a guy I've always had a pleasure talking shop with and from my experience, he's got the knowledge and tools to accomplish anything he puts his mind to.</p><p>I appreciate that he comprehends the technical aspects of a project as well as the importance of UX from a digital marketing standpoint. As for his code, I can tell you it looks good."
	},
	{
		name: "Tony Caldwell", 
		position: "Business Analyst",
		company: "Pacific Change Semiconductors",
		image_url: "#{aws_path}/tony-c.jpg", 
		content: "Jesse is a humble leader and outstanding businessman. He taught me a great deal about organizational efficiency and business development. If you need someone with skill sets far beyond what he may initially reveal, choose Jesse."
	},
	{
		name: "Beke Richardson",
		position: "Real Estate Agent",
		company: "Ray White Barrington",
		image_url: "#{aws_path}/beke-r.jpg",
		content: "After the devastating 2011 earthquake in Christchurch New Zealand, Greenpeace had to cease all fundraising efforts in the area. As the Team Leader at the time, I was relocated to Auckland and was eager to return home. After a few months, Jesse was hired and offered to help me pilot a program to test the areas fundraising viability.</p><p>Thanks to Jesse's assistance and unwavering commitment, I was able to establish an extremely successful team to once again campaign for Greenpeace in Christchurch NZ."
	},
	{
		name: "Alix Prappas", 
		position: "Founder",
		company: "Sturdy Roots",
		image_url: "#{aws_path}/alix-p.jpg",
		content: "Jesse is a master of digital marketing. He has a clear understanding of: design, messaging, and the sales funnel process.</p><p>If you want clarity and results in your digital marketing, he is a great helper."
	}
]


real_testimonials.each do |testimonial|
	Testimonial.find_or_create_by(testimonial)
end