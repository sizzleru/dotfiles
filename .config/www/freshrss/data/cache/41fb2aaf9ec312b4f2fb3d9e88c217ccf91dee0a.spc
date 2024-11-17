a:6:{s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"feed";a:1:{i:0;a:6:{s:4:"data";s:49:"
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:13:"Factorio Blog";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:29:"https://factorio.com/blog/rss";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:25:"2024-11-08T00:00:00+00:00";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:2:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:21:"https://factorio.com/";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:2:{s:4:"href";s:29:"https://factorio.com/blog/rss";s:3:"rel";s:4:"self";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:8:"Werkzeug";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"entry";a:10:{i:0;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"Friday Facts #436 - Lost in Translation";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-436";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-11-08T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-436";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:5:"Hrusa";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:5065:"<p>
  <span id="hello">Hello</span>,</br>
  We are still diligently working away at the Space Age bug reports.
</p>

<hr>
<h3>Trouble with languages</h3>
<p>
  While fixing an <a href="https://forums.factorio.com/116118">IME keyboard (Asian language) bug</a> introduced by the 2.0 update, I got curious and started exploring localisation for various languages. Even though my native language is Czech, all of our development on the game happens in English, so I essentially never run the game in this mode.
</p>

<p>
  As I was twiddling about in the Czech crafting menu, it quickly came to light that the user experience wasn't as smooth as I would expect.
</p>

<p>
  Any capital non-English letter would cause trouble. Looking up "<b>čerpadlo</b>" (pump) yields "Ropné <b>čerpadlo</b>" (Pump jack) and "Pobřežní <b>čerpadlo</b>" (Offshore pump), but not "<b>Čerpadlo</b>" (Pump) due to the capital Č not being matched to lower case č. Players have already developed a habit of typing stuff like "erpadlo"(ump) in order to avoid the troublesome letters altogether.
</p>

<h4>Non-English search finally supported!</h4>
<p>
  Obviously, this has been terrible user experience for years and I took it upon myself to address it as quickly as possible. The root of the issue was that until now we searched by casting each "code letter" to lower case via a standard function. However, internally (in the <a href="https://wikipedia.org/wiki/Unicode">Unicode</a> representation) any letter with accents or outside the latin alphabet takes up multiple "code letters" and therefore wasn't recognized or converted at all.
</p>

<p>
  Furthermore, Unicode letters are quite a mess, since the table has grown gradually over the years. Many letters are scattered all over. Out-of-the-box solutions are usually bloated to accommodate edge cases for many scripts and languages we can't even render in Factorio (Hieroglyphs, Sumerian Cuneiform, Emoji...). My solution was to write my own custom mapping focusing on languages we officially support.
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom: 20px;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-436-multilang-search-1.png">
</p>

<p>
  And since I was already at it with a custom solution, it allowed me to further tailor search hits to how people type in everyday life:
  <ul>
    <li>Accented letters are equivalent to non-accented ones. "zelezny plat"(iron plate) = "železný plát"(iron plate) = "ŽELEZNÝ PLÁT"(IRON PLATE)</li>
    <li>The two Japanese kana alphabets are now equvalent in search. 「べると」(belt) =「ベルト」(BELT). </li>
    <li>The two lower case sigmas in Greek both match the capital sigma. Σ = σ = ς</li>
  </ul>
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom: 20px;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-436-multilang-search-2.png">
</p>

<p>
  The new localised search improvements will be released with the upcoming 2.0.16 experimental release.
</p>

<p>
  Here is where I would like to hear from you. <b>If there is some other useful search feature that you find missing from a supported language, please let me know on the forums or as a response to this article.</b> I have tried to consult these features with our translators ahead of time, but I can only reach so many native speakers myself. It is also possible that some visually similar accents got omitted by accident.
</p>

<h4>Mod portal search</h4>

<p>
Besides the in-game search, our <a href="https://mods.factorio.com/">mod portal</a> search has also been improved this week. In the past it wouldn't always yield proper matches with asian languages. We have updated our search provider to a newer version and now it should be working better.
</p>

<hr>
<h3>Contribute to Translations</h3>

<p>
  With 2.0 and Space Age, we have added a lot of new items, descriptions, tips and such to the game.
  Each of these needs translating into foreign languages, and we rely on our community to contribute these for us.
</p>

<p>
  If you are interested in getting involved in the localisation of the game, please join the effort over on our <a href="https://crowdin.com/project/factorio">Crowdin Project</a>. To those already helping out, thank you very much for all your help. We know there are quite a few Crowdin issues and base game locale problems being reported, and we hope to address all of them in time.
</p>

<hr>
<p>
  As always, type your thoughts in the usual places.
</p>

<script>
  var rnd_val = 0
  var greetings = [
    "Hello",
    "Ahoj",
    "Cześć",
    "Grüßli Müsli",
    "Привіт",
    "Hola",
    "Olá",
    "Bună"
  ];
  var shown = [0]
  const interval = setInterval(function () {
    if (shown.length >= greetings.length)
      shown = [rnd_val];
    do {
      rnd_val = Math.floor(Math.random() * greetings.length);
    } while (shown.includes(rnd_val));
    shown.push(rnd_val);
    document.getElementById("hello").innerHTML = greetings[rnd_val];
  }, 5000);
</script>";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"Friday Facts #435 - Space Age Soundtrack release";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-435";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-11-01T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-435";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:14:"Albert, Klonan";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:3721:"<p>
  Hello,<br/>
  It is a busy time fixing bugs and cleaning up after the Space Age release.
</p>

<hr>
<h3>Factorio: Space Age - Soundtrack release<author>Albert</author></h3>

<div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(min(100%, 544px), 1fr));">
  <div>
<p>
  During the last weeks, our dear Petr - Music composer of the Factorio: Space Age (<a
    href="https://factorio.com/blog/post/fff-406">FFF-406</a>) has been working on selecting, remixing and mastering the
  very best tracks of the entire expansion in
  order to prepare an album with the best possible quality to represent the soundtrack of the DLC.
</p>

<p>
  The selected tracks have been remixed to enhance and intensify its dynamics to give them a proper album format
  experience. All the recording sessions with the musicians and the electronic compositions are paying off here.
  Many sections of tracks that were originally composed but cut from the final game tracks have been released in this album.
</p>

<p>
  The album length is 02:04:27, and includes the ambience of the new 4 planets and the space area.
</p>

<p>
  You will find the released album on <a href="https://store.steampowered.com/app/3311770" target="_blank">Steam</a>. We
  hope you enjoy it.
</p>
  </div>

  <div>
  <a href="https://store.steampowered.com/app/3311770" target="_blank">
    <img src="https://cdn.factorio.com/assets/blog-sync/fff-435-album-cover.png" />
  </a>
  </div>

</div>

<hr>

<h3>Just fixing bugs<author>Klonan</author></h3>

<p>
  We are all quite busy fixing bugs these weeks, so work on features and quality of life improvements that we could typically exposit about in FFF is on the back burner.
  <br/>We do have a nice graph of automated crash reports since the release:
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom:0px;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-435-crash-graph.png" style="box-shadow:none">
</p>

<p>
  For a bit of a release retrospective, given how 2.0 and Space Age was the biggest launch we've ever done, things went way smoother than we anticipated. This could be due to many factors:
  <ul>
    <li>Cleaner code and higher development standards.</li>
    <li>Better PR review and QA process.</li>
    <li>The LAN party and subsequent closed beta testing.</li>
  </ul>
</p>

<p>
  That is not to say there were zero bugs and crashes, but generally it seems like most players could load the game and get right to having fun and not encounter any show stoppers. Still, with over 300 open bugs sitting in our forum, we have our work cut out for us...
</p>

<h4>Experimentalists Assemble</h4>

<p>
  At this time we have been pushing releases as Stable quite quickly after release, but as we start fixing lower priority bugs, the chances of a bigger issue sneaking through increase. That is why we would like to slowly transition to having experimental releases stay experimental for longer.
</p>

<p>
  For this we need more people to opt-in to the experimental releases, which can be done in 2 ways:
  <ul>
    <li>Website version: Settings -> Other -> Enable experimental updates.</li>
    <li>Steam: Right click Factorio in the library -> Properties -> Betas -> Beta participation dropdown -> Latest 2.0 experimental.</li>
  </ul>
</p>

<p>
  By joining the experimental releases, it will give us a better ability to test the game before wider distribution. You will also be first in line when it comes to encountering new bugs, which we would very much appreciate being reported on our <a href="https://forums.factorio.com/viewforum.php?f=7">forum</a>.
</p>

<hr>

<p>
  As always, experiment on your thoughts in the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Friday Facts #434 - Galaxy of Fame";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-434";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-10-25T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-434";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:15:"Klonan, Twinsen";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:4460:"<p>
  Hello,<br/>
  You may have noticed we launched Space Age earlier this week :)
</p>

<hr>
<h3>
  Space Age reception
</h3>

<p>
  The reaction to the Space Age launch has rocketed past our wildest expectations.
  We had almost 100,000 concurrent players, and as of writing this post, we have passed 400,000 copies sold!
</p>

<p>
  Needless to say, from all of us here, thank you. Factorio would not be possible without the support of our fans and players. We are working hard to address all the feedback and issues you've reported to us on the forums, Reddit, and Discord.
</p>

<hr>
<h3>Galaxy of Fame</h3>

<p>
  This week, kovarex, Lucas and Vinzenz finished off our last little surprise for Space Age, the <strong><a href="https://factorio.com/galaxy">Galaxy of Fame</a></strong>.
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom: 20px;">
  <a href="https://factorio.com/galaxy" target="_blank">
    <img src="https://cdn.factorio.com/assets/blog-sync/fff-434-galaxy-of-fame.png">
  </a>
</p>

<p>
  When players finish Space Age and reach interstellar space, they will be invited to upload a snapshot of their game to the Galaxy of Fame.
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom: 20px;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-434-galaxy-upload.png">
</p>

<p>
  Once uploaded you can find your star in the Galaxy of Fame, where you can see details such as:
  <ul>
    <li>General map info - Title, comment, time played, etc.</li>
    <li>Chart view of planets and platforms.</li>
    <li>Item, Energy and Kill statistics.</li>
  </ul>
</p>

<p style="text-align: center; margin:auto; margin-top:20px; margin-bottom: 20px;">
  <a href="https://factorio.com/galaxy/Iron%20I:%20Alpha1-1.A1W4/platforms" target="_blank">
    <img src="https://cdn.factorio.com/assets/blog-sync/fff-434-galaxy-platform.png">
  </a>
</p>

<p>
  You can browse around and see other peoples factories and see how they work. You might notice that some of the maps look a bit suspicious, well at this time we aren't blocking saves that use cheats/commands/editor, as we don't want to be overly restrictive, but we will add some filtering options soon.
</p>

<p>
  There is only a single Galaxy of Fame entry per player account, uploading a new one will overwrite the previous one, and the option will be in the in-game menu after completing Space Age. Since the feature is quite new there are some other details worth sharing:
  <ul>
    <li>The location, size, color and shape of each star is random and assigned at the first upload.</li>
    <li>Zooming issues on mobile are known and will be fixed soon.</li>
    <li>Error 100 when uploading is known, in most cases the upload actually succeeded.</li>
    <li>We support uploading modded saves.</li>
    <li>Galaxy of Fame will receive more updates in the future.</li>
  </ul>
</p>

<p>
  As you can see, there aren't that many stars lighting up the Galaxy of Fame at the moment, but as more people play and finish, we hope to see it fill out to a full bright sparkling Galaxy.
</p>

<hr>
<h3>Factorio 2.0 and Nintendo Switch<author>Twinsen</author></h3>

<p>
  Since the Space Age launch on Monday, we've had a few questions about our plans regarding support for the Nintendo Switch Platform.
</p>

<h4>Factorio Space Age is not coming to Nintendo Switch.</h4>

<p>
  Space Age factories are much bigger compared to vanilla, as they span 5 planets. There's simply not enough RAM to fit them and not enough CPU power to run all of it at 60 UPS. Not to mention all the new sprites that were added that will not fit in VRAM.
</p>

<h4>Factorio 2.0 is coming to Nintendo Switch.</h4>

<p>
  I am currently working on bringing the 2.0 free update to Switch and making sure it's optimized well enough. Since the release process on consoles takes a long time, I prefer to not to give you a conservative release date, and instead just release it as soon as possible, when it's ready. My estimate is that the update will come to Nintendo Switch in 1-2 months.
</p>

<p>
  Meanwhile I recommend you finish your current playthrough if you are almost finishing your save game, as the 2.0 update comes with some updates to rails, fluids, recipes and technologies that might break parts of your base and on Switch you will not be able to downgrade once you update.
</p>

<hr>
<p>
  As always, let us know what you think at the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Factorio: Space Age is here!";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:57:"https://factorio.com/blog/post/factorio-space-age-release";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-10-21T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:57:"https://factorio.com/blog/post/factorio-space-age-release";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:13:"Factorio team";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:3677:"

<div class="grid-container">

  <div class="shadow iframe-container">
    <a href="https://factorio.com/buy-space-age", target="_blank">
      <img src="https://cdn.factorio.com/assets/blog-sync/factorio-space-age-release-cover.png" />
    </a>
  </div>

  <div class="shadow iframe-container">
    <iframe src="https://www.youtube.com/embed/OiczN-8QKDA" title="Factorio: Space age - Trailer"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
  </div>
</div>

<p>
  <strong>Factorio: Space Age</strong> continues the player's journey after launching rockets into space.
  <br/>
  Discover new worlds with unique challenges, exploit their novel resources for advanced technological gains, and manage
  your fleet of interplanetary space platforms.
</p>

<p>
  For more information about what comes with the expansion, check out our <strong><a href="https://factorio.com/game/content-space-age">Space Age content</a></strong> page.
</p>

<hr>

<h3>
  Space Age now available
</h3>

<p>
  Factorio: Space Age is now available for purchase, you can buy it at any of the following official places:
  <ul>
    <li><a href="https://factorio.com/buy-space-age">Our website</a></li>
    <li><a href="https://store.steampowered.com/app/645390/Factorio_Space_Age/">Steam</a></li>
    <li><a href="https://www.gog.com/en/game/factorio_space_age">GOG.com</a></li>
    <li><a href="https://www.humblebundle.com/store/factorio-space-age">Humble Store</a></li>
  </ul>
</p>

<p>
  Purchases from our website or GOG can redeem a free expansion Steam key.
  <br/>If you purchase on Steam, you can link your Steam ID to our website to access the non-Steam downloads.
</p>

<p>
  The Factorio: Space age expansion has changed the game progression and pacing. If you plan to play Space Age, it is recommended to start playing
  with Space Age directly, even when its your first time, instead of playing the base game and adding Space age later.
</p>

<hr>
<h3>2.0 release</h3>

<p>
  The release of the Space Age expansion also coincides with the release of the free Factorio 2.0 update.
</p>

<p>
  Version 2.0 has a wide range of game changes, optimizations and improvements, which we detailed <a href="https://factorio.com/blog/post/fff-418#2-0">here</a>.
</p>

<hr>
<h3>Feedback welcome</h3>

<p>
  This is a very large and fresh release, so if you have any suggestions or encounter any issues please report them on our <a href="https://forums.factorio.com/">forum</a>:
  <ul>
    <li><a href="https://forums.factorio.com/viewforum.php?f=6">Ideas and suggestions</a></li>
    <li><a href="https://forums.factorio.com/viewforum.php?f=49">Technical help</a></li>
    <li><a href="https://forums.factorio.com/viewforum.php?f=7">Bug reports</a></li>
  </ul>
</p>

<hr>

<p>
  We sincerely hope you will enjoy the result of our work for the last 4 years. Factorio: Space Age and 2.0 are the biggest projects we've undertaken so far, and it wouldn't be possible without the support of our fans and players. From all of us, thank you.
</p>

<p>
  As always, let us know what you think at the usual places.
</p>

<style>
.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(100%, 544px), 1fr));
  padding: 8px;
  gap: 16px;
}

.iframe-container {
  position: relative;
  width: 100%;
  margin-top: 0px;
  margin-bottom: 20px;
  padding-bottom: 56.25%; /* 16:9 aspect ratio */
  height: 0;
  overflow: hidden;
}

.iframe-container iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
</style>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Friday Facts #433 - Liftoff Initiated";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-433";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-10-18T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-433";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:22:"Factorio team, v453000";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:4996:"<p>
  Hello,<br/>
  3 days to go!
</p>

<hr/>
<h3>
  Factorio: Space Age Trailer
</h3>

<p>
  With a new Expansion of course comes a new trailer. After many weeks of work, fine-tuning, and polishing, Albert (with
  help from Vaclav, and the script written by Earendel) has finished the launch trailer for the Space Age expansion:
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <iframe width="1120" height="630" src="https://www.youtube.com/embed/OiczN-8QKDA"
    title="Factorio: Space age - Trailer" class="shadow"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</p>

<p>
  The result speaks for itself, and there are some details you might notice. For instance the rockets now have fixtures
  carrying the cargo pods, and we have animations for cargo pods landing on a planets and at landing pads.
</p>

<p>
  Or perhaps you noticed the player running around with some of the new late game technologies...
</p>

<hr/>

<h3>Mech armor<author>v453000</author></h3>

<p>
  From the very first prototype of Space Age, we had a new tier of armor in it. The only difference was a 20% larger equipment grid over Power armor Mk2, but along with quality this felt well above adequate already.
</p>

<p>
  As Earendel and Albert were developing the concept, the design settled on the idea that the player is locking themselves in a metal sarcophagus, transcending humanity to become the perfect Factorio machine.
</p>

<p>
  We have been thinking what kind of special features could the new piece of armor have and the most obvious and convenient one seemed to be the ability to fly, especially as the <a href="https://mods.factorio.com/mod/jetpack">Jetpack</a> from <a href="https://mods.factorio.com/mod/jetpack">Space Exploration</a> is quite convenient, though we'd want to do it a bit differently...
</p>

<p>
  Some ideas would be:
  <ul>
    <li>We didn't want to add a button to toggle flying.</li>
    <li>We would prefer precise movements unlike the spidertron bobbing and rubberbanding.</li>
  </ul>
</p>

<p>
  Therefore, the flying would just happen automatically whenever you would be about to hit any obstacle.
</p>

<p>
  This raises some immediate questions, like do we have separate speeds for walking and flying and with it exoskeleton equipment and jetpack equipment? We decided against adding jetpack equipment, have just one movement speed value, and have exoskeleton equipment effectively make you fly faster. Which may sound strange, but as the flying happens automatically, it would be very annoying to have one of the speeds slower.
</p>

<p>
  Being part of the armor also means that we can show the flying capability in the armor graphics.
</p>


<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-433-mech.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <br><i>Graphics by Jerzy</i>
</p>

<p>
  As you can see, you not only take flight if you were to hit an obstacle, but also when an obstacle is about to hit you.
</p>

<p>
  The mech armor went from a minor upgrade to a game-changer. Being able to move freely makes basic navigation in the game feel incredible, and as a secondary effect it means you feel much better about stacking many legendary exoskeletons in your armor because it doesn't make you run into obstacles all the time.
</p>

<p>
  It doesn't require fuel, or electricity from your equipment grid, it just works whenever it would be useful... almost. The combat abilities were in fact so powerful that we had to give the Demolishers a smoke cloud which prevents you from flying, as otherwise fighting them felt like a joke.
</p>

<p>
  If you ever feel like missing construction robots when starting a new game, this feeling just got a lot worse. The mech armor also makes you forget to fear walking over rails, which can be a hazardous habit.
</p>

<p>
  From the perspective of visuals and concept, we wanted the mech armor to be the player becoming one with the machine and in part one of the stronger symbols of Space Age, and now the mechanics match that.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Mech armor line art" title="Mech armor line art"
    src="https://cdn.factorio.com/assets/blog-sync/fff-433-mech-line-art.png" />
  <i>Line art version of the concept by Earendel.</i>
</p>

<hr>

<h3>Conclusion</h3>

<p>
  Factorio: Space Age has been almost 4 years in development, and now the finish line is just ahead of us.
  We look forward to seeing you all enjoying Space Age on Monday, and don't forget to put shield equipment in your mech suit, trains aren't the only enemy!
</p>

<p>
  Let us know if you are ready to become one with the machine at the usual places.
</p>

";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Friday Facts #432 - Aquilo";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-432";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-10-11T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-432";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"Earendel";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:14556:"<p>
  Hello,<br/>
  It's time to reveal the last planet. So. Warning: Spoilers ahead.
</p>

<hr/>

<h3>
  Welcome to Aquilo
</h3>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Aquilo planet icon"
    title="Aquilo planet icon"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-aquilo-icon.png"
    style="box-shadow:none;width:256px;height:256px;"
  />
</p>

<p>
  It's day, but stars still twinkle in the dark sky. You count the planet's sun among the stars, larger and brighter than the others, but still so dim you can barely feel its warmth at all. A howling wind chills you to the bone and gently rocks the iceberg you are sitting on.
</p>

<p>
  This planet has no land. It's an ocean world of liquid ammonia. One continuous ocean covers the entire planet and it's at least 200km deep.
</p>

<p>
  The best landing spot you could find was this large iceberg. The sheet of ice is only a few meters thick and seems to contain a lot of trapped air, but frozen water is a very solid material as long as it stays cold. It's able to support a landing pad, so that's good enough.
</p>

<p>
  You sit on the edge of the ice watching the snow fall. It gracefully deposits itself on your frozen machines. Assembling machines, chemical plants, transport belts, and inserters, all frozen in place unable to move.
</p>

<p>
  In the distance you spot columns of teal gas, fluorine bubbling up from the depths. It's one of the resources you're here for, but out of reach for now.
</p>

<p>
  There seems to be plenty of oil, most likely from microorganisms in the core. Making fuel on site shouldn't be a problem as soon as the refinery is unfrozen.
</p>

<p>
  You take the time to plan your next moves: collecting ice from the surrounding ocean to extend the platform, heating towers to warm your buildings, heat pipes to move the heat around, and concrete to make sure that the heat doesn't melt the ice.
</p>

<p>
  The thought of running heat pipes through all your designs is starting to make your head spin.
</p>

<p>
  But it's okay, don't panic. The one thing you do have on this planet... is time.
</p>

<p>
  A flurry of shooting stars distracts you for a moment. You can't help but wonder if they are little meteorites burning up in the atmosphere, or the remaining parts of the space platform that dropped you here. The space platform barely made it to this planet and never made it out of orbit. You got out just in time. Hopefully a replacement platform will be here soon... if it survives.
</p>

<p>
  There's a clunking sound behind you as the landing pad opens its hatch. You turn to see a formation of cargo pods descend through the atmosphere. It's time to build.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-thaw.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Terrain graphics by Fearghall and Earendel.</i>
</p>

<hr/>

<h3>
  A liquid planet
</h3>

<p>
  Aquilo doesn't have any land. It has a few icebergs floating around, but the building space is very restricted.
</p>

<p>
  If you use an offshore pump in the ammoniacal ocean you don't get water, you get mostly liquid ammonia but with some ice particles floating in it. You can separate these in a chemical plant. These substances have a variety of uses, but among them is the ability to make Ice platform.
</p>

<p>
  Ice platform allows you to extend the iceberg and extend your build area. Making ice platform can be a slow process so it's good to scale this process while you have spare energy and heat.
</p>

<hr/>

<h3>
  Freezing and heating
</h3>

<p>
  Heat is the next big mechanic and it's a wonderful twist to the way that you build. Most things on Aquilo freeze if they are not heated.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Frozen machines" title="Frozen machines"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-frozen.png" />
  <i>A collection of frozen machines. Frozen effects are all hand painted by me (Earendel).
    <br/>It's better and faster to paint snow in 2D than to add a snow layer in 3D, especially considering most of the original graphics have a lot of hand-painted post-production.</i>
</p>

<p>
  Heat is generated by a heating tower, which burns chemical fuels that can be made locally, or the nuclear reactor that requires imports from Nauvis. The heating tower is interesting as a burner because it's more like the reactor, it continues to consume fuel even at max temperature. As well as heating, this can be a good way to get rid of anything burnable, which means it can also be very useful on Gleba.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Heating tower evolution" title="Heating tower evolution"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-heating-tower.png" />
  <i>Heating tower from line art to concept art (inactive and active) by Earendel, to the final graphics by Jerzy.</i>
</p>

<p>
  Both the heating tower and nuclear reactor are heat sources. They spread heat to adjacent entities, but they only need to get the entity up to 30°C for the entity to thaw. This means that in some places like outposts, going for higher temperatures is a waste, so that is one of the reasons we added the ability to read the temperature of heat sources and control them with circuits (<a href="https://factorio.com/blog/post/fff-428">FFF-428</a>).
</p>

<p>
  Heat sources only being able to warm adjacent things that touch them is very limiting. Instead you use heat pipes to move the heat around to all the entities adjacent to connected heat pipes (including diagonally). Every entity that needs heat also consumes heat. The effect is minor per entity but can result in a lot of heat loss over long distances, so sometimes you want a hotter heat source so that the heat can travel further.
</p>

<p>
  Heat pipes and heated buildings would melt the ice, so to protect the ice that keeps you floating you can place concrete (or refined concrete) as an insulator. In practice this just means that most entities can't be placed directly on to ice, we don't actually turn the ice tiles into ocean... anymore. That used to be a mechanic, but it was too annoying to deal with when you try to build in an already heated area.
</p>

<p>
  Heat pipes can't go underground (or under ice) so you'll need to route the belts and pipes around them while building. Often this means a machine will need access to belts, pipes and heat, but all the belts and pipes also need access to heat, and this can lead to some nice little puzzles and some very interesting builds.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline loop class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-base.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
</p>

<hr/>

<h3>
  Resources
</h3>

<p>
  Aquilo is notably lacking in basic resources. On the other planets you can land with nothing and build your way to another rocket. On Aquilo if you land with nothing then you can do nothing.
</p>

<p>
  Ok, but what <i>DO</i> you have?
</p>

<p>
  Your resources are:
  <ul>
    <li>Solar (1%).</li>
    <li>Ammoniacal solution from the ocean directly.</li>
    <li>Crude oil from resource nodes.</li>
    <li>Lithium brine from resource nodes</li>
    <li>Fluorine gas from resource nodes.</li>
  </ul>
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted playsinline loop class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-resources.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>New resource graphics by Jerzy.</i>
</p>

<p>
  Solar output is truly pathetic, only 1% of Nauvis. You need some solar panels to kickstart your first few machines so efficiency modules go a long way to speeding up that process.
</p>

<p>
  Ammoniacal solution can be gained via an offshore pump. With a powered heated chemical plant you can split it to ice and ammonia.
</p>

<p>
  Ice can be melted for water which is needed for any power beyond the pathetic solar. It's also useful to extend your iceberg.
</p>

<p>
  Ammonia can be used with crude oil to make solid fuel, or combined with solid fuel to make rocket fuel.
</p>

<p>
  Crude oil can be collected with a pumpjack in a few places where it floats up from the ocean depths. It can be combined with ammonia to make fuel, or refined the usual way which can be a useful sink for excess ice and water while also making fuel. Also, note that it's an animated resource now, even on Nauvis.
</p>

<p>
  Lithium brine floats up to the surface in some spots and requires a pumpjack. It's used to make lithium, which you'll need for a variety of things including the planet's science pack.
</p>

<p>
  Fluorine gas bubbles up in some places and this also requires a pumpjack. Fluorine is used to make coolant which is an essential part of this planet's industry: Cryogenics. Coolant is used in a few things but initially it's only used for Aquilo's science pack, the Cryogenic science pack, which is made in a...
</p>

<hr/>

<h3>
  Cryogenic plant
</h3>

<p style="text-align: center; margin: 20px auto 20px auto;"></p>
<video controls playsinline class="shadow">
  <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-cryogenic-showcase.mp4" type='video/mp4' />
  Mp4 playback not supported on your device.
</video>
</p>

<p>
  The Cryogenic plant is a powerful 5x5 structure with a base crafting speed of 2. It doesn't have base productivity because it deals with a lot of looping recipes, but it does have <b>8</b> module slots, so extra productivity modules can be used for the recipes that support it.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Cryogenic plant early sketches" title="Cryogenic plant early sketches"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-cryogenics-early-concepts.png" />
  <i>Early Cryogenic plant sketches by Earendel. Albert liked the bottom 2 designs so I made something based on those. Some elements of the top 3 got reused in other designs.</i>
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Cryogenic plant line art and concept before final paint colour was chosen" title="Cryogenic plant line art and concept before final paint colour was chosen"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-cryogenics-concept.png" />
  <i>Cryogenic plant line art and concept before final pale turquoise paint colour was chosen.</i>
</p>

<p>
  While the structure can use some chemical plant recipes, it is mainly focussed on recipes that need cold temperatures and a lot of precision. Some examples are: coolant, coolant cooling, the cryogenic science pack, fusion power cells, quantum processors, and some other late-game items.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline loop class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-cryogenics.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Final graphics by Jerzy, sounds by Ian.</i>
</p>

<p>
  Quantum processors are like the final tier of circuit, they need something from each of the new planets. They are needed to make the fusion reactors that you saw in <a href="https://factorio.com/blog/post/fff-420">FFF-420</a> (Cryogenic plants are the hidden structures in that post). Quantum processors are also needed to make the final turret in the game which is also unlocked on Aquilo: The Railgun.
</p>

<hr/>

<h3>
  Railgun turret
</h3>

<p style="text-align: center; margin: 20px auto 20px auto;"></p>
  <video controls playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-railgun-showcase.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
</p>

<p>
  The railgun turret requires both ammo and electricity to function. It has a range of 40 and the damage... well it starts at 10k.
  <br/>It damages everything in a continuous line, so be careful not to stand on the wrong side of it.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Railgun concept" title="Railgun concept"
    src="https://cdn.factorio.com/assets/blog-sync/fff-432-railgun-concept.png" />
  <i>Railgun line art and concept by Earendel. There are pipe connections in the design because it was intended to a be a turret that requires cooling to function.</i>
</p>

<p>
  This turret has a 3x5 base. It has a fixed direction like a flamethrower turret but the attack cone is narrower than 90 degrees.
  <br/>If you could only build in 4 directions this would create blind spots, so you can build railgun turrets in 8 directions.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline loop class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-432-railgun.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Graphics by Jarosław, sounds by Ian.</i>
</p>

<p>
  There's also a handheld version that is very effective against Demolishers (<a href="https://factorio.com/blog/post/fff-429">FFF-429</a>), but that's not the main use for the turret version.
  <br/>
  What do you need the turret for? I'll let you speculate.
</p>

<hr/>

<h3>
  Conclusion
</h3>

<p>
  Aquilo is a challenging but very unique planet. After spending a few hours getting absorbed into Aquilo's unique building patterns, it feels really weird going back to any of the other planets. By comparison everything else suddenly looks so simple. It's a feeling that struck me after playing on my very first Aquilo gameplay prototype, but the same feeling hits me after every playtesting LAN we've done too.
</p>

<p>
  It's quite easy to accidentally under power your base, which can lead to a lack of heat, and subsequently freeze half your base. When this happens to you, I invite you to turn off Alt mode and appreciate the view. The frozen factory isn't a sight you get often, so enjoy the moment.
</p>

<hr/>

<p>
  I know you're getting unreasonably excited for the release of Space Age, but as always, keep your cool and comment in the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Friday Facts #431 - Gleba & Captivity";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-431";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-10-04T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-431";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:7:"V453000";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:10930:"<p>
  Hello,<br/>
  It's time to speak about more Gleba. Some changes, and also something new...
</p>

<hr>
<h3>The Gleba problems</h3>

<p>
  In the last few months we have been thinking about how to improve Gleba. There has always been this fundamental problem with a biological-oriented planet - other things you produce in the game tend to not be organic so it doesn't quite fit as easily as a planet based on making more Iron or more electronic circuits.
</p>

<p>
  <ul>
    <li>It's difficult to integrate the biological production chains into the rest of the traditional factory, as it's mostly metals there.</li>
    <li>Finding useful things to unlock is difficult, especially compared to the metal and electronics based producers like Foundry and Electromagnetic plant.</li>
  </ul>
</p>

<p>
  And during the LAN party we had about a month ago, these problems were only confirmed plus we've realized many more issues in other areas. And seeing people interact with Gleba put a lot more urgency on finding solutions.
</p>

<p>
  There is one change in particular which is significant and outlines our approach fairly well:
</p>

<hr>
<h3>Bacteria cultivation</h3>

<p>
  One of the key issues on Gleba was that you'd be building two factories - one for agriculture which would eventually output the science pack, and the usual Iron/Copper one which craft the factory and rocket parts.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Gleba crafting tree" title="Gleba crafting tree"
    src="https://cdn.factorio.com/assets/blog-sync/fff-431-split-crafting-trees.png"
    style="box-shadow:none;width:840px"
    />
  <br/>
  <i>The normal crafting tree was completely severed from the organic one.</i>
</p>

<p>
  This was especially problematic as the agriculture factory didn't contribute in any way until you'd have delivered the science packs to your labs. And as we've learned, it is preferable to attempt to have each step you take feel rewarding and immediately useful.
</p>

<p>
  For a very long time we had wanted to add a way to create Iron and Copper ore via agriculture but we weren't quite sure how. Getting factory-grade amounts of minerals from plants felt just too unbelievable.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Gleba stromatolites" title="Gleba stromatolites"
    src="https://cdn.factorio.com/assets/blog-sync/fff-431-stromatolites.png" />
  <i>Stromatolites waiting to be mined.</i>
</p>

<p>
  The idea we've implemented is that some bacteria can be found in the swamps where agricultural plants grow.
  <ul>
    <li>Stromatolites are rock-like objects which have formed there over many years, acting as accumulated bacteria and ore for you to quickly obtain at the start.</li>
    <li>Yumako/Jellynut can be processed with a small chance to obtain Copper/Iron bacteria respectively, reinforcing the feeling that there really isn't much in it.</li>
    <li>Soon enough you unlock the Biochamber, and as you are the ingenuous engineer, you replicate and grow the bacteria in it to truly industrial amounts.</li>
  </ul>
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-431-bacteria-cultivation.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Cultivating bacteria which turn into iron and copper ore.</i>
</p>

<p>
  This results in the agriculture chain being immediately useful for creating Iron and Copper ore which you can use for building more of the Gleba factory, and once you've got enough of that you can "just" switch it for full-on agricultural science production. As a result the steps you're taking are much more useful and less tedious.
</p>

<p>
  A beautiful little detail is that the bacteria spoils directly into ore, so it's a place where spoiling is helping you, for once.
</p>

<hr>
<h3>The reward</h3>

<p>
  It's nice when an activity is fun, but it's much better when it's also meaningful and leads somewhere. Obtaining powerful factory improvements is how we like to be motivated in Factorio.
</p>

<p>
  There's a handful of improvements to be unlocked by the agricultural science pack like the stack inserter, spidertron with rocket turret, or more efficient recipes for space platforms, but there is one specific new technology...
</p>

<h4>Biter captivity</h4>

<p>
  Bioflux is a combination of processed Yumako and Jellynut. It's crafted on Gleba and it can be used to capture biter spawners on Nauvis.
</p>

<p>
  A capture robot loaded with doses of Bioflux solution and is shot from a rocket launcher. The capture robot latches onto a spawner and soon enough the spawner is rendered harmless and docile.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-431-biter-capture.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>(Capture time reduced for demonstration)</i>
</p>

<p>
  Once captured, the spawner no longer hatches biters, and biter eggs can be collected with inserters for further processing or disposal.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-431-biter-eggs.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
</p>

<p>
  As long as you keep feeding it Bioflux in frequent intervals, the spawner will remain that way. Otherwise it 'goes rogue' and returns back to its natural form, spawning hostile biters again.
</p>

<p>
  Biter eggs can be immediately used for improvements to agriculture, crafting Productivity module 3, or because we felt like the Gleba unlocks aren't motivating us enough...
</p>

<h4>A new laboratory</h4>

<p>
  Combined with some other items, the egg can be grown and hatched into a mutated laboratory.
</p>

<p>
  As you will be able to read down below, the work on the graphics has only just started, but here you can see a work in progress version of it from Earendel and Jerzy:
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-431-biter-lab-wip.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Work in progress graphics of the new Biolab. Subject to change.</i>
</p>

<p>
  The Biolab can be used only on Nauvis as the organism inside would die on other planets, but in turn it only consumes <strong>half</strong> the amount of science packs for any given research. It can process all science packs just like the normal lab. It also has 4 slots for modules.
</p>

<p>
  This means it's a powerful unlock and obtaining it early on should feel quite rewarding. Whether we finally broke the imbalance of Vulcanus and Fulgora being clearly superior to Gleba, we will see - but at least the difference is much, much less stark now.
</p>

<hr>
<h3>A bit of backstory</h3>

<p>
  You may notice that the Biolab above looks awfully similar like the captive biter spawner. Until very recently, that's pretty much what it was.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Captivity concept art" title="Captivity concept art"
    src="https://cdn.factorio.com/assets/blog-sync/fff-431-captive-spawner-concept-art.png" />
  <i>Concept art from Earendel.</i>
</p>

<p>
  We had an entity in the game called Synthetic biter spawner. We added it because we felt like it would be nice to be able to just place your own spawners anywhere in order to scale up biter egg production in the typical Factorio fashion of rows on rows of machines.
</p>

<p>
  As we were trying to simplify some things and find rewards for Gleba, the Synthetic biter spawner started to lose its significance - and at the same time we felt like some powerful Gleba unlock is missing.
</p>

<p>
  At first we changed it to be a more universal crafter, giving it the ability to craft Nauvis science packs, solid fuel and rocket fuel, all with a productivity bonus similar to the foundry and electromagnetic plant. The recipes felt a bit forced and the bonus wasn't that great compared to its rivals, but it was something.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-431-synthetic-spawner.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>The discarded synthetic biter spawner in its science pack crafter form.</i>
</p>

<p>
  Along the way we started dreaming about turning it into a full-on laboratory...
</p>

<p>
  The graphics however would be far from a proper visual solution so we've put our heads together with Albert and Earendel and we decided to make a last minute adjustment making a proper semi-organic Biolab which would include more of the typical lab structure.
</p>

<p>
  The finished version will be in Space Age on release day. :)
</p>

<p>
  Because this means we've discarded the synthetic biter spawner, we have added a way to craft the captive biter spawners which you could then place anywhere on Nauvis you like, so you can still scale their production up conveniently. This technology is unlocked at the last planet so it won't get trivialized too early, and the captive spawners you make will have their own quirks...
</p>

<hr/>

<h3>Conclusion</h3>

<p>
  The idea of capturing biters has been in our heads for a long time, and in Space Age since the very first serious brainstorming going into the initial prototype.
</p>

<p>
  Biter eggs also make use of the spoiling mechanic as they spoil into live biters. The biter based lab has had many uses before and we believe now it has found its true form.
</p>

<p>
  Over the last month we've improved the experience on Gleba in many other ways. Changing map generation, cleaning up some graphics, tweaking many if not all recipes, making the enemies less crazy, adding new ways to obtain resources and making the rewards a lot more appealing. A lot of the changes are too detailed for the context of FFFs, but we'd like to express our deep gratitude for the feedback from our testers, which has been immensely helpful.
</p>

<p>
  Speaking of testers, please be aware that the content/press embargo ends on the 14th October, so if you want to avoid spoilers please keep it in mind as there are no restrictions on what they can show.
</p>

<hr/>

<p>
  Captivate us with your least spoiled ideas in the usual places, and don't argue whether Bioflux is drugs or food, it's obviously...
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Friday Facts #430 - Drowning in Fluids";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-430";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-09-27T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-430";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"raiguard";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:8699:"<p>
  Hello,<br/>
  Today we once again dive head-first into the world of fluids.
</p>

<hr/>
<h3>Since last time</h3>

<p>
  Back in June, the very same week that we revealed Fluids 2.0 (<a href="https://factorio.com/blog/post/fff-416">FFF-416</a>), we were undergoing an in-office LAN party to test the game.
  As we played, it became apparent that the new system was a little bit <i>too</i> easy.
  Our Nauvis base had ridiculously huge pipelines that snaked all over the place with little to no thought or structure behind them.
  We did use some fluid trains to connect particularly distant outposts, but even this was mostly out of habit; a pipeline would have been superior.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Pipe visualization" title="Pipe visualization"
    src="https://cdn.factorio.com/assets/blog-sync/fff-430-op-omni-pipe.png" />
  <i>Our infinite throughput continent spanning pipelines.</i>
</p>

<p>
  These "omni-pipes" created a situation where pumps never increased throughput, they only ever restricted it.
  This was counter-intuitive, but also meant that you just never used pumps in the network unless it was to disable a specific section with a circuit connection.
  Additionally, steering people towards using long pipes everywhere turned out to be a huge trap for fluid mixing, as the chances of accidentally connecting two different pipelines increased significantly.
  If this happened from bots constructing something while you were on a different planet, then good luck finding the single incorrectly placed pipe in such a huge search area.
</p>

<p>It was time to search for solutions.</p>

<hr/>
<h3>The importance of visual feedback</h3>

<p>
  Transport belts are fun to play with because they are extremely visual and interactive.
  You can see exactly where items are coming in, where they are going, and where the bottlenecks are, all at a glance.
  By contrast, pipes are almost entirely opaque, and the tiny windows are not enough to give you sufficient visual feedback.
  This is part of the reason why we went for a "no-thought-required" solution to fluid flow.
</p>

<p>
  If we are to add a limitation to the fluid system, then that limitation needs to be extremely easy, obvious, and interactive.
  After butting heads for a while, this is what we came up with.
</p>

<hr/>
<h3>Pipeline extents</h3>

<p>
  Pipelines are constrained to a 250x250 tile area, and exceeding this limit will cause all flow through the pipeline to cease.
  You can split a pipeline using a pump.
  The game displays a visualization to show that the pipe is broken and will generate an alert at the location(s) where you need to place pumps.
  This makes the problem easy to diagnose and easy to fix.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline muted class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-430-overextended-demo.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
</p>

<p>
  When holding a fluid-related entity, the game displays connection visualizations on visible pipelines that are tinted to match the fluid inside.
  You can also visualize an individual pipeline by hovering over it with your mouse, in which case you will also see arrows telling you how large the pipeline is.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img alt="Pipe visualization" title="Pipe visualization"
    src="https://cdn.factorio.com/assets/blog-sync/fff-430-pipeline-visualization.png"/>
    <i>This might look familiar to users of my <a href="https://mods.factorio.com/mod/PipeVisualizer">Pipe Visualizer</a> mod.</i>
</p>

<p>
  As the final cherry on top, you can also enable a toggle to see pipelines on the map!
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Pipeline map visualization"
    title="Pipeline map visualization"
    src="https://cdn.factorio.com/assets/blog-sync/fff-430-pipeline-map-visualization.png"/>
</p>

<p>
  When you are building an individual setup, you still don't have to worry that much about pipe throughput - you connect the pipes and it "just works".
  However, connecting your setups together requires slightly more thought, as now you actually have to worry about directionality and the throughput of your pumping stations.
  The pump-isolated sections also make it much less of a disaster if you accidentally mix fluids.
</p>

<hr />
<h3>Balance tweaks</h3>

<p>
  In addition to the extents, we have made a few tweaks to the balance of the fluid components:
  <ul>
    <li>Pumps have been nerfed to 1200/s (10x decrease), but this can be increased with quality.</li>
    <li>Fluid wagons have been buffed to 50,000 (2x increase).</li>
    <li>1 Water expands to 10 Steam in boilers and heat exchangers.</li>
  </ul>
</p>

<p>
  With three pumps per wagon that is 3600/s per fluid wagon, or about 14 seconds to fully pump out a wagon's contents.
  This is much more reasonable than the previous <i>0.7 seconds</i> you could get in 1.1.
  This is still plenty fast for vanilla megabases, and in Space Age you can increase pump quality if you need even more throughput to feed your legendary foundries.
</p>

<p>
  The Water to Steam ratio change makes it more possible to supply power or nuclear setups using fluid wagons or even water barrels. The change doesn't affect the power consumption/output of any machines, they just consume 10x less water to make the same amount of Steam.
</p>

<p>
  The extents, combined with these changes, have made the choice between fluid trains and large pipelines much more varied.
  Omni-pipes are no longer the one true solution to everything - you can still build them, but they require circuits and are far less magical.
  Will you choose the near-instant transportation of a pipeline, or the enhanced flexibility of a fluid train?
</p>

<hr/>
<h3>Algorithm tweaks</h3>

<p>
  There have been a few changes to the algorithm since it was first introduced:
  <ul>
    <li>Output rate used to be unlimited, but it is now inversely proportional to the fullness ratio of the sink.</li>
    <li>The special exception for storage tank flow has been removed.</li>
    <li>The input rate limit used to only apply when pulling from a pipeline, but now, it and the new output rate limit are applied to every fluid flow operation, with the exception of fluid wagons.</li>
  </ul>
</p>

<p>
  Something that I failed to adequately explain before is that while there is no limitation on the total flow through a pipeline in a given tick, there <i>is</i> a hardcoded limit of 100 fluid per flow operation (6000/s).
  This limit is multiplied with the fullness ratios of the source and sink to produce the actual flow value, and this proportionality is what allows machines to share fluid more evenly.
  Machines that update first will still get the greatest share of fluid, but the difference is much more subtle than it was in 1.1, where the order that you build each pipe entity would greatly affect the flow.
</p>

<p>
  The output rate limit is particularly interesting because it makes the fluids feel much more like fluids again.
  Before, a pump could just push fluid in at the max 6000/s rate until the pipeline was 100% full, but now it slows down as the pipeline fills.
  For each pipeline, there is a certain fullness ratio where the output and input rates equalize, and the level of fluid in the pipe oscillates around this point as the machines do their work.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-430-steady-state.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Pipe fullness shown using the debug view.</i>
</p>

<hr/>
<h3>Never quite done</h3>

<p>
  The pipeline extents system and balance tweaks were in place for the LAN party, and the reception to them was pretty positive!
  It has been a long, <i>long</i> journey to get here, and there is still so much to do and so much to tell you about.
  What you see is the system as it will be when 2.0 launches, but I will continue tweaking and iterating on it in the future.
</p>

<p>
  I would also like to take a moment to thank everybody for their exhaustive feedback on the previous post.
  Rest assured, I read every single comment, even if I don't respond to most of them.
  Your passion is a huge part of what makes Factorio such a great game.
</p>

<hr/>
<p>
  As always, pressurize your thoughts and pump them into the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Friday Facts #429 - Vulcanus Demolisher Enemies";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-429";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-09-20T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-429";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:8:"Earendel";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:28733:"<p>
  Hello,<br/>
  Welcome back to Vulcanus. It's been a while.
</p>

<hr/>

<p>
  You place your new prototype big mining drills, the pinnacle of resource extraction technology, on the closest tungsten deposit to your fledging Vulcanus factory. A few power poles later and they are happily mining away providing a new consistent source of valuable tungsten. A rail ramp and station just about fit in the area too, but without any rail supports in your inventory that line isn't going anywhere soon. Transport belt will have to do for now.
</p>

<p>
  As you're returning to the main factory, placing transport belt to connect this new resource to your base, you feel a trembling from the ground. Big mining drills make a lot of vibrations, but this is on a whole other level. Something else must be going on.
</p>

<p>
  You head back towards the mining site. Across a river of lava you see a truly gargantuan creature snake its way around a volcano. This formidable beast most closely resembles a centipede or millipede but is larger than a train.
</p>

<p>
  As it moves forwards the ground at its face is broken apart leaving a trail of torn up rock and patchy lava. Trees, rocks, even cliffs are torn apart by its passage. Ash is flung into the air making an abrasive cloud that blankets its body and lingers long after it has moved on.
</p>

<p>
  The creature roars and speeds up. As it does so it starts shaking the ground harder. Rhythmic vibrations agitate a wide area around it kicking up a huge cloud of ash and destabilising the terrain.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video controls playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-outpost-destruction.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <br/><i><a href="https://youtu.be/gPVpBgc5xVk">Also available on YouTube in 4k.</a></i>
</p>

<p>
  The creature cruises over the lava river and demolishes your machines without even slowing. Your precious new mining drills that seemed so large and powerful just moments ago look like puny toys in the face of such an unfathomable beast.
</p>

<p>
  The Demolisher continues its path of destruction down the line of transport belt toward your base, but before getting there it slows to a crawl and turns back into the volcanic wastelands. This attack won't go unanswered. It's time for a fight.
</p>

<p>
  You pursue the Demolisher, an easy task given its thick glowing trail. Lava on either side of you forces you to cross through the trail to pursue the creature. The torn up terrain is hot, but there are enough cool rock sections to step across it. As you do, the lingering ash cloud around it obscures your vision and the abrasive particles interfere with your exoskeleton equipment.
</p>

<p>
  You catch sight of the body again, this time up close. The thickly armoured plates of each segment seem to give it good protection from heat, and probably many of your weapons. It hasn't reacted to you yet, perhaps it has not seen you, or perhaps it does not care.
</p>

<p>
  You move towards the Demolishers head and it still ignores you. The face appears to be a clear weak spot. It has no eyes and the skin still seems adapted for the heat, but the armour is much thinner around the jaws. Bracing yourself for a reaction, you shine your lasers at it's face, but nothing. It continues to patrol some path, as though you were nothing but a speck of dust on the wind.
</p>

<p>
  A rocket to the face would surely provoke it, but before testing that theory, you place a line of land mines to secure your retreat. There's an immediate reaction from the creature. It speeds up and turns towards you. Once again, rhythmic vibrations shake the terrain and generate a steadily expanding cloud of ash. The cloud quickly encompasses you. Obscured vision and snagged exoskeleton joints will limit your speed.
</p>

<p>
  You fire your submachine gun at the creature. Your piercing rounds cut into the Demolisher and do some damage, but by the time you reload a new magazine all the damage you dealt has healed back. You try again for a few moments inflicting some damage, but again, it seems to heal faster than you can deal damage.
</p>

<p>
  Vibrations coming from the creature seem to focus and amplify around you destabilising the ground even more. The crust is thin at the best of times and this isn't helping. A fissure starts to open up under your feet. You manage to dodge to the side as a volcanic eruption explodes in the area you stood a moment ago. Rock fragments, lava, and hot gases shred the area. You avoided the main blast, but just being close to the edge was enough to weaken your shields.
</p>

<p style="margin: 20px auto 20px auto;">
  <video controls playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-chase.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
</p>

<p>
  New fissures start to open up around you. These are easier to dodge now that you know to look for the fissure signs in the ground. Standing far enough from the eruption is completely safe but you'll need to stay on your toes.
</p>

<p>
  The Demolisher ploughs through the line of land mines and does not slow as it does so. They do more significant damage, but to your horror the damage is gone in seconds. That was your escape plan, it's time to get moving.
</p>

<p>
  You try some more weapons as you move away, even throwing a few spare defender capsules into the mix. They're all somewhat effective but the damage doesn't stick. You'll need to deal damage much faster but you weren't prepared for that.
</p>

<p>
  While distracted you fail to dodge a new volcanic eruption. The fissure erupts directly beneath, shattering your shield and blanketing you in fire. The power armor stops you from getting too singed but another hit like that would be certain death. For now, this is not a fight you can win.
</p>

<p>
  You switch all your focus to dodging the eruptions and moving away. A few seconds after you stop firing the Demolisher slows down and turns back. That's two wins for the Demolisher, but you'll live another day.
</p>

<hr/>

<h3>A Segmented enemy</h3>

<p>
  The Demolisher is largely defined by our wish to have a very large enemy in the game. As explained in the <a href="https://factorio.com/blog/post/fff-424" target="_blank">Gleba enemies</a> post, the larger a creature is the more problematic it is for sprite sheets. For a conventional enemy it is width * height * directions * animation frames. Width and height are automatically larger and generally a larger creature needs more directions and animation frames to look good so conventional enemies don't scale well.
</p>

<p>
  We identified early on that a "segmented enemy" as one of the ways that we could have a large enemy, because in theory we'd only need 1 animation frame. It would need more directions than normal to have smooth movement, but that's the same as a train.
</p>

<p>
  In the earliest most basic (text only) draft of enemy types we only had the basic category of animation method or movement. I won't list all the types we were considering, but it included "leggy enemy" and "segmented enemy". We didn't know which type would go where though.
</p>

<p>
  For a while the segmented enemy was going to go on Fulgora. This was because we knew the Fulgora landscape would have islands, so it made sense for a segmented enemy to be able to cruise the spaces between islands and give it an unbroken range. This would be another reason not to build in the quicksand.
</p>

<p>
  One of the problems with this is the Dune franchise. We ended up in the segmented-enemy-on-sand direction by following the natural progression of constraints, but most people wouldn't see that and assume it's based on Dune anyway. Also, it doesn't have that unique and exciting feeling if it's too close to something you've seen before, so we decided to move segmented enemies "anywhere else".
</p>

<hr/>

<h3>Prototyping</h3>

<p>
  After I'd finished the main prototype for Space Age I shifted my focus to enemies. I made a new branch of the game just for prototyping enemies, never to be merged into the main game, just to prove out concepts and get something tangible for further discussions. An "Enemies sandpit".
</p>

<p>
  Leggy enemies went to Gleba. We didn't know if we wanted it to be more of a stomper or a strafer so I added both options expecting one to be chosen. In the end both survived the cut, and we even got the little wrigglers too.
</p>

<p>
  The freezing planet had flying enemies and among them were the jelly-like enemy from <a href="https://factorio.com/blog/post/fff-367">FFF-367</a>, however since then these enemies have been dropped from the game. The last planet has a delicate mix of challenges and although we found a way to add enemies to the mix in an interesting way, it would make progression much slower. It might be better as a mod.
</p>

<p>
  The segmented enemy went to the volcanic planet. We didn't know exactly what it would do so it was provisionally called things like forgewyrm, magmaworm, and lavaslug. The implementation for this in the prototype was basically a conga line of tanks with some clever code to make them follow-the-leader while adding some sinusoidal movement. The leader in this case was a unit (basically a giant biter) because that already has the necessary attack logic.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-conga.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>The earliest prototype from years ago. This was testing the basic animation principal and the fire-blood splash back when it takes damage.</i>
</p>

<hr/>

<h3>Design</h3>

<p>
  Moving the segmented enemy to a planet that is mostly land had a lot of consequences for the graphics. If the creature was in deep water or sand, then it would be reasonable to have most of the creature hidden below the surface so you'd only see a few segments above the surface and gaps between them. E.g. Head, gap, back hump, gap, (repeat), tail.
</p>

<p>
  On the volcanic planet we'd need to show all of the body above the surface at some point and that removes the ability to have gaps between segments.
</p>

<p>
  To start with, I was leaning more towards the Demolisher being much more alien. A creature that's barely biological as far as we'd recognise it. Something potentially nuclear powered, that acts more like a force of nature as it scoops heavy isotopes from the soil. There were of course some more conventional options too.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Early Demolisher concepts"
    title="Early Demolisher concepts"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-faces.png"/>
  <i>Some early concepts for head shapes.</i>
</p>

<p>
  Albert wanted the enemies to be less alien and more earth-inspired so things progressed in a direction more inspired by a centipede or millipede.
</p>

<p>
  A segmented unit has problems with sprite layering. By default, if a segment is further south than another segment then it's sorted in front. When sections the body are rotating or turning a corner, then as segments face east or west the overlapping order changes so a segment "pops" in front of another one. A way to bypass this problem is by having every segment separated by a 45-degree slice, so that with Factorio's camera angle a tail segment can always be sorted under the segment before it.
</p>

<p>
  I made a Demolisher model with the 45 degree slices to prove that the overlapping theory would work, but also to prove that it's still possible to get an aesthetic design with this approach.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <video autoplay muted loop playsinline class="shadow">
    <source src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-segment-test.mp4" type='video/mp4' />
    Mp4 playback not supported on your device.
  </video>
  <i>Test footage straight from blender. Note that even when the creature is going north, the head can be drawn over other body parts.</i>
</p>

<p>
  This was a big hit so a final concept art version of the head was made to give a direction for the materials.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Final Demolisher face concept"
    title="Final Demolisher face concept"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-head.png"/>
</p>

<p>
  The design was signed off and sent to Jerzy for extra details and texturing, then Lucas for some final adjustments.
</p>


<p>
  Thanks to StrangePan, the Demolisher was soon in the game.
</p>

<hr/>

<h3>A boring enemy</h3>

<p>
  The initial Demolisher in game was a basic implementation. The only weapon that was firmly decided was that the face would do impact damage. There were a lot of other ideas floating around too, but it was hard to get everyone to agree on a direction.
</p>

<p>
  For a while the "decreed" weapon was going to be that the Demolisher would have underground children which would pop up like worm turrets and shoot at things. We didn't go with that for various reasons.
</p>

<p>
  This left the Demolisher stranded in the following state:
</p>

<p>
  <ul>
    <li>It didn't have any weapons except for the face hitting you.</li>
    <li>It was fast enough to catch you without exoskeletons, so if you don't have them and you attract attention you automatically die. If you have enough exoskeletons though it just can't catch you so there's no risk.</li>
    <li>It had a staggering number of hitpoints when combined with resistances. It took about 3 minutes of continuous fire from an automatic shotgun firing at the face to die. Using rockets instead was about the same.</li>
    <li>The main strategy to kill it was extremely boring, just run around in a circle for 3 minutes until it dies or you run out of ammo. If you do run out of ammo, collect more and continue.</li>
    <li>There were other ways to kill it too, but they're either even slower but more resource efficient, or slightly faster but require way more preparation.</li>
    <li>Overall very un-fun.</li>
  </ul>
</p>

<p>
  I started a new combat branch to change the Demolisher balance and add some new weapons.
</p>

<hr/>

<h3>Defences</h3>

<p>
  To start I drastically reduced the health of the Demolisher from 80000 to 30000 and reduced the resistances, in particular the flat reduction to damage that makes most attacks barely have any effect. This took the expected time to kill (with a decent damage rate) from minutes to seconds. The main difficulty of killing it now is dealing with the very high regeneration rate of 1500 hp per second. This means that when you're fighting it, you can either beat its healing with your damage rate and it dies quickly, or you can't and you need to run away. Either way the fight is over quickly, it doesn't waste your time, and both situations are interesting.
</p>

<p>
  Assuming that you lose the first battle, you can (hopefully) retreat and plan a new method of attack. Factorio has a lot of weapons to choose from, so this is a nice opportunity to try some new options, and in particular, this fight rewards you from using different weapons in combination. Land mines on their own might not work, but land mines + turrets might. Defender capsules on their own might not work, but defender capsules plus a prepared poison cloud plus rockets might have a combined damage per second to do the trick.
</p>

<hr/>

<h3>Offences</h3>

<p>
  I came up with 11 ideas for weapons that had good potential to be both effective and fun. After talking to some other people for more, we managed to get the list of good options to 13. A lot of the ideas were designed to be used in conjunction so it included things ranging from flaming blood splashback, to flamethrower holes on the sides, to subterranean shockwave attacks.
</p>

<p>
  With a definitive list of options there was a meeting to decide on a set that would work together well.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Some Demolisher weapon options"
    title="Some Demolisher weapon options"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-weapon-thumbnails.png"/>
  <i>Some thumbnail sketches to help with explaining potential weapon mechanics.</i>
</p>

<p>
  We decided on 2 main abilities:
</p>

<p>
  <ol>
    <li>
      The Demolisher would have a roar or shockwave attack. If the shockwave hit you, you could be stunned or slowed. This would kick up a cloud of ash as the shockwave travels. The cloud would have a small slow effect. The main intention for the cloud can't be disclosed yet, but if Vulcanus is your first planet then the additional effect won't affect you.
    </li>
    <li>
      The Demolisher would seismically trigger volcanic eruptions around a chosen moving target nearby. This would mean that when you're in combat with the creature, there's still some amount of threat. You're not 100% safe just by avoiding the head.
    </li>
  </ol>
</p>

<p>
  It seemed like a good starting point, but kovarex was away and not part of the discussion, so we just had to hope he'd be on board with the new plan when he got back.
</p>

<p>
  As I developed these 2 concepts, I extended them a little more to work better together.
</p>

<p>
  The eruptions changed to be more engaging by showing the place that they will explode ahead of time. This makes more sense graphically, but mainly it makes the whole battle a lot more interactive. The explosion damage can be far higher with the assumption that most explosions won't hit, but that's also great to make them a genuine threat.
</p>

<p>
  Now, instead of not caring about your position other than not getting flattened by the head, you actually need to move around as different parts of the ground become unstable. It feels a lot more like a boss fight. If you're under powered then every explosion counts and you need to dodge a lot. If you're overpowered then you mainly just need to make sure you don't take many direct hits in quick succession, and only a small amount of occasional movement is needed for that.
</p>

<p>
  The eruptions are only used against moving targets. The lore reasons for this is that it detects the vibrations in the ground made by moving targets so it's easy to aim eruptions at those, and also that it doesn't consider static things to be much of a threat. The real game balance reason is that player health with shields is so much higher than turret health, so if the turrets are targeted by explosions they die too quickly and it removes too many strategies from being viable.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Fissure stages"
    title="Fissure stages"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-fissure.png"/>
  <i>This is my painted concept for the fissure progression. It's still used as a placeholder in the game but will be replaced with a final version at some point.</i>
</p>

<p>
  For the shockwave ash cloud effect, it being a stun was either too punishing if you got caught close to the head or near an eruption, or irrelevant in all other cases. I changed it to be more of a persistent slow, but not a slow in the way that other slows in the game work. Instead of being a flat % reduction, the effect is more like a max speed with a % of effectiveness. If you don't have any exoskeletons then you're barely affected, but if you have loads of exoskeletons it will take you most of the way back to your natural speed.
</p>

<p>
  Keeping the range of player speeds to a slower, more narrow range, is an important change for a few reasons. The Demolisher speed can be much lower too so that the player is always slightly faster and can escape, but the difference with many exoskeletons is not as extreme. Eruptions can form slower and still have a chance of hitting. Exoskeletons are still very relevant though because even a small movement speed bonus helps you dodge an eruption, especially if you've fired a weapon recently.
</p>

<p>
  As part of the branch I also added various visuals for the ash cloud, trail effects, and placeholder eruption effects. This branch was made while kovarex was away so we weren't sure what he'd think of it. The Demolisher combat was something that had… "resisted agreed consensus" for over a year at that point. Towards the end of the work on this branch, the work started to represent a large investment of hours which isn't ideal for something that wasn't at all signed off, but deadlines were looming and things just needed to be done.
</p>

<p>
  Fortunately when he got back it all got signed off shortly before the LAN playtesting event so it was playable for the playtesters. However, there wasn't time for all of my scripted Lua code to get ported to C++, meaning that we had 100+ people playing with code that was never meant to exist outside of an experimental branch.
</p>

<hr/>

<h3>Territories</h3>

<p>
  The territories system is a completely new mechanic. I designed a system that used voronoi noise to make distinct regions that demolishers can claim and protect. If you build in a Demolisher territory it will get annoyed and earn its name. The system was built by StrangePan and Genhis.
</p>

<p>
  Demolishers patrol near the edge of their territory and you can see these patrol paths from decoratives on the ground (work in progress). You can also see demolisher territories on the map.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Demolisher territories"
    title="Demolisher territories"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-territories.png"/>
  <i>Orthogonal lines mark territory edges and the demolisher patrol path is close to the edge. Areas with diagonal red lines are the danger zones.</i>
</p>

<p>
  The planet's starting coal, calcite, sulfuric acid, and most of the starting ashlands region are not covered by Demolisher territories. This gives you a safe area to make a factory and get the basics set up. The starting tungsten patch is in the territory of a small Demolisher, so to get the planet's science pack you'll either need to defeat it or engage in some guerilla mining operations.
</p>

<p>
  We're considering adjusting the rules for which buildings in a territory provoke an attack because we have some options, such as: all structures (the current rule), active structures, or only mining structures.
</p>

<p>
  Demolishers don't have spawners, the whole creature spawns directly on the map. If you kill one of these ancient creatures then their territory becomes yours, permanently.
</p>

<p>
  There's no pollution. Demolishers are only provoked by you building in their territory (or damaging them).
</p>

<p>
  There's no evolution. Demolisher size is only controlled by distance from the starting area.
</p>

<hr/>

<h3>Combat Testing</h3>

<p>
  I've found many ways to kill all sizes of Demolisher at all tech levels (within reason), but for every successful way I found there are many more unsuccessful ways.
</p>

<p>
  I was looking forward to people encountering Demolishers during the playtesting event so I joined different servers to watch the first encounters.
</p>

<p>
  I'd estimate that at least 60% of the players survived their first encounter just by panicking and immediately running away.
  For players that tried to fight, I didn't see anyone get a kill on their first try, and only 25% survived their first try.
</p>

<p>
  Every server killed at least one Demolisher, but the ways that this happened were wildly different. Players even found one way that I didn't think would work (but I don't want to spoil successful strategies).
</p>

<p>
  The big Demolishers are much more difficult to kill. There are ways to do it early game but it's not easy and it's a big investment. For many players I expect them to wait for tech from other planets before killing big Demolishers.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img
    alt="Big demolisher destruction"
    title="Big demolisher destruction"
    src="https://cdn.factorio.com/assets/blog-sync/fff-429-demolisher-big-destruction.png"/>
  <i>You can lure Demolishers to follow you and force them to destroy cliffs, but be careful about leading them back to your base.</i>
</p>

<hr/>

<h3>Combat Clarity Improvements</h3>

<p>
  We're continuing to update the balance but right now the biggest problem is not with the combat stats themselves but with transparency and feedback to the player. For example, at the moment if you alt-click a segment then Factoriopedia shows you the body resistances but you need to click on the head to see the head resistances. Ideally all body parts link to the same page which can show you both sets of resistances. Likewise we need to clarify somewhere that segments take damage individually but all damage is transferred to the creature as a whole (which is really the head).
</p>

<p>
  Demolishers have no resistance to poison capsules. It's not a hint to use poison capsules, it's just because poison damage is so weak compared to other damage types that adding a resistance doesn't make sense. The problem is that if you test 1 poison capsule on a Demolisher, it looks like no damage is dealt because the regeneration is higher than the damage of a few poison capsules (even if they hit multiple segments), so the damage is healed instantly and the health bar doesn't even appear. The reality is that they do offset some of the regeneration but that isn't communicated. If we make the health bar linger for a moment after any damage then it will make that situation clearer.
</p>

<p>
  These are the sort of small adjustments we will be making over the coming weeks.
</p>

<hr/>

<h3>Conclusion</h3>

<p>
  The demolishers aren't finished. Some graphics and other small details are still in progress, for example the eruption explosions are still the generic "huge explosion" but we're part way through a more appropriate lava-based animation that doesn't obscure the player so much. We're also intending for the Demolishers to have more sinusoidal motion but some other things need to be completed first.
</p>

<p>
  Unlike other planets where the expectation is that casual defences usually win, on Vulcanus casual defences will usually lose. That's fine though because generally they're not a threat to your base, only new expansions. Also on Vulcanus, most of what you're building in outposts is sort of free stuff from lava anyway so it being demolished is not a big loss. There's no need to build perimeter walls, and a typical line of turrets is one of the worst formations you can make because the Demolisher will cruise straight down it.
</p>

<p>
   From playtesting there's mixed sentiment on their difficulty level. Some players feel the Demolishers are overpowered and others think that they are in a good place. If Demolishers were a conventional enemy then they would be too strong at the current level, but the fact is that they are not a conventional enemy due to the territory system. They don't attack your base the way other enemies do. Maybe the eruptions are a bit too lethal but we can adjust that.
</p>

<p>
  Overall difficulty seems to be okay because you have a lot of options and you are given the space (and time) to find the option that's best for you. Without spoiling specific strategies the broader categories that you have are:
  <ul>
    <li>A good combination of personal weapons with well executed combat.</li>
    <li>A static defence strategy that can be reused for multiple territories by luring in distant enemies.</li>
    <li>Import special weapons from other planets. </li>
    <li>Wait for more damage upgrade techs and quality to make all strategies better.</li>
  </ul>
</p>

<p>
  Demolisher combat can be fun and strategic. Each one is a boss fight to unlock a new territory. Demolishers are definitely the toughest enemies in the game. When something which at first seemed impossible to kill, can later be killed quickly and efficiently due to a well-executed plan, it is very satisfying.
</p>

<hr/>

<p>
  As always, face-tank every obstacle and leave your thoughts in the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:33:"
    
    
    
    
    
    
  ";s:7:"attribs";a:1:{s:36:"http://www.w3.org/XML/1998/namespace";a:1:{s:4:"base";s:29:"https://factorio.com/blog/rss";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"Friday Facts #428 - Reactor & Logistics circuit control";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"text";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:2:"id";a:1:{i:0;a:5:{s:4:"data";s:38:"https://factorio.com/blog/post/fff-428";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:7:"updated";a:1:{i:0;a:5:{s:4:"data";s:20:"2024-09-13T00:00:00Z";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"href";s:38:"https://factorio.com/blog/post/fff-428";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}s:6:"author";a:1:{i:0;a:6:{s:4:"data";s:12:"
      
    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"name";a:1:{i:0;a:5:{s:4:"data";s:6:"Klonan";s:7:"attribs";a:0:{}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}s:7:"content";a:1:{i:0;a:5:{s:4:"data";s:4341:"<p>
  Hello,
  <br/>It's another week! The release is getting closer!
</p>

<hr>
<h3>Reactor circuit connection</h3>

<p>
  We added the ability to connect reactors to the circuit network, which allows the player to:
  <ul>
    <li>Read fuel (including currently burning)</li>
    <li>Read reactor temperature</li>
  </ul>
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-428-reactor-read-heat.png" />
</p>

<p>
  This makes it quite easy to set up a lossless smart reactor, which doesn't insert any fuel unless it is needed.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-428-reactor-save-fuel.png" />
</p>

<p>
  In some ways, it feels a little bit too easy. The previous solution of people reading the amount of Steam in storage tanks felt like it needed a bit more brainpower and engineering, but it's hard to justify missing capabilities with this reasoning.
</p>

<p>
  Anyway... reading the heat and contents from the reactors may prove to be quite useful when you get to the final planet.
</p>

<hr>
<h3>Roboport circuit improvements</h3>

<p>
  With the ability to set assembler recipes (<a href="https://factorio.com/blog/post/fff-394">FFF-394</a>), there was one missing piece of the puzzle related to making a fully automated magical 'craft everything' circuit setup. That was the ability to read what items are missing from the logistic network. So we added that:
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-428-roboport-missing-items.png" />
</p>

<p>
  It outputs the amount of items needed to satisfy all the logistic requests in the system, including mobile entities like the player and spiders.
  Importantly (or unfortunately), it does not include items needed to build ghosts (construction requests). This is mostly a technical restraint on our behalf, as logistic networks do not track ghosts in a way that would make it performant to include.
</p>

<p>
  Additionally, we added the ability to read the number of roboports in the network. This can be used for example to automatically top-up the number of robots as you expand your logistic network.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-428-roboport-read-count.png" />
</p>

<hr>
<h3>Logistic chest enable/disable</h3>

<p>
  It can be a little bit hard using the logistic network to prioritize things, like "only bring advanced circuits here if we have enough". So we added a way to disable them using the circuit network.
</p>

<p style="text-align: center; margin: 20px auto 20px auto;">
  <img src="https://cdn.factorio.com/assets/blog-sync/fff-428-logistic-chest-control.png" />
</p>

<p>
  This is for all types of logistic chest, and works the way you expect:
  <ul>
    <li>Disabling requesters - Stops new deliveries being ordered (current orders will finish).</li>
    <li>Disabling providers - Stops the items being provided to the logistic network.</li>
  </ul>
</p>

<p>
  It is common with these circuit network features, that the community ends up doing crazy things we could never think of. So it will be interesting to see what will be possible in 2.0.
</p>

<hr>
<h3>LAN Party result</h3>

<p>
  We finished up our 5 day LAN party on Monday this week. We'd like to thank everyone who came, it was a really great time and the amount of feedback from all the players was amazing.
</p>

<p>
  During the event we had nearly 900 individual feedback reports, which is a crazy amount.
  Katya spent her time during the event sorting through the reports as they came in, and raising the biggest bugs and issues to boskid.
  This is not to mention all the ideas and suggestions we had from talking to everybody.
</p>

<p>
  Some of the teams finished in the 50 hours we played, so we are feeling okay with the overall pacing and progression.
  There were a few areas that we will have to focus on for the Space Age release, but overall the game seemed stable and fun enough, so there is no worry about keeping to our release date of October 21st.
</p>

<hr>
<p>
  As always, wire us up to your thought reactors at the usual places.
</p>
";s:7:"attribs";a:1:{s:0:"";a:1:{s:4:"type";s:4:"html";}}s:8:"xml_base";s:29:"https://factorio.com/blog/rss";s:17:"xml_base_explicit";b:1;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:512;s:7:"headers";a:17:{s:4:"date";s:29:"Sun, 10 Nov 2024 10:34:50 GMT";s:12:"content-type";s:35:"application/atom+xml; charset=utf-8";s:14:"content-length";s:5:"31330";s:9:"report-to";s:188:"{group:heroku-nel,max_age:3600,endpoints:[{url:https://nel.heroku.com/reports?ts=1731234890&sid=c46efe9b-d3d2-4a0c-8c76-bfafa16c5add&s=wSqnhzeHextVnvr7oapcUcA%2Fp7rjxJt7T3Sau%2BxpOeQ%3D}]}";s:19:"reporting-endpoints";s:149:"heroku-nel=https://nel.heroku.com/reports?ts=1731234890&sid=c46efe9b-d3d2-4a0c-8c76-bfafa16c5add&s=wSqnhzeHextVnvr7oapcUcA%2Fp7rjxJt7T3Sau%2BxpOeQ%3D";s:3:"nel";s:103:"{report_to:heroku-nel,max_age:3600,success_fraction:0.005,failure_fraction:0.05,response_headers:[Via]}";s:13:"last-modified";s:29:"Fri, 08 Nov 2024 00:00:00 GMT";s:4:"etag";s:24:""2024-11-08T00:00:00:br"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"vary";s:23:"Accept-Encoding, Cookie";s:16:"content-encoding";s:2:"br";s:25:"strict-transport-security";s:16:"max-age=31536000";s:3:"via";s:9:"1.1 vegur";s:15:"cf-cache-status";s:7:"DYNAMIC";s:6:"server";s:10:"cloudflare";s:6:"cf-ray";s:20:"8e056470f8f6a838-SYD";s:13:"server-timing";s:169:"cfL4;desc=?proto=TCP&rtt=15000&sent=6&recv=9&lost=0&retrans=0&sent_bytes=3390&recv_bytes=989&delivery_rate=190073&cwnd=252&unsent_bytes=0&cid=7488c4138c93cdef&ts=247&x=0";}s:5:"build";s:14:"20240906063317";s:5:"mtime";i:1731234450;s:3:"md5";s:32:"bd7ca8fb32b0560a85f9c378c1c31a70";}