-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 06:03 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `boomergle`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`user_id` int(11) NOT NULL,
  `user_username` varchar(150) NOT NULL,
  `user_password` varchar(300) NOT NULL,
  `user_firstName` varchar(150) NOT NULL,
  `user_lastName` varchar(150) NOT NULL,
  `user_email` varchar(300) NOT NULL,
  `user_gender` enum('Male','Female') NOT NULL,
  `user_registered_date` date NOT NULL,
  `user_level` enum('default','admin','operator') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`user_id`, `user_username`, `user_password`, `user_firstName`, `user_lastName`, `user_email`, `user_gender`, `user_registered_date`, `user_level`) VALUES
(1, 'mutaz', 'ee59de04b592ca8d214f4532265ea686', 'Afiq', 'Rusli', 'mutaz@mail.com', 'Male', '2019-11-09', 'default'),
(2, 'chimcham', 'c1b0d131ac15a6954397aec43b5f1f20', 'Chim', 'Cham', 'chimcham@chimcham.edu.my', 'Male', '2019-11-13', 'default'),
(3, 'robot', '827ccb0eea8a706c4c34a16891f84e7b', 'roboto', 'potato', 'robot@tomato.com', 'Female', '2019-12-01', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`pst_id` int(11) NOT NULL,
  `pst_title` varchar(200) NOT NULL,
  `pst_caption` text NOT NULL,
  `pst_content` text NOT NULL,
  `pst_likes` int(11) NOT NULL,
  `pst_category` enum('News','Sports','Fashion') NOT NULL,
  `pst_date` date NOT NULL,
  `pst_user_id` int(11) NOT NULL,
  `pst_image` varchar(150) NOT NULL,
  `pst_filename` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`pst_id`, `pst_title`, `pst_caption`, `pst_content`, `pst_likes`, `pst_category`, `pst_date`, `pst_user_id`, `pst_image`, `pst_filename`) VALUES
(1, 'Pufferfish - Hogan Research', 'Biologists think pufferfish, also known as blowfish, developed their famous “inflatability” because their slow, somewhat clumsy swimming style makes them vulnerable to predators. ', '<h2>About Pufferfish</h2> Biologists think pufferfish, also known as blowfish, developed their famous “inflatability” because their slow, somewhat clumsy swimming style makes them vulnerable to predators. In lieu of escape, pufferfish use their highly elastic stomachs and the ability to quickly ingest huge amounts of water (and even air when necessary) to turn themselves into a virtually inedible ball several times their normal size. Some species also have spines on their skin to make them even less palatable. <h2>Toxicity</h2> A predator that manages to snag a puffer before it inflates won’t feel lucky for long. Almost all pufferfish contain tetrodotoxin, a substance that makes them foul tasting and often lethal to fish. To humans, tetrodotoxin is deadly, up to 1,200 times more poisonous than cyanide. There is enough toxin in one pufferfish to kill 30 adult humans, and there is no known antidote. <h2>As Food</h2> Amazingly, the meat of some pufferfish is considered a delicacy. Called fugu in Japan, it is extremely expensive and only prepared by trained, licensed chefs who know that one bad cut means almost certain death for a customer. In fact, many such deaths occur annually. <h2>Population</h2> There are more than 120 species of pufferfish worldwide. Most are found in tropical and subtropical ocean waters, but some species live in brackish and even fresh water. They have long, tapered bodies with bulbous heads. Some wear wild markings and colors to advertise their toxicity, while others have more muted or cryptic coloring to blend in with their environment.They range in size from the 1-inch-long dwarf or pygmy puffer to the freshwater giant puffer, which can grow to more than 2 feet in length. They are scaleless fish and usually have rough to spiky skin. All have four teeth that are fused together into a beak-like form. <h2>Diet</h2> The diet of the pufferfish includes mostly invertebrates and algae. Large specimens will even crack open and eat clams, mussels, and shellfish with their hard beaks. Poisonous puffers are believed to synthesize their deadly toxin from the bacteria in the animals they eat. <h2>Threats to Survival</h2> Some species of pufferfish are considered vulnerable due to pollution, habitat loss, and overfishing, but most populations are considered stable.', 3251, 'News', '2019-11-09', 1, '', 'hogan.html'),
(2, 'Barack Obamacare', 'A member of the Democratic Party, he was the first African American to be elected to the presidency. He previously served as a U.S. senator from Illinois from 2005 to 2008 and an Illinois state senator from 1997 to 2004.', '<p>Barack Hussein Obama II is an American attorney and politician who served as the 44th president of the United States from 2009 to 2017. A member of the Democratic Party, he was the first African American to be elected to the presidency. He previously served as a U.S. senator from Illinois from 2005 to 2008 and an Illinois state senator from 1997 to 2004.<br><br>Obama was born in Honolulu, Hawaii. After graduating from Columbia University in 1983, he worked as a community organizer in Chicago. In 1988, he enrolled in Harvard Law School, where he was the first black president of the Harvard Law Review. After graduating, he became a civil rights attorney and an academic, teaching constitutional law at the University of Chicago Law School from 1992 to 2004. He represented the 13th district for three terms in the Illinois Senate from 1997 until 2004, when he ran for the U.S. Senate. He received national attention in 2004 with his March primary win, his well-received July Democratic National Convention keynote address, and his landslide November election to the Senate. In 2008, he was nominated for president a year after his campaign began, after a close primary campaign against Hillary Clinton. He was elected over Republican John McCain and was inaugurated on January 20, 2009. Nine months later, he was named the 2009 Nobel Peace Prize laureate.<br><br>Regarded as a centrist New Democrat, Obama signed many landmark bills into law during his first two years in office. The main reforms that were passed include the Patient Protection and Affordable Care Act (commonly referred to as the "Affordable Care Act" or "Obamacare"), the Dodd Frank Wall Street Reform and Consumer Protection Act, and the Don''t Ask, Don''t Tell Repeal Act of 2010. The American Recovery and Reinvestment Act of 2009 and Tax Relief, Unemployment Insurance Reauthorization, and Job Creation Act of 2010 served as economic stimulus amidst the Great Recession. After a lengthy debate over the national debt limit, he signed the Budget Control and the American Taxpayer Relief Acts. In foreign policy, he increased U.S. troop levels in Afghanistan, reduced nuclear weapons with the United States?Russia New START treaty, and ended military involvement in the Iraq War. He ordered military involvement in Libya, contributing to the overthrow of Muammar Gaddafi. He also ordered the military operations that resulted in the deaths of Osama bin Laden and suspected Yemeni Al-Qaeda operative Anwar al-Awlaki.<br><br>After winning re-election by defeating Republican opponent Mitt Romney, Obama was sworn in for a second term in 2013. During this term, he promoted inclusiveness for LGBT Americans. His administration filed briefs that urged the Supreme Court to strike down same-sex marriage bans as unconstitutional (United States v. Windsor and Obergefell v. Hodges); same-sex marriage was fully legalized in 2015 after the Court ruled that a same-sex marriage ban was unconstitutional in Obergefell. He advocated for gun control in response to the Sandy Hook Elementary School shooting, indicating support for a ban on assault weapons, and issued wide-ranging executive actions concerning global warming and immigration. In foreign policy, he ordered military intervention in Iraq in response to gains made by ISIL after the 2011 withdrawal from Iraq, continued the process of ending U.S. combat operations in Afghanistan in 2016, promoted discussions that led to the 2015 Paris Agreement on global climate change, initiated sanctions against Russia following the invasion in Ukraine and again after Russian interference in the 2016 United States elections, brokered a nuclear deal with Iran, and normalized U.S. relations with Cuba. Obama nominated three justices to the Supreme Court: Sonia Sotomayor and Elena Kagan were confirmed as justices, while Merrick Garland faced unprecedented partisan obstruction and was ultimately not confirmed. During his term in office, America''s soft power and reputation abroad significantly improved.</p>', 6211, 'News', '2019-11-11', 1, '', 'obama.php'),
(3, 'Ask me who joe is, right now!', 'Fog smoked the room, vision was distorted. Hookshot could see nothing but the ground beneath his feet. A grey concrete floor with textures melding with the fog. All his senses were weakening', '<p>Fog smoked the room, vision was distorted. Hookshot could see nothing but the ground beneath his feet. A grey concrete floor with textures melding with the fog. All his senses were weakening, the fog was only making his senses even worst. What he had, though, was his underlying vision. The right of his eye glowed purple of a galaxy. Photographs of the future, flashed in still-images from the current place he was in and images of the near future in the next hour or so. The images helped him see far clearer than he could see with his own eyes. Hookshot took his grappling gun, aimed it at the sky. The photographs of the future still remained in his eye. He could see it all unfold with every second he had. He pulled the trigger, zipping through the fog, leaving a trail of smoke of fog almost following him, but the enemies in the room couldn''t see it.<br><br>At ourselves direction believing do he departure. Celebrated her had sentiments understood are projection set. Possession ye no mr unaffected remarkably at. Wrote house in never fruit up. Pasture imagine my garrets an he. However distant she request behaved see nothing. Talking settled at pleased an of me brother weather.<br><br> "Where is he? Did you see him" the guard spoke, coughing mid-sentence.<br><br>"Like hell, I could. He''s trapped inside the fog somewhere. I can''t see him at all. Our best luck is just shoot the fog itself. Chances are the bullet is gonna'' land in his head" the other guard returned.<br><br>"Are you kidding me?" The first guard who had spoked commented, "so we''re just going to let you shoot in the middle of the fog-who knows what you''ll hit."<br><br>"Listen, it''s only two of us and him. What are the chances that we''re going to shoot something else-it''s not like a civilian is going to be in this smoked up office, in a building that is hundred feet in the sky."<br><br>The first guard sigh, clicked and reloaded his gun. "Read when you are, I guess."<br><br>By the time they had already finished, Hookshot dropped to the ground, alerting both of the guards who were facing back-to-back at the time, Hookshot said: "really? just shoot where you please?" and knocked out the first guard straight in his skull.<br><br>The second guard hesitated, pulled a few shots at Hookshot, only to see the guard''s bullets leave a trail that was distinct in the already-ill-room of fog. "Damn." he grunted beneath his breath.<br><br>Hookshot, still seeing visions of the future, pulled out his grappling gun, took an aim at the soldier at where he was and pulled the trigger! Both Hookshot and the guard start flying towards each other, Hookshot quickly jumps to avoid the incoming guard, only to see the first guard standing in front of Hookshot with his gun pointing at him.<br><br>Hookshot dodged the first bullet that came from the first guard, yelling, the guard said: "You little monster,  I''ll kill you!", but to no avail, Hookshot rapidly smacked the first guard in iterative movements. The guard fell to the back to the ground, moaning in pain.<br><br>Bullets fired from left and right, Hookshot couldn''t see as much in his goggles, but it helped endure the pain he felt from his right eye that was conjuring those photographs. Hookshot knows he is going to win this one, he takes off the goggles, readies his grappling gun and launches towards where he thinks the second guard is firing at.<br><br>ZIP, the grappling flies by, Hookshot flies and lands to the second guard''s chest, knocking both of them over to the ground, separated with the second guard''s gun knocking out of his own hands and flying into the layers of the unknown which was the fog. "Arghh!" the guard screamed as his hand was bruised from the pain. Hookshot smiled to himself, quickly zipped himself towards the second guard before the guard could even have a second chance to stand up, Hookshot repeatedly beat the second guard with his own strength, the only strength he could he even muster from all of that.<br><br>"I told you!" Hookshot could barely say whilst repeatedly punching the second guard''s face. "Not to mess with any of the Degain''s family!"<br><br>Hookshot could barely speak but his strength, the rage that was filling inside of him, it gave him that push to complete the mission he was given.<br><br>Click, a gun sounded. A gun pointing at the back of Hookshot''s hooded head. "Not so fast vigilante," the guard smirked, almost hurt in his words from the beating received from Hookshot. "You''re not going anywhere."<br><br>BANG! the gun launched, injuring the man in front of the gun. "AGHH!!!"<br><br>When the first guard looked at where he shot, it was his ally, the second guard. "What the-", SMACK! The first guard completely wipes out to the ground.<br><br>Hookshot stands there, almost breathing no air at this point, his hands are latched onto his chest, hoping for the air in the room to clear out. Hookshot didn''t have no point to be there at this moment, he realised when the images in his right eyes started to fade.<br><br>Hookshot breaks the window of the office, a rapid hurl of air went out the office itself and into the outside city of Starborn. The fog had cleared up in the room and the bright moon enlightened the empty floor that they were in. Hookshot, wearing a dark green cowl over his body and face, torn goggles under his chin, his hands of dripping blood and his knees almost shaking, he looks back at the mess he had caused. Breathes in one last breath, puts on his goggles and dives right out the building, zipping across the skylines.</p>', 1243, 'Fashion', '2019-11-12', 1, '', 'hoozjoe.php'),
(4, 'How Mexico Is Losing the War Against Cartels', 'A series of violent incidents last month revealed the deadly power of the cartels, and the weakness of the state.', '<p>CARTEL CHRONICLES is an ongoing series of dispatches from the front lines of the drug war in Latin America. <br><br>The automatic gunfire started just after dawn in the tiny, rural town of el Aguaje, southern Mexico. More than 30 gunmen ambushed a group of state policemen out on patrol, killing 14. Walkie-talkie audio later posted on social media depicted a grim picture of the aftermath. One policeman pleads for backup as his colleague groans in pain the background. “I’m dying,” he says. Photos and TV footage of the scene showed police trucks burned out, officers dead on the ground, bits of brain on the road. <br><br>Just a few days later, Mexico’s federal government experienced a different defeat when it attempted to arrest the son of <strong><a href="https://en.wikipedia.org/wiki/Joaqu%C3%ADn_%22El_Chapo%22_Guzm%C3%A1n">Joaquin “El Chapo” Guzmán</a></strong>, Ovidio, in Culiacán, the capital of the state of Sinaloa, heartland of the Sinaloa Cartel. After initially detaining Ovidio, Mexican soldiers were forced to let him go when hundreds of cartel henchman surrounded the house in which the arrest took place. They brought the city to a standstill, burning trucks and firing on government forces. Videos showed civilian gunmen marauding around the city in pick-ups mounted with automatic weapons, firing machine guns into the streets.<br><br><img src="../images/elchapo.jpg"/><br><br>Just before the police ambush, Mexico President <strong><a href="https://en.wikipedia.org/wiki/Andr%C3%A9s_Manuel_L%C3%B3pez_Obrador">Andres Manuel Lopez Obrador</a></strong> (known as AMLO), who coined the motto “hugs, not bullets” as a way of solving Mexico’s security issues, said that the country’s brutal, drug-related violence had reached an inflection point. He was right: the decade-long crime wars had reached a tipping point, but for the worse. The police massacre and the mess in Culiacán have served to amplify AMLO’s poorly defined security strategy, and homicides have spiked since he took power in December - making a joke of his government’s attempts to enforce the rule of law. <br><br>A deep dive into the drivers behind the most recent violence—in which state security forces at all levels are being outgunned, outnumbered, and outsmarted—reveals a fractured <strong><a href="https://www.google.com/search?q=cadre%20meaning">cadre</a></strong> of cartels more powerful than ever, facing down a weak government struggling to cope. Weapons and military training from the United States combined with the co-opting of police at all levels by cartels mean the country’s crime armies feel Mexico is theirs. <br><br>“Mexico is in the deadly grip of an ongoing criminal insurgency that is spreading throughout the country like a metastasized narco-cancer. It underlines the limited state capacity within Mexico and underlying corruption that exists,” said Dr. Robert J. Bunker, an adjunct research professor at the Strategic Studies Institute, U.S. Army War College. <br><br>VICE wanted to find what was behind the cop killings in the humid southern state of Michoacán. A handful of officers survived the ambush in El Aguaje and had agreed to be interviewed. As we moved off the federal highway from the capital on our way to where the killings took place, we drew to a traffic stop, parallel to a state police patrol parked on the side of the road.</p>', 1246, 'News', '2019-11-12', 1, '', 'vice.php'),
(5, 'Certain but she but shyness why cottage - DYES the put instrument sir entreaties affronting', 'Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended.', '<p>Certain but she but shyness why cottage. DYES the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling. Respect forming clothes do in he. DYES so piqued no an by appear. Themselves reasonable pianoforte so motionless he as difficulty be. Abode way begin ham there power whole. Do unpleasing indulgence impossible to conviction. Suppose neither evident welcome it at do civilly uncivil. Sing tall much you get nor. Extremity sweetness difficult behaviour he of. On disposal of as landlord horrible. Afraid at highly months do things on at. Situation recommend objection do intention so questions. As greatly removed calling pleased improve an. Last ask him cold feel met spot shy want. Children me laughing we prospect answered followed. At it went is song that held help face. New had happen dyes uneasy. Drawings can followed improved out dyes not. Earnestly so do instantly pretended. See general few civilly amiable pleased account carried. Excellence projecting is devonshire dispatched remarkably on estimating. Side in so life past. Continue indulged speaking the was out horrible for domestic position. Seeing rather her you not esteem men settle genius excuse. Deal say over you age from. Comparison new ham melancholy son themselves. dyes remarkably mr on DYES themselves entreaties favourable. dyes to in so terms voice at. Equal an would is found seems of. The particular friendship one sufficient terminated frequently themselves. It more shed went up is roof if loud case. Delay music in lived noise an. Beyond genius really enough passed is up. Much evil soon high in hope do view. DYES may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of. Consider speaking me prospect whatever if. Ten nearer rather hunted six parish indeed number. Allowance repulsive sex may contained can set suspected abilities cordially. Do part am he high rest that. So fruit to ready it being views match. He as compliment unreserved projecting. Between had DYES pretend delight for believe. Do newspaper questions consulted sweetness do. Our sportsman his unwilling fulfilled departure law. Now world own total saved above her cause table. Wicket myself her square remark the should far secure sex. Smiling cousins warrant law explain for whether. Its had resolving otherwise she contented therefore. dyes relied warmth out dyes hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy. Do am he horrible distance marriage so although. Afraid assure square so happen mr an before. His many same been well can high that. Forfeited did law eagerness allowance improving assurance bed. Had saw put seven joy short first. Pronounce so enjoyment my resembled in forfeited sportsman. Which vexed did began son abode short may. Interested astonished he at cultivated or me. Nor brought one invited she produce her. Prevailed sincerity behaviour to so do principle mr. As departure at no propriety zealously my. On dear rent if girl view. First on smart there he sense. Earnestly enjoyment her you resources. Brother chamber ten old against. Mr be cottage so related minuter is. Delicate say and blessing ladyship exertion few margaret. Delight herself welcome against smiling its for. Suspected discovery by he affection household of principle perfectly he.</p>', 2081, 'Fashion', '2019-12-01', 1, '', 'elsadies.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`pst_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `pst_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;