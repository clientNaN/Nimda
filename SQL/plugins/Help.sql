CREATE TABLE `help` (
  `id` int(11) NOT NULL auto_increment,
  `command` varchar(255) collate utf8_unicode_ci NOT NULL,
  `usage` varchar(255) collate utf8_unicode_ci NOT NULL,
  `text` text collate utf8_unicode_ci NOT NULL,
  `category` enum('Challenges','Crypto','Conversion','Translation','Games','System','Misc') collate utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

INSERT INTO `help` (`id`, `command`, `usage`, `text`, `category`, `level`) VALUES (1, '8ball', '!8ball question', 'Ask the powererful and wise 8 ball a yes/no type question. (Alias: eightball)', 'Misc', 0),
(2, 'asc2bin', '!asc2bin string', 'Converts ASCII chars into binary.', 'Conversion', 0),
(3, 'asc2dec', '!asc2dec string', 'Converts ASCII-chars into decimal.', 'Conversion', 0),
(4, 'asc2hex', '!asc2hex string', 'Converts ASCII-Chars into hexadecimal', 'Conversion', 0),
(5, 'asc2oct', '!asc2oct string', 'Converts ASCII-Chars into octal', 'Conversion', 0),
(6, 'bin2asc', '!bin2asc binary', 'Converts binary into ASCII', 'Conversion', 0),
(7, 'bin2dec', '!bin2dec binary', 'Converts binary into decimal', 'Conversion', 0),
(8, 'bin2hex', '!bin2hex binary', 'Converts binary into hexadecimal', 'Conversion', 0),
(9, 'bin2oct', '!bin2oct binary', 'Converts binary into octal.', 'Conversion', 0),
(10, 'dec2asc', '!dec2asc decimal', 'Converts decimal into ASCII.', 'Conversion', 0),
(11, 'dec2bin', '!dec2bin decimal', 'Converts decimal into binary', 'Conversion', 0),
(12, 'dec2hex', '!dec2hex decimal', 'Converts decimal into hexadecimal.', 'Conversion', 0),
(13, 'dec2oct', '!dec2oct decimal', 'Converts decimal into octal', 'Conversion', 0),
(14, 'hex2asc', '!hex2asc hex', 'Converts hexadecimal into ASCII.', 'Conversion', 0),
(15, 'hex2bin', '!hex2bin hex', 'Converts hexadecimal into binary', 'Conversion', 0),
(16, 'hex2dec', '!hex2dec hex', 'Converts hexadecimal into decimal', 'Conversion', 0),
(17, 'hex2oct', '!hex2oct hex', 'Converts hexadecimal into octal.', 'Conversion', 0),
(18, 'oct2asc', '!oct2asc octal', 'Converts octal into ASCII.', 'Conversion', 0),
(19, 'oct2bin', '!octbin octal', 'Converts octal into binary.', 'Conversion', 0),
(20, 'oct2dec', '!oct2dec octal', 'Converts octal into decimal.', 'Conversion', 0),
(21, 'oct2hex', '!oct2hex octal', 'Converts octal into hexadecimal.', 'Conversion', 0),
(22, 'google', '!google search_term', 'Shoots back a link to google including search term and how many results were found.', 'Misc', 0),
(23, 'hackquest', '!hackquest [nick]', 'Shows the user''s status at hackquest.de (Alias: !hq)', 'Challenges', 0),
(24, 'help', '!help [command]', 'If command is given, it shows help on a specific topic, else it shows a command overview.', 'Misc', 0),
(30, 'ping', '!ping', 'Shoots back a Pong!. Good to see if you''re still online.', 'Misc', 0),
(31, 'roulette', '!roulette [stats [nick]]', 'Play a game of Russian Roulette, the player who gets shot loses, all other players win. You can view the stats by typing !roulette stats. You can view a player''s stats by typing !roulette stats nick.', 'Games', 0),
(32, 'mbc', '!mbc [nick]', 'See how many challenges this user solved @ www.mibs-challenges.de (Alias: mibs-challenges)', 'Challenges', 0),
(33, 'tbs', '!tbs [nick]', 'Shows how many challenges this user solved and what rank he is at www.bright-shadows.net (Aliases: bs, bright-shadows)', 'Challenges', 0),
(35, 'rankk', '!rankk [nick]', 'Shows the user''s status at www.rankk.org (Alias: rk)', 'Challenges', 0),
(36, 'wiki', '!wiki term', 'Searches the German Wikipedia for you term and displays it in IRC, if your term is not found at the German Wikipedia, it will try to find it at the English Wikipedia. (Alias: wikipedia)', 'Misc', 0),
(37, 'wiki-en', '!wiki-en term', 'Same as !wiki, but skips the search at the German Wikipedia.', 'Misc', 0),
(38, 'stupi', '!stupi term', 'Searches the German Stupidedia for your term and displays the definition in IRC.', 'Misc', 0),
(39, 'slap', '!slap nick|stats', 'Type this and I''ll slap someone. Type <!slap stats> to see how many slaps are in my database.', 'Misc', 0),
(40, 'decide', '!decide option1 or option2 or...', 'Helps you to decide on difficult decisions.', 'Misc', 0),
(41, 'hang', '!hang start|stop|stats|char|solution|add|del [word]', 'Play a game of Hangman. Use !hang start to initiate a new game, ''stop'' to stop the current game, !hang char to guess a char, !hang solution to guess the solution, !hang add yourwordhere to add a word to the database, !hang del word to delete a word from the database. (Alias: hangman)', 'Games', 0),
(42, 'md5', '!md5 string', 'Gives back the md5-hash of string', 'Crypto', 0),
(43, 'reverse', '!reverse string', 'Gives back the string reversed.', 'Crypto', 0),
(44, 'electrica', '!electrica [nick]', 'Shows the user''s status at Electrica (http://www.caesum.com/game/) (Alias: ec)', 'Challenges', 0),
(45, 'wechall', '!wechall [nick|rank]', 'Shows the user''s status at www.wechall.net (Alias: wc, klo)', 'Challenges', 0),
(46, 'dym', '!dym [nick]', 'Shows the user''s status at www.dareyourmind.net (Aliases: !dm, !dareyourmind)', 'Challenges', 0),
(47, 'seen', '!seen nick', 'Shows the last action of the given nick.', 'Misc', 0),
(48, 'stats', '!stats [nick]', 'If used in a channel, this function shows channel specific statistics about a user. If used in Query, this shows the overall stats about a user.', 'Misc', 0),
(49, 'top10', '!top10 [category]', 'This function shows the Top10 users in the given category. Available categories are: chars, words, lines, actions, smilies, kicks, kicked, modes, topics, cpl (chars per line), wpl (words per line)', 'Misc', 0),
(50, 'quote', '!quote [id|search_string|add text|del id]', '!quote shows a random Quote. !quote id shows the quote with this id. !quote search_string shows all quotes, that match the search. ''!quote add text'' adds a quote to the db. ''!quote del id'' deletes the quote with the given id. ', 'Misc', 0),
(51, 'quote--', '!quote-- id', 'Rates the quote with the given ID --', 'Misc', 0),
(52, 'quote++', '!quote++ id', 'Rates the quote with the given ID ++.', 'Misc', 0),
(53, 'de-en', '!de-en text', 'Translates text from German to English', 'Translation', 0),
(54, 'de-fr', '!de-fr text', 'Translates text from German to French', 'Translation', 0),
(55, 'de-it', '!de-it text', 'Translates text from German to Italian', 'Translation', 0),
(56, 'de-nl', '!de-nl text', 'Translates text from German to Dutch', 'Translation', 0),
(57, 'de-pl', '!de-pl text', 'Translates text from German to Polish', 'Translation', 0),
(58, 'de-sv', '!de-sv text', 'Translates text from German to Swedish', 'Translation', 0),
(59, 'de-es', '!de-es text', 'Translates text from German to Spanish', 'Translation', 0),
(60, 'de-no', '!de-no text', 'Translates text from German to Norwegian', 'Translation', 0),
(61, 'en-de', '!en-de text', 'Translates text from English to German', 'Translation', 0),
(62, 'fr-de', '!fr-de text', 'Translates text from French to German', 'Translation', 0),
(63, 'it-de', '!it-de text', 'Translates text from Italian to German', 'Translation', 0),
(64, 'nl-de', '!nl-de text', 'Translates text from Dutch to German', 'Translation', 0),
(65, 'pl-de', '!pl-de text', 'Translates text from Polish to German', 'Translation', 0),
(66, 'sv-de', '!sv-de text', 'Translates text from Swedish to German', 'Translation', 0),
(67, 'es-de', '!es-de text', 'Translates text from Spanish to German', 'Translation', 0),
(68, 'no-de', '!no-de text', 'Translates text from Norwegian to German', 'Translation', 0),
(69, 'en-de', '!en-de text', 'Translates text from English to German', 'Translation', 0),
(70, 'en-fr', '!en-fr text', 'Translates text from English to French', 'Translation', 0),
(71, 'en-it', '!en-it text', 'Translates text from English to Italian', 'Translation', 0),
(72, 'en-nl', '!en-nl text', 'Translates text from English to Dutch', 'Translation', 0),
(73, 'en-pl', '!en-pl text', 'Translates text from English to Polish', 'Translation', 0),
(74, 'en-sv', '!en-sv text', 'Translates text from English to Swedish', 'Translation', 0),
(75, 'en-es', '!en-es text', 'Translates text from English to Spanish', 'Translation', 0),
(76, 'en-no', '!en-no text', 'Translates text from English to Norwegian', 'Translation', 0),
(77, 'fr-en', '!fr-en text', 'Translates text from French to English', 'Translation', 0),
(78, 'it-en', '!it-en text', 'Translates text from Italian to English', 'Translation', 0),
(79, 'nl-en', '!nl-en text', 'Translates text from Dutch to English', 'Translation', 0),
(80, 'pl-en', '!pl-en text', 'Translates text from Polish to English', 'Translation', 0),
(81, 'sv-en', '!sv-en text', 'Translates text from Swedish to English', 'Translation', 0),
(82, 'es-en', '!es-en text', 'Translates text from Spanish to English', 'Translation', 0),
(83, 'no-en', '!no-en text', 'Translates text from Norwegian to English', 'Translation', 0),
(84, 'newbiecontest', '!newbiecontest [nick]', 'Shows the user''s challenge status at www.newbiecontest.org (Alias: newbie-contest, nc)', 'Challenges', 0),
(85, 'infomirmo', '!infomirmo [nick]', 'Shows the user''s challenge status at www.infomirmo.fr (Alias: im)', 'Challenges', 0),
(86, 'net-force', '!net-force [nick]', 'Shows the user''s challenge status at www.net-force.nl (Alias: netforce, nf)', 'Challenges', 0),
(87, 'thisislegal', '!thisislegal [nick]', 'Shows the user''s status at www.thisislegal.com (Aliases: !tl, !til, !legal)', 'Challenges', 0),
(88, 'arcade', '!arcade [nick]', 'Shows the user''s status at http://no0ther1.kicks-ass.net/arcade/', 'Games', 0),
(89, 'trace', '!trace [nick]', 'Traces you or the specified nick. (IP & approximate location)', 'Misc', 0),
(90, 'wcc', '!wcc [nick|rank]', 'Shows the user''s challenge status at www.wechall.net', 'Challenges', 0),
(91, 'tv', '!tv', 'Shows the current TV program of the main German stations.', 'Misc', 0);
