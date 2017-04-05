<?php

	include("../../webservices/database_header.php");

	if(!isset($_REQUEST['username']) || !isset($_REQUEST['password']) || !isset($_REQUEST['email'])){
		echo "wrong";
		return;
	}

	$query="INSERT INTO `website` (`websiteno`, `username`, `default_header_address`, `homepage_header_address`) VALUES (NULL, '".$_REQUEST['username']."', '', '');";
	if(!$conn->query($query)){
		echo "wrong";
		return;
	}
	$websiteno=$conn->insert_id;


	$query=array(
		"INSERT INTO `user` (`username`, `password`, `email`, `pic_address`, `websiteno`, `profilepic_caption`, `ldap`) VALUES ('".$_REQUEST['username']."', '".$_REQUEST['password']."', '".$_REQUEST['email']."', '', '".$websiteno."', 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19',1);",

		"INSERT INTO `page` (`page_id`, `websiteno`, `title`, `file_name`, `activity_status`) VALUES 
		('websitereview', '".$websiteno."', 'Website Review', 'websitereview', '1'),
		('homepage', '".$websiteno."', 'Home Page', 'index', '1'),
		('people', '".$websiteno."', 'People', 'people', '1'),
		('research', '".$websiteno."', 'Research', 'research', '1'),
		('teachings', '".$websiteno."', 'Teachings', 'teachings', '1'),
		('contactme', '".$websiteno."', 'Contact Me', 'contactme', '1'),
		('download', '".$websiteno."', 'Download', 'download', '1'),
		('publications', '".$websiteno."', 'Publications', 'publications', '1'),
		('participatedactivities', '".$websiteno."', 'Participated Activities', 'participatedactivities', '1'),
		('groupmeetings', '".$websiteno."', 'Group Meetings', 'groupmeetings', '1'),
		('beyondscience', '".$websiteno."', 'Beyond Science', 'beyondscience', '1');",
		

		
		"INSERT INTO `color` (`colorno`, `websiteno`, `role`, `hex`) VALUES 
		(NULL, '".$websiteno."', '0', '000000'), 
		( NULL, '".$websiteno."', '1', '23cf1d');",
		
		"INSERT INTO `footer_link` (`footer_linkno`, `websiteno`, `role`, `font_icon`, `title`, `description`, `activity_status`, `link_label`, `link_address`) VALUES 
		(NULL, '".$websiteno."', '0', 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', '1', 'IASBS Website', 'http://iasbs.ac.ir/'),
		(NULL, '".$websiteno."', '1', 'graduation-cap', 'Physics Department', '', '1', 'Physics Department Website', 'http://iasbs.ac.ir/');",

		"INSERT INTO `social_link` (`social_linkno`, `websiteno`, `type`, `activity_status`, `link_address`) VALUES 
		(NULL, '".$websiteno."', 'facebook', '1', 'https://www.facebook.com/YourFacebookID'),
		(NULL, '".$websiteno."', 'twitter', '1', 'https://twitter.com/YourTwitterID'),
		(NULL, '".$websiteno."', 'instagram', '1', 'https://www.instagram.com/YourInstagramID/'),
		(NULL, '".$websiteno."', 'researchgate', '1', 'researchgate.net/yourResearchGateID'),
		(NULL, '".$websiteno."', 'googleplus', '1', 'https://plus.google.com/+YourGooglePlusID/'),
		(NULL, '".$websiteno."', 'linkedin', '1', 'https://www.linkedin.com/in/YourLinkedInID');",

		"INSERT INTO `text` (`websiteno`, `text_id`, `page_id`, `content`) VALUES 
		('".$websiteno."', 'fullname', 'homepage', 'FirstName LastName'),
		('".$websiteno."', 'department', 'homepage', 'Physics'),
		('".$websiteno."', 'academic_specs', 'homepage', 'Assistant Prof.'),
		('".$websiteno."', 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
		('".$websiteno."', 'heading', 'publications', ''),
		('".$websiteno."', 'subheading', 'publications', ''),
		('".$websiteno."', 'email', 'contactme', ''),
		('".$websiteno."', 'cell', 'contactme', ''),
		('".$websiteno."', 'tel', 'contactme', ''),
		('".$websiteno."', 'page_content', 'contactme', '');",

		"INSERT INTO `season` (`seasonno`, `websiteno`, `title`) VALUES 
		(NULL, '".$websiteno."', 'Spring 2016'),
		(NULL, '".$websiteno."', 'Winter 2016'),
		(NULL, '".$websiteno."', 'Fall 2016');",

		"INSERT INTO `person_category` (`person_category_no`, `websiteno`, `title`) VALUES
		(NULL, '".$websiteno."', 'Post-Docs'),
		(NULL, '".$websiteno."', 'PhD Students'),
		(NULL, '".$websiteno."', 'MSc Students');",

		"INSERT INTO `pa_category` (`pa_category_no`, `websiteno`, `title`) VALUES
		(NULL, '".$websiteno."', '2016'),
		(NULL, '".$websiteno."', '2015'),
		(NULL, '".$websiteno."', '2014');",

		"INSERT INTO `research_topic` (`topicno`, `websiteno`, `title`, `link`, `description`) VALUES
		(NULL, '".$websiteno."', 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energy) the law was said to refer to the conservation of mass-energy. The total of both mass and energy is retained, although some may change forms. The ultimate example of this is a nuclear explosion, where mass transforms into energy'),
		(NULL, '".$websiteno."', 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum'),
		(NULL, '".$websiteno."', '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has provided a more comprehensive explanation for the phenomenon of gravity'),
		(NULL, '".$websiteno."', 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon it');",

		"INSERT INTO `groupmeeting` (`groupmeeting_no`, `websiteno`, `title`, `day`, `time`, `venue`) VALUES
		(NULL, '".$websiteno."', 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
		(NULL, '".$websiteno."', 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
		(NULL, '".$websiteno."', 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102');",

		"INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES
		(NULL, '".$websiteno."', 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e ÄvÄzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÄh DavÄmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÄmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÄmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÄh-e HomÄyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÄmad: Is a common name of the first gusheh in all dastgÄhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÄvak: Built on the Forth interval of the mode of DarÄmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
		(NULL, '".$websiteno."', 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÄh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called ÄvÄz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÄ«shdarÄmad (a rhythmic prelude which sets the mood), darÄmad (rhythmic free motif), ÄvÄz (improvised rhythmic-free singing), taá¹£nÄ«f (rhythmic accompanied by singing, an ode), ChahÄrmeÅ¼rÄb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uá¹£Å«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÄm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÄmÄt of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taá¹£nÄ«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>');"
	);

	$DeleteQuery=array(
		"DELETE FROM `user` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `text` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `social_link` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `person_category` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `page` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `footer_link` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `color` WHERE websiteno = ".$websiteno." ;",
		"DELETE FROM `website` WHERE websiteno = ".$websiteno." ;"
	);

	foreach ($query as $q ) {
		if(!$conn->query($q)){

			foreach( $DeleteQuery as $q){
				$conn->query($q);
			}

			echo "wrong";
			return;
		}
	}

	echo 'right';

?>
