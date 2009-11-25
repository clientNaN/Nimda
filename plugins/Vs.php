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

class Vs extends Plugin {
	
	# Based on Noother's Google Plugin.

	function isTriggered() {
		
		if(!isset($this->info['text'])) {
			$this->sendOutput(sprintf($this->CONFIG['no_term'],$this->info['triggerUsed']));
			return;
		}
		
		$input = explode(",",$this->info['text']);
		
		if($input[1] == ""){
			$this->sendOutput(sprintf($this->CONFIG['no_term'],$this->info['triggerUsed']));
			return;
		}
		
		$word1Hits = $this->getHits($input[0]);
		$word2Hits = $this->getHits($input[1]);
		
		
		
		$this->sendOutput("(".$word1Hits.") \x02".$input[0]."\x02 ".$this->getBar(str_replace(".","",$word1Hits),str_replace(".","",$word2Hits))."\x02 ".$input[1]."\x02 (".$word2Hits.")");
	}
	
	function getHits($input) {
		$host   = "www.google.com";
		$get    = "/search?q=".urlencode($input)."&hl=de&safe=off";
		$link   = "http://".$host.$get;
		
		$result = libHTTP::GET($host,$get);
		$result = implode($result['content'],"\n");
		
		preg_match('#Ergebnisse <b>1</b> - <b>\d{1,2}</b> von (ungef.hr )?<b>(.*?)</b> #',$result,$arr);
		if(empty($arr)) $output= "0";
		elseif(!empty($arr[1])) $output= "";
		$output = $arr[2];
		return $output;
	}
	
	function getBar($number1, $number2){
		$divider = ($number1 + $number2) / 20;
		$output = "[".str_repeat("=",round($number1/$divider));
		$output .= "|";
		$output .= str_repeat("=",round($number2/$divider))."]";
		return $output;
	}

}

?>
