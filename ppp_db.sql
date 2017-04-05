-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 31, 2017 at 01:46 PM
-- Server version: 5.5.52-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ppp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `issuper` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `issuper`) VALUES
('frank', 'sinatra', 0),
('michael', 'jackson', 1);

-- --------------------------------------------------------

--
-- Table structure for table `beyondtopic`
--

CREATE TABLE IF NOT EXISTS `beyondtopic` (
  `beyondtopic_no` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(10000) NOT NULL,
  PRIMARY KEY (`beyondtopic_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `beyondtopic`
--

INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES
(4, 19, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(5, 19, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(6, 20, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(7, 20, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(8, 21, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(9, 21, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(10, 22, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(11, 22, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(12, 23, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(13, 23, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(14, 24, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(15, 24, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(16, 25, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(17, 25, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(18, 26, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(19, 26, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(20, 27, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>');
INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES
(21, 27, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(22, 28, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(23, 28, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(24, 29, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(25, 29, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(26, 30, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(27, 30, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(28, 31, 'Literature', ''),
(29, 31, 'Music', '<p>In my free time I play Santour.</p>'),
(30, 32, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(31, 32, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(32, 33, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(33, 33, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(34, 34, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(35, 34, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(36, 35, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(37, 35, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(38, 36, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(39, 36, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>');
INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES
(40, 37, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(41, 37, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(42, 38, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(43, 38, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(44, 39, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(45, 39, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(46, 40, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(47, 40, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(48, 41, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(49, 41, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(50, 42, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(51, 42, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(52, 43, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(53, 43, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(54, 44, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(55, 44, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(56, 45, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>');
INSERT INTO `beyondtopic` (`beyondtopic_no`, `websiteno`, `title`, `description`) VALUES
(57, 45, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>'),
(58, 31, 'Cinema', ''),
(59, 31, 'Sport', '<p>Playing tennis and Rock Climbing</p>'),
(60, 46, 'The Radif', '<p>Radif (an arrangement) can be considered as the base structure of Persian traditional music which prepares a platform for a typical performance which is aimed to remain close to the traditional structure. Actually even though many efforts has been done to give modern styles of Persian music, yet above structure is mostly appreciated both by the musicians and the audience. Radif can be interpreted both by the instruments and vocals. The latter known as the &ldquo;radif-e Ã„ÂvÃ„Âzi&rdquo;, has been mainly narrated by two masters &ldquo;AbdollÃ„Âh DavÃ„Âmi&rdquo; and &ldquo;Mahmoud Karimi&rdquo;. The version recorded by DavÃ„Âmi is what I am going to record and put here (or another link I don&rsquo;t know yet). DavÃ„Âmi when recording radif was about 80 and maybe listening to his voice - even though it is a brilliant elaborated voice - is not pleasant for amateurs. So I believe re-singing his repertoire, can be beneficial for beginners.</p>&NEWLINE<p>DastgÃ„Âh-e HomÃ„Âyoon: Download commentary (in Persian)</p>&NEWLINE<p>DarÃ„Âmad: Is a common name of the first gusheh in all dastgÃ„Âhs. Poem is a sonnet from celebrated Iranian poet Saadi with a crude translation just to give a sensation: &DOUBLEQUOTEBewildered by thy hairs, intoxicated by thy smell, I&SINGLEQUOTEm not conscious of what goes on in the worlds! Looks for a loophole one captured in a cage, Never flight from your lasso till I&SINGLEQUOTEm alive&DOUBLEQUOTE. Download commentary (in Persian) .</p>&NEWLINE<p>ChakÃ„Âvak: Built on the Forth interval of the mode of DarÃ„Âmad. Poem is a couple more hemistiches from the same sonnet above. Download commentary (in Persian) .</p>&NEWLINE<p>Shushtari: Attributed to Shushtar, a historical city in south-west of Iran. Download commentary (in Persian)</p>'),
(61, 46, 'Persian Traditional Music', '<p>Persian traditional music relies on both improvisation and composition, and is based on a series of modal scales and tunes which must be memorized. Apprentices and masters, ostad, have a traditional relationship which has declined during the 20th century as music education moved to universities and conservatories. The common repertoire consists of more than two hundred short melodic movements called gusheh, which are classified into seven dastgÃ„Âh or &DOUBLEQUOTEmodes.&DOUBLEQUOTE Two of these modes have secondary modes branching from them called Ã„ÂvÃ„Âz. Each gusheh and dastgah has an individual name. This whole body is called the Radif of which there are several versions, each in accordance to the teachings of a particular master or ostad. A typical performance consists of the following elements pÃ„Â«shdarÃ„Âmad (a rhythmic prelude which sets the mood), darÃ„Âmad (rhythmic free motif), Ã„ÂvÃ„Âz (improvised rhythmic-free singing), taÃ¡Â¹Â£nÃ„Â«f (rhythmic accompanied by singing, an ode), ChahÃ„ÂrmeÃ…Â¼rÃ„Âb (rhythmic music but rhythmic-free or no singing), reng (closing rhythmic composition, a dance tune). A performance forms a sort of suite. Unconventionally, these parts may be varied or omitted. Towards the end of the Safavid Empire (1502-1736), more complex movements in 10, 14, and 16 beats stopped being performed. In fact, in the early stages of the Qajar Dynasty, the uÃ¡Â¹Â£Ã…Â«l this daythis day(rhythmic cycles) were replaced by a meter based on the ghazal and the maqÃ„Âm system of classification was reconstructed into the Radif system which is used to this day. Today, rhythmic pieces are performed in beats of 2 to 7 with some exceptions. Rengs are always in a 6/8 time frame. Many melodies and modes are related to the maqÃ„ÂmÃ„Ât of the Turkish classical repertoire and Arabic music belonging to various Arab countries, for example Iraq. This similarity is because of the exchange of musical science that took place in the early Islamic world between Persia and her neighboring countries. During the meeting of The Inter-governmental Committee for the Safeguarding of the Intangible Heritage of the United Nations, held between 28 September - 2 October 2009 in Abu Dhabi, radifs were officially registered on the UNESCO List of the Intangible Cultural Heritage of Humanity.</p>&NEWLINE<p>The music is vocal based. The vocalist plays a crucial role: she or he decides what mood to express and which dastgah relates to that mood. In many cases, the vocalist is also responsible for choosing the poems to be sung. If the performance requires a singer, the singer is accompanied by at least one wind or string instrument, and at least one type of percussion. There could be an ensemble of instruments, though the primary vocalist must maintain hers or his role. In some taÃ¡Â¹Â£nÃ„Â«f songs, the musicians may accompany the singer by singing along several verses. Traditionally, music is performed while seated on finely decorated cushions and rugs. Candles are sometimes lit. The group of musicians and the vocalist decide on which dastgahs and which of their gushehs to perform, depending on the mood of a certain time or situation.</p>&NEWLINE<p>Persian (Iranian) traditional music continues to function as a spiritual tool as it has throughout its history, and much less of a recreational activity. Compositions can vary immensely from start to finish, usually alternating between low, contemplative pieces and athletic displays of musicianship called tahrir. The incorporation of religious texts as lyrics were replaced by lyrics largely written by medieval Sufi poets, especially Hafez and Jalal-e Din Rumi.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `classno` int(11) NOT NULL AUTO_INCREMENT,
  `seasonno` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `schedule` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `venue` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`classno`),
  KEY `website#` (`seasonno`),
  KEY `seasonno` (`seasonno`),
  KEY `seasonno_2` (`seasonno`),
  KEY `seasonno_3` (`seasonno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classno`, `seasonno`, `title`, `link`, `description`, `schedule`, `venue`) VALUES
(6, 0, 'test class', '', '<p>ni<strong>gg</strong>a</p>', '', ''),
(9, 44, 'Fundamental of Photonics 1', '', '', 'Saturday, Monday 9:30-11 a.m', 'P-103'),
(10, 65, 'Cosmology', '', '', 'Saturdays & Mondays 11-12:30 ', 'P104 (Saturday) - P002 (Monday)'),
(11, 64, 'Group Theory', '', '', 'Sundays & Thursdays', '9:30 - 11'),
(12, 63, 'Particle Physics', '', '', 'Sundays & Thursdays ', '11 - 12:30'),
(13, 108, 'Special Relativity', '', '', 'Mondays 11-12:30, Tuesday 8-9:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE IF NOT EXISTS `color` (
  `colorno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT 'whether it''s the main theme color or the second one',
  `hex` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`colorno`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=87 ;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`colorno`, `websiteno`, `role`, `hex`) VALUES
(37, 22, 0, '000000'),
(38, 22, 1, '5eb5b8'),
(39, 23, 0, '000000'),
(40, 23, 1, '23cf1d'),
(41, 24, 0, '3d3034'),
(42, 24, 1, '2b6b29'),
(43, 25, 0, '000000'),
(44, 25, 1, '23cf1d'),
(53, 30, 0, '000000'),
(54, 30, 1, '23cf1d'),
(55, 31, 0, '1451e0'),
(56, 31, 1, '6db1d6'),
(57, 32, 0, '000000'),
(58, 32, 1, '23cf1d'),
(59, 33, 0, '000000'),
(60, 33, 1, '23cf1d'),
(61, 34, 0, '000000'),
(62, 34, 1, '23cf1d'),
(67, 37, 0, '000000'),
(68, 37, 1, '2e0000'),
(69, 38, 0, '000000'),
(70, 38, 1, '23cf1d'),
(73, 40, 0, 'ce17e6'),
(74, 40, 1, '88f000'),
(75, 41, 0, '000000'),
(76, 41, 1, '23cf1d'),
(77, 42, 0, '000000'),
(78, 42, 1, 'cf1f1f'),
(79, 43, 0, '000000'),
(80, 43, 1, '23cf1d'),
(81, 44, 0, '000000'),
(82, 44, 1, '23cf1d'),
(83, 45, 0, '000000'),
(84, 45, 1, '23cf1d'),
(85, 46, 0, '000000'),
(86, 46, 1, '23cf1d');

-- --------------------------------------------------------

--
-- Table structure for table `footer_link`
--

CREATE TABLE IF NOT EXISTS `footer_link` (
  `footer_linkno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `font_icon` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(1024) COLLATE utf8_bin NOT NULL,
  `description` varchar(1024) COLLATE utf8_bin NOT NULL,
  `activity_status` tinyint(1) NOT NULL,
  `link_label` varchar(1024) COLLATE utf8_bin NOT NULL,
  `link_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`footer_linkno`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=84 ;

--
-- Dumping data for table `footer_link`
--

INSERT INTO `footer_link` (`footer_linkno`, `websiteno`, `role`, `font_icon`, `title`, `description`, `activity_status`, `link_label`, `link_address`) VALUES
(34, 22, 0, 'bookmark', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(35, 22, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(36, 23, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(37, 23, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(38, 24, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(39, 24, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(40, 25, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(41, 25, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(50, 30, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(51, 30, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(52, 31, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS', 'http://iasbs.ac.ir/'),
(53, 31, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department', 'http://www.iasbs.ac.ir/dep/index.php?dep=5&ef=fa'),
(54, 32, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(55, 32, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(56, 33, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(57, 33, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(58, 34, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(59, 34, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(64, 37, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(65, 37, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(66, 38, 0, 'building', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(67, 38, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(70, 40, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(71, 40, 1, 'bullhorn', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(72, 41, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(73, 41, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(74, 42, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(75, 42, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(76, 43, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(77, 43, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(78, 44, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(79, 44, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(80, 45, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(81, 45, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/'),
(82, 46, 0, 'iasbs', 'IASBS', 'Institute for Advanced Studies in Basic Sciences', 1, 'IASBS Website', 'http://iasbs.ac.ir/'),
(83, 46, 1, 'graduation-cap', 'Physics Department', '', 1, 'Physics Department Website', 'http://iasbs.ac.ir/');

-- --------------------------------------------------------

--
-- Table structure for table `groupmeeting`
--

CREATE TABLE IF NOT EXISTS `groupmeeting` (
  `groupmeeting_no` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `venue` varchar(255) NOT NULL,
  PRIMARY KEY (`groupmeeting_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=89 ;

--
-- Dumping data for table `groupmeeting`
--

INSERT INTO `groupmeeting` (`groupmeeting_no`, `websiteno`, `title`, `day`, `time`, `venue`) VALUES
(1, 0, 'spring 2017', 'Wed.', '12:00 a.m.', 'campus'),
(3, 0, 'wrong side of heaven', 'and the rightious side of hell', 'arms wide open', 'i cannot fear you'),
(4, 19, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(5, 19, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(6, 19, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(7, 20, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(8, 20, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(9, 20, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(10, 21, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(11, 21, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(12, 21, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(13, 22, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(14, 22, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(15, 22, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(16, 23, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(17, 23, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(18, 23, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(19, 24, 'Fall 2016', 'Saturday', '15:30-17:30', 'Physics meeting hall'),
(23, 25, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(24, 25, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(25, 25, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(26, 26, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(27, 26, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(28, 26, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(29, 27, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(30, 27, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(31, 27, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(32, 28, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(33, 28, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(34, 28, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(35, 29, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(36, 29, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(37, 29, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(38, 30, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(39, 30, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(40, 30, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(41, 31, 'Star Clusters, Pouria Khalaj', 'Monday, 13 Dey, 2 January', '14:00', 'IASBS Lecture Hall'),
(42, 31, 'Abdollah Langari', 'Monday, 20 Dey', '14:00', 'IASBS Lecture Hall'),
(43, 31, 'Vahid Karimipour', 'Monday, 27 Dey', '14:00', 'IASBS Lecture Hall'),
(44, 32, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(45, 32, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(46, 32, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(47, 33, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(48, 33, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(49, 33, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(50, 34, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(51, 34, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(52, 34, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(53, 35, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(54, 35, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(55, 35, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(56, 36, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(57, 36, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(58, 36, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(59, 37, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(60, 37, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(61, 37, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(62, 38, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(63, 38, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(64, 38, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(65, 39, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(66, 39, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(67, 39, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(68, 40, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(69, 40, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(70, 40, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(71, 41, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(72, 41, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(73, 41, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(74, 42, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(75, 42, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(76, 42, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(77, 43, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(78, 43, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(79, 43, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(80, 44, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(81, 44, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(82, 44, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(83, 45, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(84, 45, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(85, 45, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102'),
(86, 46, 'Spring 2016', 'Monday', '17:00-18:30', 'Class P103'),
(87, 46, 'Winter 2016', 'Monday and Wednesday', '15:30-17:00', 'Class P104'),
(88, 46, 'Fall 2015', 'Monday and Wednesday', '15:30-17:00', 'Class P102');

-- --------------------------------------------------------

--
-- Table structure for table `pa`
--

CREATE TABLE IF NOT EXISTS `pa` (
  `pano` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `pa_category_no` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`pano`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pa`
--

INSERT INTO `pa` (`pano`, `websiteno`, `pa_category_no`, `title`, `description`) VALUES
(1, 18, 3, 'yo yo yo', '<p>yo yo yo B</p>'),
(2, 0, 5, 'nigga', '<p>thug life</p>'),
(4, 24, 21, 'ICTP', '<p>Workshop on structured light</p>');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `file_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `activity_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`page_id`,`websiteno`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `websiteno`, `title`, `file_name`, `activity_status`) VALUES
('beyondscience', 22, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 23, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 24, 'Beyond Science', 'beyondscience', 0),
('beyondscience', 25, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 30, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 31, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 32, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 33, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 34, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 37, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 38, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 40, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 41, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 42, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 43, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 44, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 45, 'Beyond Science', 'beyondscience', 1),
('beyondscience', 46, 'Beyond Science', 'beyondscience', 1),
('contactme', 22, 'Contact Me', 'contactme', 1),
('contactme', 23, 'Contact Me', 'contactme', 1),
('contactme', 24, 'Contact Me', 'contactme', 1),
('contactme', 25, 'Contact Me', 'contactme', 1),
('contactme', 30, 'Contact Me', 'contactme', 1),
('contactme', 31, 'Contact Me', 'contactme', 1),
('contactme', 32, 'Contact Me', 'contactme', 1),
('contactme', 33, 'Contact Me', 'contactme', 1),
('contactme', 34, 'Contact Me', 'contactme', 1),
('contactme', 37, 'Contact Me', 'contactme', 1),
('contactme', 38, 'Contact Me', 'contactme', 1),
('contactme', 40, 'Contact Me', 'contactme', 1),
('contactme', 41, 'Contact Me', 'contactme', 1),
('contactme', 42, 'Contact Me', 'contactme', 1),
('contactme', 43, 'Contact Me', 'contactme', 1),
('contactme', 44, 'Contact Me', 'contactme', 1),
('contactme', 45, 'Contact Me', 'contactme', 1),
('contactme', 46, 'Contact Me', 'contactme', 1),
('download', 22, 'Download', 'download', 1),
('download', 23, 'Download', 'download', 1),
('download', 24, 'Download', 'download', 1),
('download', 25, 'Download', 'download', 1),
('download', 30, 'Download', 'download', 1),
('download', 31, 'Download', 'download', 1),
('download', 32, 'Download', 'download', 1),
('download', 33, 'Download', 'download', 1),
('download', 34, 'Download', 'download', 1),
('download', 37, 'Download', 'download', 1),
('download', 38, 'Download', 'download', 1),
('download', 40, 'Download', 'download', 1),
('download', 41, 'Download', 'download', 1),
('download', 42, 'Download', 'download', 1),
('download', 43, 'Download', 'download', 1),
('download', 44, 'Download', 'download', 1),
('download', 45, 'Download', 'download', 1),
('download', 46, 'Download', 'download', 1),
('groupmeetings', 22, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 23, 'Group Meetings', 'groupmeetings', 0),
('groupmeetings', 24, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 25, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 30, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 31, 'Physics Colloquiums', 'groupmeetings', 1),
('groupmeetings', 32, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 33, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 34, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 37, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 38, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 40, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 41, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 42, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 43, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 44, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 45, 'Group Meetings', 'groupmeetings', 1),
('groupmeetings', 46, 'Group Meetings', 'groupmeetings', 1),
('homepage', 22, 'Home Page', 'index', 1),
('homepage', 23, 'Home Page', 'index', 1),
('homepage', 24, 'Home', 'index', 1),
('homepage', 25, 'Home Page', 'index', 1),
('homepage', 30, 'Home Page', 'index', 1),
('homepage', 31, 'Home Page', 'index', 1),
('homepage', 32, 'Home Page', 'index', 1),
('homepage', 33, 'Home Page', 'index', 1),
('homepage', 34, 'Home Page', 'index', 1),
('homepage', 37, 'Home Page', 'index', 1),
('homepage', 38, 'Home Page', 'index', 1),
('homepage', 40, 'Home Page', 'index', 1),
('homepage', 41, 'Home Page', 'index', 1),
('homepage', 42, 'Home Page', 'index', 1),
('homepage', 43, 'Home Page', 'index', 1),
('homepage', 44, 'Home Page', 'index', 1),
('homepage', 45, 'Home Page', 'index', 1),
('homepage', 46, 'Home Page', 'index', 1),
('participatedactivities', 22, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 23, 'Participated Activities', 'participatedactivities', 0),
('participatedactivities', 24, 'Participated Activities', 'participatedactivities', 0),
('participatedactivities', 25, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 30, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 31, 'Participated Activities', 'participatedactivities', 0),
('participatedactivities', 32, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 33, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 34, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 37, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 38, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 40, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 41, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 42, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 43, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 44, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 45, 'Participated Activities', 'participatedactivities', 1),
('participatedactivities', 46, 'Participated Activities', 'participatedactivities', 1),
('people', 22, 'People', 'people', 1),
('people', 23, 'People', 'people', 0),
('people', 24, 'People', 'people', 1),
('people', 25, 'People', 'people', 1),
('people', 30, 'People', 'people', 1),
('people', 31, 'People', 'people', 1),
('people', 32, 'People', 'people', 1),
('people', 33, 'People', 'people', 1),
('people', 34, 'People', 'people', 1),
('people', 37, 'People', 'people', 1),
('people', 38, 'People', 'people', 1),
('people', 40, 'People', 'people', 1),
('people', 41, 'People', 'people', 1),
('people', 42, 'People', 'people', 1),
('people', 43, 'People', 'people', 1),
('people', 44, 'People', 'people', 1),
('people', 45, 'People', 'people', 1),
('people', 46, 'People', 'people', 1),
('publications', 22, 'Publications', 'publications', 1),
('publications', 23, 'Publications', 'publications', 1),
('publications', 24, 'Publications', 'publications', 1),
('publications', 25, 'Publications', 'publications', 1),
('publications', 30, 'Publications', 'publications', 1),
('publications', 31, 'Publications', 'publications', 1),
('publications', 32, 'Publications', 'publications', 1),
('publications', 33, 'Publications', 'publications', 1),
('publications', 34, 'Publications', 'publications', 1),
('publications', 37, 'Publications', 'publications', 1),
('publications', 38, 'Publications', 'publications', 1),
('publications', 40, 'Publications', 'publications', 1),
('publications', 41, 'Publications', 'publications', 1),
('publications', 42, 'Publications', 'publications', 1),
('publications', 43, 'Publications', 'publications', 1),
('publications', 44, 'Publications', 'publications', 1),
('publications', 45, 'Publications', 'publications', 1),
('publications', 46, 'Publications', 'publications', 1),
('research', 22, 'Research', 'research', 1),
('research', 23, 'Research', 'research', 1),
('research', 24, 'Research', 'research', 1),
('research', 25, 'Research', 'research', 1),
('research', 30, 'Research', 'research', 1),
('research', 31, 'Research', 'research', 1),
('research', 32, 'Research', 'research', 1),
('research', 33, 'Research', 'research', 1),
('research', 34, 'Research', 'research', 1),
('research', 37, 'Research', 'research', 0),
('research', 38, 'Research', 'research', 1),
('research', 40, 'Research', 'research', 1),
('research', 41, 'Research', 'research', 1),
('research', 42, 'Research', 'research', 1),
('research', 43, 'Research', 'research', 1),
('research', 44, 'Research', 'research', 1),
('research', 45, 'Research', 'research', 1),
('research', 46, 'Research', 'research', 1),
('teachings', 22, 'Teachings', 'teachings', 1),
('teachings', 23, 'Teachings', 'teachings', 1),
('teachings', 24, 'Teachings', 'teachings', 1),
('teachings', 25, 'Teachings', 'teachings', 1),
('teachings', 30, 'Teachings', 'teachings', 1),
('teachings', 31, 'Teachings', 'teachings', 1),
('teachings', 32, 'Teachings', 'teachings', 1),
('teachings', 33, 'Teachings', 'teachings', 1),
('teachings', 34, 'Teachings', 'teachings', 1),
('teachings', 37, 'Teachings', 'teachings', 1),
('teachings', 38, 'Teachings', 'teachings', 1),
('teachings', 40, 'Teachings', 'teachings', 1),
('teachings', 41, 'Teachings', 'teachings', 1),
('teachings', 42, 'Teachings', 'teachings', 1),
('teachings', 43, 'Teachings', 'teachings', 1),
('teachings', 44, 'Teachings', 'teachings', 1),
('teachings', 45, 'Teachings', 'teachings', 1),
('teachings', 46, 'Teachings', 'teachings', 1),
('websitereview', 22, 'Website Review', 'websitereview', 1),
('websitereview', 23, 'Website Review', 'websitereview', 1),
('websitereview', 24, 'Website Review', 'websitereview', 1),
('websitereview', 25, 'Website Review', 'websitereview', 1),
('websitereview', 30, 'Website Review', 'websitereview', 1),
('websitereview', 31, 'Website Review', 'websitereview', 1),
('websitereview', 32, 'Website Review', 'websitereview', 1),
('websitereview', 33, 'Website Review', 'websitereview', 1),
('websitereview', 34, 'Website Review', 'websitereview', 1),
('websitereview', 37, 'Website Review', 'websitereview', 1),
('websitereview', 38, 'Website Review', 'websitereview', 1),
('websitereview', 40, 'Website Review', 'websitereview', 1),
('websitereview', 41, 'Website Review', 'websitereview', 1),
('websitereview', 42, 'Website Review', 'websitereview', 1),
('websitereview', 43, 'Website Review', 'websitereview', 1),
('websitereview', 44, 'Website Review', 'websitereview', 1),
('websitereview', 45, 'Website Review', 'websitereview', 1),
('websitereview', 46, 'Website Review', 'websitereview', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pa_category`
--

CREATE TABLE IF NOT EXISTS `pa_category` (
  `pa_category_no` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`pa_category_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `pa_category`
--

INSERT INTO `pa_category` (`pa_category_no`, `websiteno`, `title`) VALUES
(1, 18, '2016'),
(2, 18, '2015'),
(3, 18, '2014'),
(4, 0, 'new'),
(5, 0, 'my past'),
(6, 19, '2016'),
(7, 19, '2015'),
(8, 19, '2014'),
(9, 20, '2016'),
(10, 20, '2015'),
(11, 20, '2014'),
(12, 21, '2016'),
(13, 21, '2015'),
(14, 21, '2014'),
(15, 22, '2016'),
(16, 22, '2015'),
(17, 22, '2014'),
(18, 23, '2016'),
(19, 23, '2015'),
(20, 23, '2014'),
(21, 24, '2016'),
(22, 24, '2015'),
(23, 24, '2014'),
(24, 25, '2016'),
(25, 25, '2015'),
(26, 25, '2014'),
(27, 26, '2016'),
(28, 26, '2015'),
(29, 26, '2014'),
(30, 27, '2016'),
(31, 27, '2015'),
(32, 27, '2014'),
(33, 28, '2016'),
(34, 28, '2015'),
(35, 28, '2014'),
(36, 29, '2016'),
(37, 29, '2015'),
(38, 29, '2014'),
(39, 30, '2016'),
(40, 30, '2015'),
(41, 30, '2014'),
(42, 31, '2016'),
(43, 31, '2015'),
(44, 31, '2014'),
(45, 32, '2016'),
(46, 32, '2015'),
(47, 32, '2014'),
(48, 33, '2016'),
(49, 33, '2015'),
(50, 33, '2014'),
(51, 34, '2016'),
(52, 34, '2015'),
(53, 34, '2014'),
(54, 35, '2016'),
(55, 35, '2015'),
(56, 35, '2014'),
(57, 36, '2016'),
(58, 36, '2015'),
(59, 36, '2014'),
(60, 37, '2016'),
(61, 37, '2015'),
(62, 37, '2014'),
(63, 38, '2016'),
(64, 38, '2015'),
(65, 38, '2014'),
(66, 39, '2016'),
(67, 39, '2015'),
(68, 39, '2014'),
(69, 40, '2016'),
(70, 40, '2015'),
(71, 40, '2014'),
(72, 41, '2016'),
(73, 41, '2015'),
(74, 41, '2014'),
(75, 42, '2016'),
(76, 42, '2015'),
(77, 42, '2014'),
(78, 43, '2016'),
(79, 43, '2015'),
(80, 43, '2014'),
(81, 44, '2016'),
(82, 44, '2015'),
(83, 44, '2014'),
(84, 45, '2016'),
(85, 45, '2015'),
(86, 45, '2014'),
(87, 46, '2016'),
(88, 46, '2015'),
(89, 46, '2014');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `personno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `person_category_no` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `link_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  `description` varchar(1024) COLLATE utf8_bin NOT NULL,
  `pic_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`personno`),
  KEY `person_category_no` (`person_category_no`),
  KEY `websiteno` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=40 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`personno`, `websiteno`, `person_category_no`, `name`, `link_address`, `description`, `pic_address`) VALUES
(24, 24, 72, 'Kebria Taheri', 'https://www.linkedin.com/in/kebria-taheri-5859bab8', '<p>I was a Master student in Photonics in Optical Tweezers group.</p>&NEWLINE<p>email:&nbsp;Kebria.taheri@gmail.com</p>', 'hajizade_24.png'),
(27, 24, 72, 'Mahsa Salami', '', '<p>I was a photinics student in optical tweezers group.</p>', 'hajizade_27.png'),
(28, 24, 53, 'Habib Moradi', '', '<p>email: habib.moradi@iasbs.ac.ir</p>', 'hajizade_28.png'),
(29, 24, 53, 'Rayehe Rezaei', '', '<p>email: rayehe.rezaei@iasbs.ac.ir</p>', 'hajizade_29.png'),
(30, 24, 53, 'Milad Malekmohammadi', '', '<p>email: m.malekmohammadi@iasbs.ac.ir</p>', 'hajizade_30.png'),
(31, 24, 53, 'Jamal Soltani', '', '<p>email: jamal.soltani@iasbs.ac.ir&nbsp;</p>', 'hajizade_31.png'),
(32, 24, 53, 'Vahid Shahabadi', '', '<p>email: v.shahabadi@iasbs.ac.ir&nbsp;</p>', 'hajizade_32.png'),
(33, 24, 53, 'Zekra Karimi', '', '<p>email: zekra.karimi@iasbs.ac.ir</p>', 'hajizade_33.png'),
(34, 24, 53, 'Farshad Soltani', '', '<p>email: f.soltani@iasbs.ac.ir</p>', 'hajizade_34.png'),
(35, 24, 53, 'Farnoosh Julaeian', '', '<p>email: farnooshjoulaeian@iasbs.ac.ir</p>', 'hajizade_35.png'),
(39, 40, 100, '', '', '', 'h.mirsadeghi_39.png');

-- --------------------------------------------------------

--
-- Table structure for table `person_category`
--

CREATE TABLE IF NOT EXISTS `person_category` (
  `person_category_no` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`person_category_no`),
  KEY `websiteno` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=121 ;

--
-- Dumping data for table `person_category`
--

INSERT INTO `person_category` (`person_category_no`, `websiteno`, `title`) VALUES
(45, 22, 'Post-Docs'),
(46, 22, 'PhD Students'),
(47, 22, 'MSc Students'),
(48, 23, 'Post-Docs'),
(49, 23, 'PhD Students'),
(50, 23, 'MSc Students'),
(53, 24, 'MSc Students'),
(54, 25, 'Post-Docs'),
(55, 25, 'PhD Students'),
(56, 25, 'MSc Students'),
(69, 30, 'Post-Docs'),
(70, 30, 'PhD Students'),
(71, 30, 'MSc Students'),
(72, 24, 'MSc Alumni'),
(76, 32, 'Post-Docs'),
(77, 32, 'PhD Students'),
(78, 32, 'MSc Students'),
(79, 33, 'Post-Docs'),
(80, 33, 'PhD Students'),
(81, 33, 'MSc Students'),
(82, 34, 'Post-Docs'),
(83, 34, 'PhD Students'),
(84, 34, 'MSc Students'),
(91, 37, 'Post-Docs'),
(92, 37, 'PhD Students'),
(93, 37, 'MSc Students'),
(94, 38, 'Post-Docs'),
(95, 38, 'PhD Students'),
(96, 38, 'MSc Students'),
(100, 40, 'Post-Docs'),
(101, 40, 'PhD Students'),
(102, 40, 'MSc Students'),
(103, 41, 'Post-Docs'),
(104, 41, 'PhD Students'),
(105, 41, 'MSc Students'),
(106, 42, 'Post-Docs'),
(107, 42, 'PhD Students'),
(108, 42, 'MSc Students'),
(109, 43, 'Post-Docs'),
(110, 43, 'PhD Students'),
(111, 43, 'MSc Students'),
(112, 44, 'Post-Docs'),
(113, 44, 'PhD Students'),
(114, 44, 'MSc Students'),
(115, 45, 'Post-Docs'),
(116, 45, 'PhD Students'),
(117, 45, 'MSc Students'),
(118, 46, 'Post-Docs'),
(119, 46, 'PhD Students'),
(120, 46, 'MSc Students');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `publicationno` int(11) NOT NULL AUTO_INCREMENT,
  `publication_subcategoryno` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `has_no_subcategory` int(11) NOT NULL,
  PRIMARY KEY (`publicationno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publicationno`, `publication_subcategoryno`, `title`, `download_link`, `has_no_subcategory`) VALUES
(3, 34, 'i do', 'happen', -1),
(4, 34, 'to be a ', 'turk', -1),
(6, 35, 'eeeeeeeeeeeeeeeeeeee', 'rrrrrrrrrrrrrrrrrrrrrrrr', -1),
(7, 35, 'qqqqqqqqqqqqqqqqq', 'hhhhhhhhhhhh', -1),
(8, 35, 'wwwwwwwwwwwww', 'eeeeeeeee', -1),
(9, 36, 'just ', 'trying something new', -1),
(14, 37, '', '', -1),
(15, 37, '', '', -1),
(16, 37, '', '', -1),
(17, 37, '', '', -1),
(18, 37, '', '', -1),
(24, -1, 'Hybridizing Artificial Bee Colony With Simulated Annealing', 'http://www.sersc.org/journals/IJHIT/vol5_no4_2012/2.pdf', 20),
(25, -1, 'S. M. Mousavi, A. Samadi, F. Hajizadeh, S. N. S. Reihani, &DOUBLEQUOTEExtended linear detection range for optical tweezers using a stop at the back focal plane of the condenser&DOUBLEQUOTE, J. Opt, 17: (6), 065606-1-065606-5, (2015)', 'http://iopscience.iop.org/article/10.1088/2040-8978/17/6/065606/pdf', 21),
(26, -1, 'F. Hajizadeh, S. M. Mousavi, Z. S. Khaksar, S. N. S. Reihani, &DOUBLEQUOTEExtended linear detection range for optical tweezers using image-plane detection scheme &DOUBLEQUOTE, J. Opt, 16: (10), 105706 -105710, (2014)', 'http://iopscience.iop.org/article/10.1088/2040-8978/16/10/105706', 21),
(27, -1, 'F. Hajizadeh, S. N. S. Reihani, &DOUBLEQUOTEOptimized Optical Trapping of Gold Nanoparticles&DOUBLEQUOTE, Opt. Express, 18: (2), 551-559, (2010)', 'https://www.osapublishing.org/oe/abstract.cfm?uri=oe-18-2-551', 21),
(28, 42, 'Mahsa Salami, Faegheh Hajizadeh, Younes Farhangi Barooji, S.Nader S.Reihani, Lateral diffusion measurement of membrane lipids using optical tweezers, The 12th International Conference on Membrane Science and Technology, Tehran, 2015', '', -1),
(29, 42, 'Shao, L., Hajizadeh, F., Rubinsztein-Dunlop, H., Johnsson, P., Kall, Mikael., &DOUBLEQUOTEUltrafast Spin and Orbital Motion of Colloidal Gold Nanocrystals in an Optical Trap &DOUBLEQUOTE, ICMAT15-A-0346, Singapore, 2015', '', -1),
(30, 43, 'Û±- Ù…Ù‡Ø³Ø§ Ø³Ù„Ø§Ù…ÛŒØŒ ÙØ§Ø¦Ù‚Ù‡ Ø­Ø§Ø¬ÛŒ Ø²Ø§Ø¯Ù‡ØŒ ÛŒÙˆÙ†Ø³ ÙØ±Ù‡Ù†Ú¯ÛŒ Ø¨Ø§Ø±ÙˆØ¬ÛŒØŒ Ø³ÛŒØ¯ Ù†Ø§Ø¯Ø± Ø³ÛŒØ¯ Ø±ÛŒØ­Ø§Ù†ÛŒØŒ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ø§Ø² ØªÙ„Ù‡ Ø§Ù†Ø¯Ø§Ø²ÛŒ Ù†ÙˆØ±ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ø·Ø§Ù„Ø¹Ù‡ Ø¬Ø§Ø¨Ù‡Ø¬Ø§ÛŒÛŒ Ø¹Ø±Ø¶ÛŒ Ù…ÙˆÙ„Ú©ÙˆÙ„Ù‡Ø§ÛŒ Ù„ÛŒÙ¾Û', '', -1),
(32, 44, 'M. Salami, F. Hajizadeh, Y. F. Barooji, S.N. S.Reihani, â€œLateral diffusion measurement of membrane lipids using optical tweezersâ€, The 12th International Conference on Membrane Science and Technology, Tehran, 2015', '', -1),
(33, 44, 'L. Shao, F. Hajizadeh, H. Rubinsztein-Dunlop, P. Johnsson, M. Mikael KÃ¤ll, â€œUltrafast Spin and Orbital Motion of Colloidal Gold Nanocrystals in an Optical Trap â€, ICMAT15-A-0346, Singapore, 2015', '', -1),
(34, 45, 'Û±- Ù…Ù‡Ø³Ø§ Ø³Ù„Ø§Ù…ÛŒØŒ ÙØ§Ø¦Ù‚Ù‡ Ø­Ø§Ø¬ÛŒ Ø²Ø§Ø¯Ù‡ØŒ ÛŒÙˆÙ†Ø³ ÙØ±Ù‡Ù†Ú¯ÛŒ Ø¨Ø§Ø±ÙˆØ¬ÛŒØŒ Ø³ÛŒØ¯ Ù†Ø§Ø¯Ø± Ø³ÛŒØ¯ Ø±ÛŒØ­Ø§Ù†ÛŒØŒ Ø§Ø³ØªÙØ§Ø¯Ù‡ Ø§Ø² ØªÙ„Ù‡ Ø§Ù†Ø¯Ø§Ø²ÛŒ Ù†ÙˆØ±ÛŒ Ø¨Ø±Ø§ÛŒ Ù…Ø·Ø§Ù„Ø¹Ù‡ Ø¬Ø§Ø¨Ù‡Ø¬Ø§ÛŒÛŒ Ø¹Ø±Ø¶ÛŒ Ù…ÙˆÙ„Ú©ÙˆÙ„Ù‡Ø§ÛŒ Ù„ÛŒÙ¾Û', '', -1),
(38, 47, 'ØªØ³Øª Ù…ÛŒÚ©Ù†Ù… Ù†ÛŒÚ¯Ø§Ø§Ø§', '', -1),
(47, 50, 'M. Salami, F. Hajizadeh, Y. Farhangi, S. N. S.Reihani, â€œOptical trapping application for diffusion study of membrane lipids,â€ 22nd Iranian conference on Optics and Photonics, Yazd university, 2016', '', -1),
(48, 50, 'K. Taheri, G. Rafiee, F. Hajizadeh, â€œEffects Of Photoperiod On Microalgal Cells Growth And Studying Its Microscopic Behavior,â€ 22nd Iranian conference on Optics and Photonics, Yazd university, 2016', '', -1),
(49, 50, 'H. Moradi, F. hajizadeh â€œFast spinning measurement of optically trapped metallic nanoparticles by quadrant photodiode,â€ 22nd Iranian conference on Optics and Photonics, Yazd university, 2016', '', -1),
(50, 50, 'A. Moradi, E. A. Akhlaghi, F. Hajizadeh â€œMeasurement of Temperature Gradient of Micro Metal Beads under Laser Irradiation Using Interferometry Microscopeâ€ Twenty-first Conference of Optics and Photonics and Photonic Seventh Conference of Engineering a', '', -1),
(51, 50, 'F. Hajizadeh and S. N. S. Reihani, â€œBurning candle to estimate the laser induced heating of a nanoparticle,â€ Iran Physics Conference, Birjand University, Birjand, Iran, August 2013', '', -1),
(52, 50, 'Z. Khaksar, F. Hajizadeh, and S. N. S. Reihani, â€œThe displacement measurement of a trapped particle by interference model on image plane,â€ Seventies Annual conference on optics & photonics Kerman, Iran, February 2011', '', -1),
(53, -1, 'Encieh Erfani, Primordial Black Hole Formation from Particle Production during Inflation', 'http://iopscience.iop.org/article/10.1088/1475-7516/2016/04/020/meta', 26),
(54, -1, 'A. Moradi, E. A. Akhlaghi, Faegheh Hajizadeh, and S. Nader S. Reihani &DOUBLEQUOTEDigital holography based submicron thermometry,&DOUBLEQUOTE Opt. Express,  18: (2), 551-559, (2016)', '', 21),
(55, -1, 'Encieh Erfani, Modulated Inflation Models and Primordial Black Holes, PRD 89 (2014) 083511 [arXiv: 1311.3090].', 'http://journals.aps.org/prd/abstract/10.1103/PhysRevD.89.083511', 26),
(56, -1, 'Azadeh Maleknejad and Encieh Erfani, Chromo-Natural Model in Anisotropic Background, JCAP 1403 (2014) 016 [arXiv: 1311.3361]', 'http://iopscience.iop.org/article/10.1088/1475-7516/2014/03/016/meta', 26),
(57, -1, 'Athanasios Chatzistavrakidis, <b>Encieh Erfani</b>, Hans Peter Nilles and Ivonne Zavala, Axiology, JCAP 1209 (2012) 006 [arXiv: 1207.1128', 'http://iopscience.iop.org/article/10.1088/1475-7516/2012/09/006/meta', 26),
(58, -1, 'Manuel Drees and Encieh Erfani, Running Spectral Index and Formation of Primordial Black Hole in Single Field Inflation Models, JCAP 1201 (2012) 035 [arXiv: 1110Ú¯Ú¯Ú¯Ú¯Ú¯', 'http://iopscience.iop.org/article/10.1088/1475-7516/2012/01/035/meta', 26),
(59, -1, 'Manuel Drees and Encieh Erfani, Running-Mass Inflation Model and Primordial Black Holes, JCAP 1104 (2011) 005 [arXiv: 1102.2340]', 'http://iopscience.iop.org/article/10.1088/1475-7516/2011/04/005/meta', 26),
(60, -1, 'Encieh Erfani, Axiology, PoS Corfu2012 (2013) 062', 'http://inspirehep.net/record/1117763', 27),
(61, -1, 'Alejandro Cabo, Matts Roos and Encieh Erfani, Dilaton Stabilization by Massive Fermion Matter, Astrophys.~Space Sci. 340 (2012) 381-397 [arXiv: 1011.4871]', 'http://link.springer.com/article/10.1007%2Fs10509-012-1056-z', 26),
(62, -1, 'Manuel Drees and Encieh Erfani, Dark Matter Primordial Black Holes and Inflation Models, arXiv: 1205.4012', 'https://arxiv.org/pdf/1205.4012.pdf', 27),
(63, -1, 'Alejandro Cabo, Matts Roos and Encieh Erfani, On the Stability of the Dilaton Mean Field, Int.J. Mod. Phys. E20 (2011) 245-253', 'http://www.worldscientific.com/doi/abs/10.1142/S0218301311040323', 27);

-- --------------------------------------------------------

--
-- Table structure for table `publication_category`
--

CREATE TABLE IF NOT EXISTS `publication_category` (
  `publication_categoryno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`publication_categoryno`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=28 ;

--
-- Dumping data for table `publication_category`
--

INSERT INTO `publication_category` (`publication_categoryno`, `websiteno`, `title`) VALUES
(20, 23, 'Artificial intelligence'),
(21, 24, 'Journal'),
(22, 24, 'Conferences'),
(26, 31, 'Journal'),
(27, 31, 'Proceedings');

-- --------------------------------------------------------

--
-- Table structure for table `publication_subcategory`
--

CREATE TABLE IF NOT EXISTS `publication_subcategory` (
  `publication_subcategoryno` int(11) NOT NULL AUTO_INCREMENT,
  `publication_categoryno` int(11) NOT NULL,
  `title` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`publication_subcategoryno`),
  KEY `publication_category#` (`publication_categoryno`),
  KEY `publication_categoryno` (`publication_categoryno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `publication_subcategory`
--

INSERT INTO `publication_subcategory` (`publication_subcategoryno`, `publication_categoryno`, `title`) VALUES
(40, 20, 'optimization'),
(44, 22, 'In English'),
(50, 22, 'In Persian');

-- --------------------------------------------------------

--
-- Table structure for table `research_topic`
--

CREATE TABLE IF NOT EXISTS `research_topic` (
  `topicno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `link` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `pic_bool` tinyint(1) DEFAULT '1',
  `pic_address` varchar(1024) COLLATE utf8_bin DEFAULT 'default.jpg',
  `header_bool` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`topicno`),
  KEY `websiteno` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=178 ;

--
-- Dumping data for table `research_topic`
--

INSERT INTO `research_topic` (`topicno`, `websiteno`, `title`, `link`, `description`, `pic_bool`, `pic_address`, `header_bool`) VALUES
(58, 22, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(59, 22, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(60, 22, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(61, 22, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(63, 23, 'Applications of Artificial Intelligence', '', '<ul>&NEWLINE<li>Meta-Heuristic Algorithms</li>&NEWLINE<li>Expert Systems</li>&NEWLINE<li>Learning Expert Systems</li>&NEWLINE</ul>', 1, 'default.jpg', 0),
(68, 24, 'Optical tweezers', 'https://en.wikipedia.org/wiki/Optical_tweezers', '<p><span style=&DOUBLEQUOTEcolor: #333333; font-family: &SINGLEQUOTETimes New Roman&SINGLEQUOTE; font-size: 17.299999237060547px; -webkit-text-stroke-color: #000000;&DOUBLEQUOTE>Optical tweezer refers to a particular geometry where a laser beam is focused', 1, 'default.jpg', 0),
(72, 25, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(73, 25, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(74, 25, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(75, 25, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(92, 30, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(93, 30, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(94, 30, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(95, 30, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(96, 31, 'Inflation', '', '', 0, 'default.jpg', 1),
(98, 31, 'Dark Matter', '', '', 0, 'default.jpg', 0),
(99, 31, 'Primordial Black Holes', '', '', 0, 'default.jpg', 0),
(100, 32, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(101, 32, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(102, 32, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(103, 32, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(104, 33, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(105, 33, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(106, 33, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(107, 33, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(108, 34, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(109, 34, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(110, 34, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(111, 34, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(120, 37, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(121, 37, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(122, 37, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(123, 37, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(124, 38, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(125, 38, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(126, 38, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(127, 38, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(132, 40, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', '<p>The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of en', 1, 'h.mirsadeghi_132.jpg', 0),
(133, 40, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', '<p>The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum</p>', 0, 'h.mirsadeghi_133.jpg', 0),
(134, 40, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', '<p>Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has&', 0, 'h.mirsadeghi_134.png', 1),
(135, 40, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', '<p>Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting up', 1, 'default.jpg', 0),
(136, 41, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(137, 41, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(138, 41, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(139, 41, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(158, 42, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(159, 42, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(160, 42, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(161, 42, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(162, 43, 'Fluid Mechanics', 'https://en.wikipedia.org/', '<p>The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of en', 0, 'default.jpg', 0),
(163, 43, 'Granular Matter', 'https://en.wikipedia.org/', '<p>The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum</p>', 0, 'default.jpg', 0),
(164, 43, 'Biophysics', 'https://en.wikipedia.org/', '<p>Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has ', 0, 'default.jpg', 0),
(165, 43, 'Surface Growth', 'https://en.wikipedia.org/', '<p>Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting up', 0, 'default.jpg', 0),
(166, 44, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(167, 44, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(168, 44, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(169, 44, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(170, 45, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(171, 45, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(172, 45, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(173, 45, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0),
(174, 46, 'Conservation of Mass-Energy', 'https://en.wikipedia.org/wiki/Conservation_of_mass-energy', 'The total energy in a closed or isolated system is constant, no matter what happens. Another law stated that the mass in an isolated system is constant. When Einstein discovered the relationship E=mc2 (in other words that mass was a manifestation of energ', 1, 'default.jpg', 0),
(175, 46, 'Conservation of Momentum', 'https://en.wikipedia.org/wiki/Momentum', 'The total momentum in a closed or isolated system remains constant. An alternative of this is the law of conservation of angular momentum', 1, 'default.jpg', 0),
(176, 46, '&DOUBLEQUOTELaw&DOUBLEQUOTE of Gravity', 'https://en.wikipedia.org/wiki/Newton%27s_law_of_universal_gravitation', 'Newton developed his &DOUBLEQUOTELaw of Gravity&DOUBLEQUOTE to explain the attractive force between a pair of masses. In the twentieth century, it became clear that this is not the whole story, as Einstein&SINGLEQUOTEs theory of general relativity has pro', 1, 'default.jpg', 0),
(177, 46, 'Newton&SINGLEQUOTEs Three Laws of Motion', 'https://en.wikipedia.org/wiki/Newton%27s_laws_of_motion', 'Sir Isaac Newton developed the Three Laws of Motion, which describe basic rules about how the motion of physical objects change. Newton was able to define the fundamental relationship between the acceleration of an object and the total forces acting upon ', 1, 'default.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE IF NOT EXISTS `season` (
  `seasonno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`seasonno`),
  KEY `websiteno` (`websiteno`),
  KEY `websiteno_2` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=114 ;

--
-- Dumping data for table `season`
--

INSERT INTO `season` (`seasonno`, `websiteno`, `title`) VALUES
(36, 22, 'Spring 2016'),
(37, 22, 'Winter 2016'),
(38, 22, 'Fall 2016'),
(39, 23, 'Spring 2016'),
(40, 23, 'Winter 2016'),
(41, 23, 'Fall 2016'),
(44, 24, 'Fall 2016'),
(45, 25, 'Spring 2016'),
(46, 25, 'Winter 2016'),
(47, 25, 'Fall 2016'),
(60, 30, 'Spring 2016'),
(61, 30, 'Winter 2016'),
(62, 30, 'Fall 2016'),
(63, 31, 'Winter 2016'),
(64, 31, 'Spring 2016'),
(65, 31, 'Fall 2016'),
(66, 32, 'Spring 2016'),
(67, 32, 'Winter 2016'),
(68, 32, 'Fall 2016'),
(69, 33, 'Spring 2016'),
(70, 33, 'Winter 2016'),
(71, 33, 'Fall 2016'),
(72, 34, 'Spring 2016'),
(73, 34, 'Winter 2016'),
(74, 34, 'Fall 2016'),
(81, 37, 'Spring 2016'),
(82, 37, 'Winter 2016'),
(83, 37, 'Fall 2016'),
(84, 38, 'Spring 2016'),
(85, 38, 'Winter 2016'),
(86, 38, 'Fall 2016'),
(90, 40, 'Spring 2016'),
(91, 40, 'Winter 2016'),
(92, 40, 'Fall 2016'),
(93, 41, 'Spring 2016'),
(94, 41, 'Winter 2016'),
(95, 41, 'Fall 2016'),
(96, 42, 'Spring 2016'),
(97, 42, 'Winter 2016'),
(98, 42, 'Fall 2016'),
(99, 43, 'Spring 2016'),
(100, 43, 'Winter 2016'),
(101, 43, 'Fall 2016'),
(102, 44, 'Spring 2016'),
(103, 44, 'Winter 2016'),
(104, 44, 'Fall 2016'),
(105, 45, 'Spring 2016'),
(106, 45, 'Winter 2016'),
(107, 45, 'Fall 2016'),
(108, 31, 'Winter 2017'),
(110, 31, 'Ø²Ù…Ø³ØªØ§Ù† Û¹Ûµ'),
(111, 46, 'Spring 2016'),
(112, 46, 'Winter 2016'),
(113, 46, 'Fall 2016');

-- --------------------------------------------------------

--
-- Table structure for table `social_link`
--

CREATE TABLE IF NOT EXISTS `social_link` (
  `social_linkno` int(11) NOT NULL AUTO_INCREMENT,
  `websiteno` int(255) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'whether facebook, twitter or et c',
  `activity_status` tinyint(1) NOT NULL,
  `link_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`social_linkno`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=219 ;

--
-- Dumping data for table `social_link`
--

INSERT INTO `social_link` (`social_linkno`, `websiteno`, `type`, `activity_status`, `link_address`) VALUES
(72, 22, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(73, 22, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(74, 22, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(75, 22, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(76, 22, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(77, 23, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(78, 23, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(79, 23, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(80, 23, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(81, 23, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(82, 24, 'facebook', 0, 'https://www.facebook.com/YourFacebookID'),
(83, 24, 'twitter', 0, 'https://twitter.com/YourTwitterID'),
(84, 24, 'instagram', 0, 'https://www.instagram.com/YourInstagramID/'),
(85, 24, 'googleplus', 0, 'https://plus.google.com/+YourGooglePlusID/'),
(86, 24, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(87, 25, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(88, 25, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(89, 25, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(90, 25, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(91, 25, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(112, 30, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(113, 30, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(114, 30, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(115, 30, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(116, 30, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(117, 31, 'facebook', 0, 'https://www.facebook.com/YourFacebookID'),
(118, 31, 'twitter', 0, 'https://twitter.com/YourTwitterID'),
(119, 31, 'instagram', 0, 'https://www.instagram.com/YourInstagramID/'),
(120, 31, 'googleplus', 0, 'https://plus.google.com/+YourGooglePlusID/'),
(121, 31, 'linkedin', 0, 'https://www.linkedin.com/in/YourLinkedInID'),
(122, 32, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(123, 32, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(124, 32, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(125, 32, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(126, 32, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(127, 33, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(128, 33, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(129, 33, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(130, 33, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(131, 33, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(132, 34, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(133, 34, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(134, 34, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(135, 34, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(136, 34, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(137, 22, 'researchgate', 1, 'researchgate.net/YourRGID'),
(138, 23, 'researchgate', 1, 'researchgate.net/YourRGID'),
(139, 24, 'researchgate', 1, 'researchgate.net/YourRGID'),
(140, 25, 'researchgate', 1, 'researchgate.net/YourRGID'),
(142, 30, 'researchgate', 1, 'researchgate.net/YourRGID'),
(143, 31, 'researchgate', 1, 'https://www.researchgate.net/profile/Encieh_Erfani'),
(144, 22, 'researchgate', 1, 'researchgate.net/YourRGID'),
(145, 33, 'researchgate', 1, 'researchgate.net/YourRGID'),
(146, 34, 'researchgate', 1, 'researchgate.net/YourRGID'),
(159, 37, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(160, 37, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(161, 37, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(162, 37, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(163, 37, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(164, 37, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(165, 38, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(166, 38, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(167, 38, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(168, 38, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(169, 38, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(170, 38, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(177, 40, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(178, 40, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(179, 40, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(180, 40, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(181, 40, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(182, 40, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(183, 41, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(184, 41, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(185, 41, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(186, 41, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(187, 41, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(188, 41, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(189, 42, 'facebook', 0, 'https://www.facebook.com/YourFacebookID'),
(190, 42, 'twitter', 0, 'https://twitter.com/YourTwitterID'),
(191, 42, 'instagram', 0, 'https://www.instagram.com/YourInstagramID/'),
(192, 42, 'researchgate', 0, 'researchgate.net/yourResearchGateID'),
(193, 42, 'googleplus', 0, 'https://plus.google.com/+YourGooglePlusID/'),
(194, 42, 'linkedin', 0, 'https://www.linkedin.com/in/YourLinkedInID'),
(195, 43, 'facebook', 0, 'https://www.facebook.com/YourFacebookID'),
(196, 43, 'twitter', 0, 'https://twitter.com/YourTwitterID'),
(197, 43, 'instagram', 0, 'https://www.instagram.com/YourInstagramID/'),
(198, 43, 'researchgate', 1, 'https://www.researchgate.net/profile/Maniya_Maleki'),
(199, 43, 'googleplus', 0, 'https://plus.google.com/+YourGooglePlusID/'),
(200, 43, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(201, 44, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(202, 44, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(203, 44, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(204, 44, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(205, 44, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(206, 44, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(207, 45, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(208, 45, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(209, 45, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(210, 45, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(211, 45, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(212, 45, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID'),
(213, 46, 'facebook', 1, 'https://www.facebook.com/YourFacebookID'),
(214, 46, 'twitter', 1, 'https://twitter.com/YourTwitterID'),
(215, 46, 'instagram', 1, 'https://www.instagram.com/YourInstagramID/'),
(216, 46, 'researchgate', 1, 'researchgate.net/yourResearchGateID'),
(217, 46, 'googleplus', 1, 'https://plus.google.com/+YourGooglePlusID/'),
(218, 46, 'linkedin', 1, 'https://www.linkedin.com/in/YourLinkedInID');

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

CREATE TABLE IF NOT EXISTS `text` (
  `websiteno` int(11) NOT NULL,
  `text_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `page_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`websiteno`,`text_id`,`page_id`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`websiteno`, `text_id`, `page_id`, `content`) VALUES
(22, 'academic_specs', 'homepage', 'Assistant Prof.'),
(22, 'cell', 'contactme', ''),
(22, 'department', 'homepage', 'Physics'),
(22, 'email', 'contactme', ''),
(22, 'fullname', 'homepage', 'FirstName LastName'),
(22, 'heading', 'publications', ''),
(22, 'page_content', 'contactme', ''),
(22, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(22, 'subheading', 'publications', ''),
(22, 'tel', 'contactme', ''),
(23, 'academic_specs', 'homepage', 'Clerk'),
(23, 'cell', 'contactme', ''),
(23, 'department', 'homepage', 'Computer Science'),
(23, 'email', 'contactme', ''),
(23, 'fullname', 'homepage', 'Emad Mirsadeghi'),
(23, 'heading', 'publications', ''),
(23, 'page_content', 'contactme', ''),
(23, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(23, 'subheading', 'publications', ''),
(23, 'tel', 'contactme', ''),
(24, 'academic_specs', 'homepage', 'Assistant Prof.'),
(24, 'cell', 'contactme', ''),
(24, 'department', 'homepage', 'Physics'),
(24, 'email', 'contactme', 'hajizade@iasbs.ac.ir'),
(24, 'fullname', 'homepage', 'Faegheh Hajizadeh'),
(24, 'heading', 'publications', 'Journals'),
(24, 'page_content', 'contactme', ''),
(24, 'page_content', 'homepage', '<p>Optical tweezers group, May 2016,&nbsp;Missing from photo: Kebria Taheri</p>&NEWLINE<p>&nbsp;</p>&NEWLINE<p><strong>Welcome&nbsp;to IASBS optical tweezers group page!</strong></p>&NEWLINE<p>&nbsp;</p>&NEWLINE<p style=&DOUBLEQUOTEmargin: 0px 0px 12px; font-size: 17.3px; line-height: normal; font-family: &SINGLEQUOTETimes New Roman&SINGLEQUOTE; -webkit-text-stroke-color: #000000; -webkit-text-stroke-width: initial;&DOUBLEQUOTE><span style=&DOUBLEQUOTEfont-kerning: none;&DOUBLEQUOTE>Optical tweezer refers to a particular geometry where a laser beam is focused through a high numerical aperture lens. This geometry is used to generate a three-dimensional optical trap by exerting a radiation force to small objects. Present days optical traps have become calibrated tools to immobilize, orient and transport submicron particles. The nanometer positioning ability, along with sub-picoNewton force resolution, have turned optical tweezer into a valuable tool in biology and physical sciences.&nbsp;&lt;/</span></p>'),
(24, 'subheading', 'publications', ''),
(24, 'tel', 'contactme', ''),
(25, 'academic_specs', 'homepage', 'Assistant Prof.'),
(25, 'cell', 'contactme', ''),
(25, 'department', 'homepage', 'Physics'),
(25, 'email', 'contactme', ''),
(25, 'fullname', 'homepage', 'FirstName LastName'),
(25, 'heading', 'publications', ''),
(25, 'page_content', 'contactme', ''),
(25, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(25, 'subheading', 'publications', ''),
(25, 'tel', 'contactme', ''),
(30, 'academic_specs', 'homepage', 'Assistant Prof.'),
(30, 'cell', 'contactme', ''),
(30, 'department', 'homepage', 'Physics'),
(30, 'email', 'contactme', ''),
(30, 'fullname', 'homepage', 'FirstName LastName'),
(30, 'heading', 'publications', ''),
(30, 'page_content', 'contactme', ''),
(30, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(30, 'subheading', 'publications', ''),
(30, 'tel', 'contactme', ''),
(31, 'academic_specs', 'homepage', 'Assistant Prof.'),
(31, 'cell', 'contactme', ''),
(31, 'department', 'homepage', 'Physics'),
(31, 'email', 'contactme', 'erfani@iasbs.ac.ir'),
(31, 'fullname', 'homepage', 'Encieh ERFANI'),
(31, 'heading', 'publications', 'You can find my papers in  arXiv or  inSPIRE.'),
(31, 'page_content', 'contactme', ''),
(31, 'page_content', 'homepage', '<p><strong>Welcome to the IASBS Cosmology group page!</strong></p>&NEWLINE<p>&nbsp;</p>&NEWLINE<p><strong>I did my PhD </strong></p>&NEWLINE<p><strong>You can find more information in my CV.</strong></p>&NEWLINE<p><strong>The link to my publications</strong></p>&NEWLINE<p><strong>Teaching duty (explain about the IASBS with link)</strong></p>'),
(31, 'subheading', 'publications', ''),
(31, 'tel', 'contactme', '+98-24-3315-2114'),
(32, 'academic_specs', 'homepage', 'Assistant Prof.'),
(32, 'cell', 'contactme', ''),
(32, 'department', 'homepage', 'Physics'),
(32, 'email', 'contactme', ''),
(32, 'fullname', 'homepage', 'FirstName LastName'),
(32, 'heading', 'publications', ''),
(32, 'page_content', 'contactme', ''),
(32, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(32, 'subheading', 'publications', ''),
(32, 'tel', 'contactme', ''),
(33, 'academic_specs', 'homepage', 'Assistant Prof.'),
(33, 'cell', 'contactme', ''),
(33, 'department', 'homepage', 'Physics'),
(33, 'email', 'contactme', ''),
(33, 'fullname', 'homepage', 'FirstName LastName'),
(33, 'heading', 'publications', ''),
(33, 'page_content', 'contactme', ''),
(33, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(33, 'subheading', 'publications', ''),
(33, 'tel', 'contactme', ''),
(34, 'academic_specs', 'homepage', 'Assistant Prof.'),
(34, 'cell', 'contactme', ''),
(34, 'department', 'homepage', 'Physics'),
(34, 'email', 'contactme', ''),
(34, 'fullname', 'homepage', 'FirstName LastName'),
(34, 'heading', 'publications', ''),
(34, 'page_content', 'contactme', ''),
(34, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(34, 'subheading', 'publications', ''),
(34, 'tel', 'contactme', ''),
(37, 'academic_specs', 'homepage', 'Assistant Prof.'),
(37, 'cell', 'contactme', ''),
(37, 'department', 'homepage', 'Physics'),
(37, 'email', 'contactme', ''),
(37, 'fullname', 'homepage', 'FirstName LastName'),
(37, 'heading', 'publications', ''),
(37, 'page_content', 'contactme', ''),
(37, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(37, 'subheading', 'publications', ''),
(37, 'tel', 'contactme', ''),
(38, 'academic_specs', 'homepage', 'Assistant Prof.'),
(38, 'cell', 'contactme', ''),
(38, 'department', 'homepage', 'Physics'),
(38, 'email', 'contactme', ''),
(38, 'fullname', 'homepage', 'FirstName LastName'),
(38, 'heading', 'publications', ''),
(38, 'page_content', 'contactme', ''),
(38, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(38, 'subheading', 'publications', ''),
(38, 'tel', 'contactme', ''),
(40, 'academic_specs', 'homepage', 'Assistant Prof.'),
(40, 'cell', 'contactme', ''),
(40, 'department', 'homepage', 'Physics'),
(40, 'email', 'contactme', ''),
(40, 'fullname', 'homepage', 'FirstName LastName'),
(40, 'heading', 'publications', ''),
(40, 'page_content', 'contactme', ''),
(40, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(40, 'subheading', 'publications', ''),
(40, 'tel', 'contactme', ''),
(41, 'academic_specs', 'homepage', 'Assistant Prof.'),
(41, 'cell', 'contactme', ''),
(41, 'department', 'homepage', 'Physics'),
(41, 'email', 'contactme', ''),
(41, 'fullname', 'homepage', 'FirstName LastName'),
(41, 'heading', 'publications', ''),
(41, 'page_content', 'contactme', ''),
(41, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(41, 'subheading', 'publications', ''),
(41, 'tel', 'contactme', ''),
(42, 'academic_specs', 'homepage', 'Assistant Prof.'),
(42, 'cell', 'contactme', ''),
(42, 'department', 'homepage', 'Physics'),
(42, 'email', 'contactme', ''),
(42, 'fullname', 'homepage', 'Jahanfar Abouie'),
(42, 'heading', 'publications', ''),
(42, 'page_content', 'contactme', ''),
(42, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(42, 'subheading', 'publications', ''),
(42, 'tel', 'contactme', ''),
(43, 'academic_specs', 'homepage', 'Assistant Professor '),
(43, 'cell', 'contactme', ''),
(43, 'department', 'homepage', 'Physics'),
(43, 'email', 'contactme', ''),
(43, 'fullname', 'homepage', 'Maniya Maleki'),
(43, 'heading', 'publications', ''),
(43, 'page_content', 'contactme', ''),
(43, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(43, 'subheading', 'publications', ''),
(43, 'tel', 'contactme', ''),
(44, 'academic_specs', 'homepage', 'Associate Professor'),
(44, 'cell', 'contactme', ''),
(44, 'department', 'homepage', 'Physics'),
(44, 'email', 'contactme', ''),
(44, 'fullname', 'homepage', 'Farshid Mohammad-Rafiee'),
(44, 'heading', 'publications', ''),
(44, 'page_content', 'contactme', ''),
(44, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(44, 'subheading', 'publications', ''),
(44, 'tel', 'contactme', ''),
(45, 'academic_specs', 'homepage', 'Assistant Prof.'),
(45, 'cell', 'contactme', ''),
(45, 'department', 'homepage', 'Physics'),
(45, 'email', 'contactme', ''),
(45, 'fullname', 'homepage', 'FirstName LastName'),
(45, 'heading', 'publications', ''),
(45, 'page_content', 'contactme', ''),
(45, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(45, 'subheading', 'publications', ''),
(45, 'tel', 'contactme', ''),
(46, 'academic_specs', 'homepage', 'Assistant Prof.'),
(46, 'cell', 'contactme', ''),
(46, 'department', 'homepage', 'Physics'),
(46, 'email', 'contactme', ''),
(46, 'fullname', 'homepage', 'FirstName LastName'),
(46, 'heading', 'publications', ''),
(46, 'page_content', 'contactme', ''),
(46, 'page_content', 'homepage', '<p><strong>Welcome</strong> to My Personal Page where you can find a variety of information across the spectrum from my photos all the way through my portfolio to the people i collaborate with</p>&NEWLINE<p>As You&SINGLEQUOTEd expect, You can go to &DOUBLEQUOTEPeople&DOUBLEQUOTE &nbsp;and see the Information you&SINGLEQUOTEd be interested in about each and every single person i&SINGLEQUOTEm in touch with, or you can go to &DOUBLEQUOTEResearch&DOUBLEQUOTE and find yourself reading all about the kinds of matter i&SINGLEQUOTEve been enaging in</p>&NEWLINE<p>for Those of you wanting more, or desiring contact with me, you can also message me in the form devised under &DOUBLEQUOTEContact Me&DOUBLEQUOTE which i&SINGLEQUOTEd then receive in my mail</p>&NEWLINE<p>You may also find appropriate Social Links in the footer part of my every personal page</p>&NEWLINE<h2>Thank You</h2>'),
(46, 'subheading', 'publications', ''),
(46, 'tel', 'contactme', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `pic_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  `websiteno` int(11) NOT NULL AUTO_INCREMENT,
  `profilepic_caption` varchar(1024) COLLATE utf8_bin NOT NULL,
  `ldap` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`),
  KEY `website#` (`websiteno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=47 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `pic_address`, `websiteno`, `profilepic_caption`, `ldap`) VALUES
('a.hasani', 'a.hasani', 'a.hasani@iasbs.ac.ir', '', 46, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('abedinpour', 'abedinpour', 'abedinpour@iasbs.ac.ir', '', 41, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('charsooghi', 'charsooghi', 'charsooghi@iasbs.ac.ir', 'default.jpg', 30, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('dabdollahpour', 'dabdollahpour', 'dabdollahpour@iasbs.ac.ir', 'default.jpg', 33, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('e.a.akhlaghi', 'e.a.akhlaghi', 'e.a.akhlaghi@iasbs.ac.ir', '', 45, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('emir', 'emir', 'emir@iasbs.ac.ir', 'emir.jpg', 23, '<p>FirstName: Emad</p>&NEWLINE<p>LastName: Mirsadeghi</p>&NEWLINE<p>Computer Center Staff @IASBS ,Zanjan<br />Email: emirl@iasbs.ac.r<br />Tel: 024-33152262<br />Office #:&nbsp;262</p>', 1),
('erfani', 'erfani', 'erfani@iasbs.ac.ir', 'erfani.jpg', 31, '<h3>Encieh Erfani<br />Assistant Prof.</h3>&NEWLINE<h3>IASBS, Zanjan<br />Email: erfani@iasbs.ac.r<br />Tel: +98-24-3315-2114<br />Office: 114 Physics Dep.</h3>', 1),
('farshid', 'farshid', 'farshid@iasbs.ac.ir', '', 44, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('fazli', 'fazli', 'fazli@iasbs.ac.ir', 'default.jpg', 37, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('h.mirsadeghi', 'h.mirsadeghi', 'h.mirsadeghi@iasbs.ac.ir', 'h.mirsadeghi.jpg', 40, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('hajizade', 'hajizade', 'hajizade@iasbs.ac.ir', 'hajizade.png', 24, '<p>Faegheh Hajizadeh<br />Assistant Prof.&nbsp;<br />Email: hajizade@iasbs.ac.r<br />Tel: 024-3315-2013<br />Office # 013</p>', 1),
('jahan', 'jahan', 'jahan@iasbs.ac.ir', '', 42, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('kazemi_f', 'kazemi_f', 'kazemi_f@iasbs.ac.ir', '', 38, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('m_abedi', 'm_abedi', 'm_abedi@iasbs.ac.ir', 'm_abedi.jpg', 22, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('m_maleki', 'm_maleki', 'm_maleki@iasbs.ac.ir', 'm_maleki.jpg', 43, '<p>Maniya Maleki<br />Assistant Prof. @IASBS ,Zanjan<br />Email: m_maleki@iasbs.ac.r<br />Tel: 024-3315-2022<br />Office #:&nbsp;022</p>', 1),
('nahid.azimi', 'nahid.azimi', 'nahid.azimi@iasbs.ac.ir', 'default.jpg', 32, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('rasouli', 'rasouli', 'rasouli@iasbs.ac.ir', '', 34, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 1),
('sohrab', 'sohrab', 'pirhadi@gmail.com', '', 25, 'FirstName LastName<br/>Assistant Prof. @IASBS ,Zanjan<br/>Email: myemail@iasbs.ac.r<br/>Tel: 024-3355-1111<br/>Office #: 19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE IF NOT EXISTS `website` (
  `websiteno` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `default_header_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  `homepage_header_address` varchar(1024) COLLATE utf8_bin NOT NULL,
  `homepage_header_caption` varchar(1024) COLLATE utf8_bin DEFAULT 'Write Some Caption for Your Homepage header here...',
  `homepage_header_caption_bool` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`websiteno`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=47 ;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`websiteno`, `username`, `default_header_address`, `homepage_header_address`, `homepage_header_caption`, `homepage_header_caption_bool`) VALUES
(22, 'm_abedi', 'm_abedi.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(23, 'emir', 'default.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(24, 'hajizade', 'hajizade.jpg', 'hajizade.png', 'Write Some Caption for Your Homepage header here...', 1),
(25, 'sohrab', '', '', 'Write Some Caption for Your Homepage header here...', 1),
(30, 'charsooghi', 'default.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(31, 'erfani', 'erfani.jpg', 'erfani.jpg', '<p>Write Some Caption for Your Homepage header here...</p>', 1),
(32, 'nahid.azimi', 'default.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(33, 'dabdollahpour', 'default.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(34, 'rasouli', '', '', 'Write Some Caption for Your Homepage header here...', 1),
(37, 'fazli', 'default.jpg', 'default.jpg', 'Write Some Caption for Your Homepage header here...', 1),
(38, 'kazemi_f', '', '', 'Write Some Caption for Your Homepage header here...', 1),
(40, 'h.mirsadeghi', 'h.mirsadeghi.jpg', 'h.mirsadeghi.jpg', '<p><span style=&DOUBLEQUOTEborder: 0px; padding: 0px; margin: 0px; background-image: initial; background-position: 50% 50%; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; color: #828282; font-weight: 600; box-sizing: inherit; font-family: &SINGLEQUOTEAvenir W01&SINGLEQUOTE; font-size: 16px;&DOUBLEQUOTE>Default Value:</span><span style=&DOUBLEQUOTEcolor: #828282; font-family: &SINGLEQUOTEAvenir W01&SINGLEQUOTE; font-size: 16px;&DOUBLEQUOTE>&nbsp;&SINGLEQUOTEAndale Mono=andale mono,times;&SINGLEQUOTE+ &SINGLEQUOTEArial=arial,helvetica,sans-serif;&SINGLEQUOTE+ &SINGLEQUOTEArial Black=arial black,avant garde;&SINGLEQUOTE+ &SINGLEQUOTEBook Antiqua=book antiqua,palatino;&SINGLEQUOTE+ &SINGLEQUOTEComic Sans MS=comic sans ms,sans-serif;&SINGLEQUOTE+ &SINGLEQUOTECourier New=courier new,courier;&SINGLEQUOTE+ &SINGLEQUOTEGeorgia=georgia,palatino;&SINGLEQUOTE+ &SINGLEQUOTEHelvetica=helvetica;&SINGLEQUOTE+ &SINGLEQUOTEImpact=imp', 1),
(41, 'abedinpour', '', '', 'Write Some Caption for Your Homepage header here...', 1),
(42, 'jahan', 'jahan.jpg', 'jahan.png', 'Write Some Caption for Your Homepage header here...', 1),
(43, 'm_maleki', '', 'm_maleki.jpg', '<p>Experimental Soft Matter</p>', 1),
(44, 'farshid', '', '', '<p>This a test. </p>&NEWLINE<p>&nbsp;</p>', 0),
(45, 'e.a.akhlaghi', '', '', 'Write Some Caption for Your Homepage header here...', 1),
(46, 'a.hasani', '', '', 'Write Some Caption for Your Homepage header here...', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publication_subcategory`
--
ALTER TABLE `publication_subcategory`
  ADD CONSTRAINT `publication_subcategory_ibfk_1` FOREIGN KEY (`publication_categoryno`) REFERENCES `publication_category` (`publication_categoryno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
