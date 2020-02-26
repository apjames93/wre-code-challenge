User.destroy_all
Article.destroy_all
ArticleCategory.destroy_all
Category.destroy_all

admin_user = User.new(
  username: 'Alex',
  email: 'email@cool.com',
  admin: true,
  password: SecureRandom.hex(10),
)
admin_user.save

one_user = User.new(
  username: 'Bradford',
  email: 'Bradford@fatBoy.com',
  admin: false,
  password: SecureRandom.hex(10),
)
one_user.save

two_user = User.new(
  username: 'JoJo',
  email: 'JoJo@smellsBad.com',
  admin: false,
  password: SecureRandom.hex(10),
)
two_user.save

categories = Category.create!([
  {name: 'Zombie'},
  {name: 'Office'},
  {name: 'Cupcake'},
  {name: 'Pirate'}
])

zombie_articles = Article.create!([{
  title: 'rick grimes',
  description: 'nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. ',
  user: admin_user,
}, {
  title: 'The voodoo sacerdos flesh eater',
  description: 'Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus.',
  user: one_user,
}, {
  title: 'Nescio brains',
  description: 'Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead',
  user: two_user,
}])

ArticleCategory.create!([{
  article: zombie_articles[0],
  category: categories[0],
}, {
  article: zombie_articles[1],
  category: categories[0],
}, {
  article: zombie_articles[2],
  category: categories[0],
}])

office_articles = Article.create!([{
  title: 'you focus we',
  description: 'Lets unpack that later. We should leverage existing asserts that ladder up to the message timeframe new economy. In an ideal world dog and pony show red flag. We need to build it so that it scales criticality we need to make the new version clean and sexy, but a loss a day will keep you focus we just need to put these last issues to bed. Organic growth cross sabers, yet draw a line in the sand Q1 turn the crank.',
  user: admin_user,
},{
  title: 'not hard guys',
  description: 'It\'s not hard guys we have to leverage up the messaging and gage [sic] where the industry is heading and give back to the community what we’ve learned. Execute race without a finish line land the plane so UX. Can you champion this. What the get all your ducks in a row usabiltiy. Can you ballpark the cost per unit for me. Can we parallel path what are the expectations but move the needle, and talk to the slides. Cross functional teams enable out of the box brainstorming teams were able to drive adoption and awareness for we need more paper so can you send me an invite?. Deliverables draw a line in the sand. Low-hanging fruit i have a hard stop in an hour and half future-proof pulling teeth, so blue money tbrand terrorists blue money.',
  user: one_user,
}, {
  title: 'roadmap herding cats',
  description: 'That\s not on the roadmap herding cats, yet proceduralize, and run it up the flag pole quick win, but make it a priority, but shoot me an email. Who\s responsible for the ask for this request? obviously good optics if you want to motivate these clowns, try less carrot and more stick. Driving the initiative forward those options are already baked in with this model your work on this project has been really impactful win-win-win for collaboration through advanced technlogy. Get all your ducks in a row at the end of the day, for circle back around. Put it on the parking lot. Turn the ship make sure to include in your wheelhouse. Please submit the sop and uat files by next monday those options are already baked in with this model.',
  user: two_user,
}])

ArticleCategory.create!([{
  article: office_articles[0],
  category: categories[1],
}, {
  article: office_articles[1],
  category: categories[1],
}, {
  article: office_articles[2],
  category: categories[1],
}])

cupcake_articles = Article.create!([{
  title: 'cream topping',
  description: 'Cotton candy chocolate donut pie jelly wafer sesame snaps. Ice cream chocolate cake donut tootsie roll cheesecake pie cotton candy pie. Chupa chups chocolate bar cookie lollipop dragée pudding candy icing. Jelly-o wafer bonbon. Marshmallow muffin candy oat cake. Caramels liquorice wafer lollipop. Sesame snaps cake candy marzipan cheesecake wafer. Gummies pastry gingerbread cookie gummi bears caramels tart jelly-o. Biscuit oat cake pie bonbon bonbon fruitcake carrot cake. Chocolate chupa chups brownie fruitcake toffee jelly-o ice cream topping. Cake pie gingerbread. Cheesecake brownie marshmallow pastry candy canes cheesecake muffin. Tiramisu croissant pie.',
  user: admin_user,
},{
  title: 'biscuit cheesecake apple pie chocolate cake',
  description: 'Lemon drops oat cake donut chocolate dragée muffin topping caramels. Jelly dessert dessert donut jujubes marzipan jelly beans topping. Halvah carrot cake gingerbread chocolate donut ice cream tiramisu. Macaroon pudding caramels toffee cake brownie powder caramels. Gingerbread cookie chocolate bar chocolate cake. Sweet roll pastry candy. Toffee pudding toffee apple pie danish jujubes lemon drops marzipan muffin. Cake croissant bonbon muffin gummi bears. Sweet roll sugar plum jujubes cake candy canes cake pastry jelly. Marzipan halvah gummies ice cream chupa chups. Fruitcake icing ice cream gummi bears muffin lollipop halvah chocolate bar. Pie cake tootsie roll chupa chups biscuit cheesecake apple pie chocolate cake.',
  user: one_user,
},{
  title: 'tart macaroon',
  description: 'Jelly-o pastry macaroon pastry donut sweet cookie pastry pie. Tootsie roll cookie apple pie. Muffin lemon drops ice cream gingerbread cupcake. Lemon drops tootsie roll cake chupa chups donut. Bear claw pastry marshmallow danish cake. Sweet roll candy jujubes powder brownie. Jelly-o marzipan apple pie macaroon bear claw. Ice cream jelly beans soufflé sweet roll. Powder powder wafer tart jelly icing topping wafer jujubes. Tootsie roll bear claw dragée. Gummi bears sugar plum candy croissant. Liquorice pastry jelly tart macaroon dragée tart caramels cake. Tootsie roll tiramisu lemon drops jelly chocolate bar halvah halvah dessert.',
  user: two_user,
}])

ArticleCategory.create!([{
  article: cupcake_articles[0],
  category: categories[1],
}, {
  article: cupcake_articles[1],
  category: categories[1],
}, {
  article: cupcake_articles[2],
  category: categories[1],
}])

pirate_articles = Article.create!([{
  title: 'tails scallywag code',
  description: 'Lugsail main sheet Jolly Roger trysail clap of thunder six pounders hempen halter Pieces of Eight coxswain nipperkin. Draught lanyard lateen sail handsomely cackle fruit Gold Road bring a spring upon her cable hail-shot case shot piracy. Bilge Corsair cog Cat onine tails scallywag code of conduct wench Arr grapple Pirate Round.',
  user: admin_user,
},{
  title: 'parley furl lugsai',
  description: 'Schooner chase gabion yard Sea Legs lugsail haul wind heave to crack Jennys tea cup spyglass. Grog scuttle interloper quarter gabion killick chase draft sheet main sheet. Fluke jack nipperkin barkadeer splice the main brace mizzenmast parley furl lugsail weigh anchor.',
  user: one_user,
},{
  title: 'landlubber or just lubber scurvy',
  description: 'Run a shot across the bow Corsair chandler landlubber or just lubber scurvy quarterdeck lugsail Privateer fire ship stern. Parrel bilge rat Gold Road crows nest ye topsail fore Shiver me timbers schooner overhaul. Poop deck Jack Ketch Davy Jones Locker hempen halter fire in the hole crimp crack Jennys tea cup loot crows nest coxswain.',
  user: two_user,
}])

ArticleCategory.create!([{
  article: pirate_articles[0],
  category: categories[1],
}, {
  article: pirate_articles[1],
  category: categories[1],
}, {
  article: pirate_articles[2],
  category: categories[1],
}])

