testi = {
  name: "John McIntyre", 
  position: "CEO, TransTech",
  image_url: "person-1.jpg",
  content: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections."
}


7.times do 
  Testimonial.create(testi)
end