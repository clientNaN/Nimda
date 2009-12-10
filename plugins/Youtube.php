<?php

/*
	This file is part of Nimda - An advanced event-driven IRC Bot written in PHP with a nice plugin system
	Copyright (C) 2009  noother [noothy@gmail.com]

	This program is free software; you can redistribute it and/or
	modify it under the terms of the GNU General Public License
	as published by the Free Software Foundation; either version 2
	of the License, or (at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA
*/

class Youtube extends Plugin {

	function isTriggered() {
		
		# This plugin will only work with the default URL:
		# e.g. http://www.youtube.com/watch?v=a1Y73sPHKxw
		
		$videoId = $this->info['text'];
		parse_str($videoId, $vars);
		$videoId = $vars['atch?v'];
		
		$url = "http://gdata.youtube.com/feeds/api/videos/".$videoId;
		
		$file = file_get_contents($url);
		$file = utf8_encode($file);
		$xml = simplexml_load_string($file);
		
		$xml_rates =  $xml->children('http://schemas.google.com/g/2005');
		$xml_views = $xml->children('http://gdata.youtube.com/schemas/2007');
		
		$avgRating = number_format($xml->children('http://schemas.google.com/g/2005')->rating->attributes()->average,2);
		$views = number_format($xml->children('http://gdata.youtube.com/schemas/2007')->statistics->attributes()->viewCount);
		$title = $xml->title;
		
		$this->sendOutput("(YouTube) | Title: ".$title. " | Rate: ". + $avgRating." | Views: ".$views);

	}

	function onChannelMessage(){
		// #(^|\s)((http://)?([a-z0-9]+\.)([a-z0-9\-]+\.)?[a-z]{2,4}(/[\w/\.\-]+[^[:punct:]]/?)?)([\s[:punct:]$])#i
		print_r($this->info);
		#if (preg_match("//youtube//",this->info['text']),$output){
		#	$this->sendOutput("link found!" + $output[0]);
		#}
		
	}
}
?>
