
*ch1_start
*chapter1
[scene_title title="Chapter 1"]

;第1章

[cm]
[clearfix]
[start_keyconfig]
[showmenubutton]

; [bg] は time 省略時に3秒フェード待ちになるため、黒背景は即時切替にする
[bg storage="black.png" time=0 wait=true]
[iscript]
// NEW GAME の暗転を、第1章の黒背景が準備できるまで保持する。
$("#new-game-opening-fade").stop(true, true).remove();
[endscript]

[font speed=80]
“Someone like me should just jump and die.”
[p]

[wait time=2000]

[font speed=50]
And that—
[p]

[wait time=500]

was what I thought of myself.
[p]

[wait time=1000]

[font speed=40]

[bg storage="bg_classroom_day_ch1.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true]
The sky beyond the classroom window looked heavy and ominous,
[p]

slowly bearing down on me.
[p]

[wait time=1000]

The bullying had started sometime around the beginning of my second year of high school.
[p]

[font speed=60]

Again and again, I’d grown sick of my own weakness—[r]
of being unable to change anything.
[p]

[wait time=500]

[font speed=80]
How long—
[p]

[wait time=500]

how much longer would this go on?
[p]

[wait time=1000]

[font speed=40]

Trapped in a reality I couldn’t escape,[r]
I didn't know how much more I could take.
[p]
[wait time=1000]

[playse storage=se/school_chime.mp3 volume=80]
[wait time=2000]

[wait time=1000]

The chime announced lunch break. I dreaded that sound.
[p]

[wait time=500]

I’d been ordered to go to the school rooftop every lunch break.[p]

This “routine” took place out of sight of both teachers and classmates,[r]and I couldn’t tell anyone about it.[p]
[wait time=1000]

...[p]

I had no choice but to go.
[fadeoutbgm time=3000]
[wait time=1000]
[choice_start count=1 y=360]
[choice name="choice_ch1_go_rooftop" text="Head to the rooftop" target="*next"]
[s]

*next
[cm]

[bg storage="bg_rooftop_door.webp" time=600]
[wait time=500]
[playse storage=se/footstep_stairs.ogg volume=100]
[wait time=3000]
I climbed the dim stairwell to the rooftop.[p]
[wait time=500]
[bg storage="black.png" time=600]
[wait time=500]
; 章タイトルは無音で表示し、屋上の環境音は次の屋上シーン開始時にだけ再生する。
[chapter_title number="Chapter One" title="Awakening"]
[playse storage=se/roof_door.ogg volume=30]
[wait time=500]
*ch1_rooftop

;------------------------
; 屋上
;------------------------
[bg storage="bg_rooftop_day_ch1.webp" time=600]

[playse storage=se/wind_rooftop.ogg volume=30]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
[wait time=2000]
Even though it was September, the air outside was hot and humid.
[p]

The morning rain had soaked into the rooftop concrete, leaving it slightly damp.[p]

[wait time=1000]

Instead of sitting on the ground, the usual three were leaning against the fence today.[l]

_ They probably didn't want the rainwater soaking through their clothes.[p]

*ch1_training

[cg storage="ch01_sc01_rooftop_wait.webp"]
[bg storage="ch01_sc01_rooftop_wait.webp" time=600]

[playse storage=se/foot.ogg volume=100]

[wait time=1000]
“There you are.”[p]

Ryuya, the tallest of the three and their de facto leader, looked at me.[p]

His voice was flat, but his gaze was piercing.[p]

He hadn't even called my name, but I stopped in my tracks.[p]

If I answered, my voice would shake.[l][r]
If I stayed quiet, he might take offense at that instead.[p]

After a moment's hesitation, I gave a slight bow.[l][r]
At some point, that had become the only way I answered them.[p]

[wait time=500]

[bg storage="bg_rooftop_day_ch1.webp" time=600]
[auto_chara name="龍也" face="normal" left=50 time=700]
“All right. Let's do the usual.”[p]

Ryuya said as he pulled on a pair of boxing gloves. I had no idea where he'd gotten them.[p]

Using me as a punching bag was what Ryuya and the others called “training.”[p]

[wait time=500]

Without a word, I picked up the gloves they'd left for me.[p]

[wait time=500]

I hated myself for letting this become routine.[p]

[auto_chara name="翔太" face="nastysmile" left=180 time=500]
“Switch with me after three minutes.”[l]

_ Shota said with a grin.[p]

[auto_chara name="綾香" face="normal" left=300 time=500]
“Come on, leave him alone. Poor guy.”[l]

_ Ayaka, the third member of the group, spoke with a faint smile.[p]

[chara_hide name="綾香"]

Ayaka never joined in this “game.”[l]
_ Not because she felt sorry for me.[p]

[wait time=500]

She didn't want to work up a sweat, and she didn't want any blame if something went wrong.[p]

Even so, my fingers paused on the glove strap for just a moment.[p]

My body had reacted on its own to the words “poor guy.”[p]

One look at Ayaka's thin smile killed the plea rising in my throat.[l][r]
There was no one here who saw my pain for what it was.[p]

This mock boxing match they called “training” had rules.[p]

[wait time=500]

Three minutes per round.[l][r]
No punches to the face.[l][r]
Gloves were mandatory.[p]
Just enough structure to make it look legitimate.[p]

But the rules changed whenever it suited them.[p]

[wait time=500]

Once, when I wasn't fighting back at all,[l]
_ Ryuya had goaded me to “at least throw a punch.”[p]

By sheer bad luck, the punch he'd ordered me to throw[r]
landed squarely in his solar plexus.[p]

[wait time=500]

Ryuya's face twisted at the unexpected pain. Apparently furious,[l][r]
he raised his leg high and drove his foot into my stomach.[p]

[wait time=1000]

That was how it went. The rules may as well not have existed.[p]

[auto_chara name="龍也" face="normal" left=50]
Today's “training” was just as one-sided.[p]

[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[playse storage=se/punch2.ogg volume=100]
[wait time=500]
[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[chara_hide_all time=300]
Once I learned that fighting back only made things worse,[l]
_ I stuck to dodging and keeping my guard up.[p]

[wait time=500]

I never got used to the pain.[p]

The way it built with every blow always broke down what little resolve I had.[p]

Three minutes passed.[p]
[auto_chara name="翔太" face="normal" left=180]
Shota took the gloves from Ryuya and bounced lightly in place, his permed brown hair bobbing with him.[p]

[wait time=500]

He was imitating a boxer.[l] His punches weren't as heavy as Ryuya's.[p]

[wait time=500]

But he'd feint to throw off my guard,[l][r]
then aim for wherever it would hurt most.[p]
It was just like him—calculated and mean.[p]

[wait time=500]

[playse storage=se/punch2.ogg volume=100]
[wait time=1000]
[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[playse storage=se/punch2.ogg volume=100]
[wait time=500]

Pummeling someone for three straight minutes must have been tiring.[p]

As time passed, his swings grew wider and sloppier.[p]
It had to be... almost three minutes by now.[p]

[wait time=1000]

[auto_chara name="翔太" face="nastysmile" left=180]
“Oh, three minutes already. This'll be the last... one!”[l][r]
[playse storage=se/punch3.ogg volume=100]
[wait time=500]

He finished with one last feint.[l]
_ The punch slammed into my stomach while my guard was down.[p]

[wait time=1000]
“Gah—”[l]
[playse storage=se/fall_down.ogg volume=100]
_ I doubled over and dropped to one knee.[p]

[wait time=500]

[auto_chara name="綾香" face="serious" left=300]
“You really are weak. Even I could probably beat you.”[l][r]

Ayaka sneered, twirling a strand of her long black hair around one finger.[p]

Still clutching my stomach, I looked toward the rooftop door.[p]

Maybe just one student returning to class would open it.[l][r]
I felt pathetic for letting myself hope.[p]

The door stayed shut, its hinges creaking in the damp wind.[p]

[wait time=500]

[auto_chara name="龍也" face="normal" left=50]
“Be here at lunch tomorrow, too.”[l]

_ Ryuya headed for the exit,[r]and the other two trailed after him.[p]
[playse storage=se/three_walk.ogg volume=100]
[wait time=500]

“Put the gloves... back in the usual place.”[p]

With that parting order, the three of them left.[p]
[fadeoutbgm time=3000]
[chara_hide_all time=300]

[wait time=2000]

[playse storage=se/throw_globe.ogg volume=100]
Left alone, I yanked off the gloves and threw them aside.[p]

[wait time=500]
[playse storage=se/heartbeat.ogg loop=true volume=100]
My anger at what they'd done to me swelled rapidly.[l][r]
And some of that anger was aimed at my own helplessness.[p]

[wait time=1000]

But there was no one left to take it out on.[p]

[wait time=1000]

When their footsteps faded, only the wind and my heartbeat remained.[p]
With nowhere else to go, my anger turned inward.[p]

[wait time=1000]

My gaze drifted to the fence.[l][r]
It was only high enough to prevent an accidental fall.[p]

[wait time=500]

It wasn't built to stop anyone determined to climb it.[l][r]
If I wanted to, I could get over it easily.[p]

[wait time=1000]
*ch1_jump

I'd wondered before what would happen if I jumped from the rooftop.[p]

[wait time=500]

I'd even looked it up.[p]

[wait time=500]

The rooftop was about ten meters above the ground.[l]
_ If I hit the hard pavement from this height, I probably wouldn't survive.[p]

[wait time=500]

Even if I did, I might be left severely disabled,[l]
_ facing an existence worse than death.[p]

[wait time=1000]

Before I knew it, my hands were on the fence and I was climbing.[p]
[playse storage=se/fence_creak.ogg volume=100]
[wait time=500]

I swung a leg over,[l]
_ then slowly lowered my feet onto the edge of the roof.[p]

[wait time=500]
[playse storage=se/wind_rooftop.ogg volume=20]
[cg storage="ch01_sc01_jumping_off.webp"]
[bg storage="ch01_sc01_jumping_off.webp" time=600]
The wind tugged at my uniform as I stood on the rain-slick ledge.[p]
Looking down, I could see the brightly colored flower bed by the front gate.[p]

[wait time=500]

Lunch break would end soon,[l]
_ and fifth period would begin.[p]

[wait time=500]

Everyone seemed to have returned to class. There wasn't a soul around.[p]

[wait time=500]
With the same natural ease as a child[l]
_ jumping into a parent's arms,[l]
_ I put my feet together.[p]
[delay speed="130"]
And jumped—[p]
[resetdelay]
[bg storage="black.png" time=0 wait=false]
[stopse]
[stopbgm]
[wait time=1000]
[delay speed="90"]
For an instant, I felt the weightlessness of a roller coaster.[p]

[wait time=500]

Then I should have begun hurtling toward the ground.[l] Or so I expected.[p]

[wait time=1000]

Instead—[p]

[wait time=500]

the world around me slipped into slow motion,[l]
_ and it felt as though I were falling at a crawl.[p]

[wait time=1000]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]

So this was my life flashing before my eyes.[p]
The thought came with strange calm.[p]

[wait time=1000]

My feet struck the ground first.[p]
“Impact” wasn't nearly enough to describe it.[p]

[wait time=1000]

A sickening sound traveled up from the soles of my feet.[p]
Below the knees, my legs gave way[l]
_ as if they belonged to someone else.[p]

[wait time=1000]

And it still wasn't over.[p]

[wait time=700]

From deep inside my broken thigh came the sensation[l]
_ of something tearing through me from within.[p]

[wait time=1000]

Something collapsed deep in my abdomen.[p]
Something hot surged up my throat.[p]

[wait time=1000]

My chest folded in on itself.[p]
I tried to breathe,[l]
_ but my body had forgotten how.[p]

[wait time=1000]

Then[l] the ground seemed to rush closer.[p]

[wait time=500]

Yes—[l] my face was about to slam into it.[p]

[wait time=1000]

My jaw shattered.[p]
My teeth scattered.[p]

[wait time=700]

Wet concrete[l] filled my vision.[p]

[wait time=700]

—And then,[l]
_ the impact ended.[p]

[fadeoutbgm time=1000]
[stopse fadeout=1000]
[wait time=1800]

The world[l]
[resetdelay]
[delay speed="120"]
_ cut out.[p]
[resetdelay]
[delay speed="90"]

[wait time=1200]

So this is death, I thought—[p]

[wait time=2000]

...[p]

[resetdelay]
[playse storage=se/wind_rooftop.ogg volume=20]
[bg storage="bg_rooftop_day.webp"]
I heard the wind.[p]

It was bright.[p]

My vision returned.[p]

I looked over my body.[p]

There was no blood. Nothing was broken.[p]

Beside me lay the gloves I'd thrown away.[p]

[wait time=500]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
I hadn't moved a single step from where I'd been on the rooftop.[p]

[wait time=500]

Judging by the clock, no time had passed.[p]

And I hadn't fallen asleep and dreamed it.[p]

[wait time=500]

As I tried to make sense of whether I'd seen some kind of “vision,”
my confusion began to ease a little.[p]

[wait time=500]

The moment I looked down at my uninjured legs, the sensation of them shattering came back in vivid detail.[p]
[fadeoutbgm time=1000]
[playse storage=se/heartbeat.ogg loop=true volume=100]
[wait time=1000]

My whole body began to shake.[l]
_ Sweat streamed down my forehead.[p]

[wait time=1000]

My body seemed to remember my legs collapsing,[l]
_ and the pain of something being crushed[l]
_ deep inside me.[p]

[wait time=1000]

It felt as if I'd truly lived through it.[p]
[stopse fadeout=3000]
[wait time=1000]
[bg storage="black.png"]
I didn't remember much of what happened after that.[p]

The next thing I knew, I had fled the school.[p]

I couldn't remember who I'd passed or how I'd walked all the way to the station.[p]

Even my memory of taking off my shoes was hazy.[p]

[playse storage=se/room_noise.ogg loop=true volume=70 fadein=true time=2000]
[wait time=1000]

When my mind finally cleared again,[l]
_ I was sitting on my bed at home.[p]

I sat there for hours, unable to move or even take off my uniform.[p]

Again and again, I reached toward my knees only to stop short.[p]

Not a scratch.[l][r]
And yet the sensations from that moment still seemed to linger in my body.[p]

I heard dishes clinking downstairs.[l][r]
The same sound that always told me dinner was ready.[p]

My family called to me. I tried to answer, but my throat closed up.[p]

I didn't know which to trust:[l]
_ the person sitting here now, or what I'd seen on that rooftop.[p]

It couldn't have been a dream.[p]

I pinched my arm over and over.[p]

I looked at my face in the mirror.[p]

I checked my heartbeat.[p]

Even then—[p]

Was I really alive?[p]

That was the one question I could never answer.[p]

That night, I couldn't turn off my bedroom light until morning.[p]

[stopse fadeout=3000]
[wait time=1500]

*ch1_return
[playse storage=se/school_chime.mp3 volume=80]
[wait time=3000]

“What the hell were you doing missing school?”[p]

[playse storage=se/kabedon.ogg volume=100]
[cg storage="ch1_rooftop_shota_threat.webp"]
[bg storage="ch1_rooftop_shota_threat.webp" time=200]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
[wait time=1200]

The moment Ryuya saw me at school for the first time in three days,[l]
_ he started shouting.[p]

I had missed two days of school after what happened.[p]

Not one of my classmates had contacted me.[p]

I was relieved no one had grown suspicious.[l][r]
But the fact that no one had noticed at all still stung a little.[p]

And now that I'd finally returned,[l]
_ these were the first words anyone said to me.[p]

“You left without putting the gloves away. They got soaked in the rain!”[p]

[bg storage="bg_rooftop_day.webp" time=600]
[auto_chara name="龍也" face="angry" left=50]

He shouted, then landed a roundhouse kick on my calf.[p]
[playse storage=se/punch3.ogg volume=100]
Ryuya used to be on the soccer team.[l]
_ Maybe that was why he was quicker to use his feet than his fists.[p]
[auto_chara name="翔太" face="normal" left=180]
“Guess we can't ‘train’ today.”[p]

With a cigarette between his lips, Shota shadowboxed.[p]
[auto_chara name="綾香" face="serious" left=300]
“Oh, gross! These gloves are still damp. They're definitely going to stink.”[p]

Ayaka crouched to inspect the wet gloves and offered her unsolicited opinion.[p]
[auto_chara name="龍也" face="angry" left=50]
“What are you gonna do about this? Want us to go without gloves?”[p]

Ryuya loomed over me.[l] Not being able to use the gloves had put him in a foul mood.[p]

The words “without gloves” left a deeper chill than the kick to my calf.[p]

To Ryuya, the problem wasn't that I'd disappeared for two days.[l][r]
It was only that the tools he used to hit me had gotten wet.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“Hey, don't get so worked up. We can play something else.”[p]

Shota made a suggestion.[p]
“Let's see who's got the most guts.”[p]

He grinned, apparently pleased with his brilliant idea.[p]
[auto_chara name="龍也" face="normal" left=50]
“What do you mean?”[p]
[auto_chara name="翔太" face="normal" left=180]
“This. Right here.”[p]

Shota pointed to his pack of cigarettes.[p]
I used to wonder how a high school student like him got hold of them.[p]
Then I saw him pay Ayaka a fee when she handed some over, and the mystery was solved.[p]
Apparently, she got them from the convenience store where she worked.[p]
[auto_chara name="綾香" face="anxiety" left=300]
“Test our guts with a cigarette? You mean burn ourselves?[l]
_ No way. That leaves a scar.”[l] Ayaka had caught on.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“Sharp as ever, Ayaka. That's exactly it![l]
_ We'll take turns and see how many seconds each of us can stand it.”[p]
The suggestion was insane.[p]
[auto_chara name="綾香" face="serious" left=300]
“What? I'm not doing that. No chance.”[p]

Ayaka shook her head, her long black hair swaying.[p]
[auto_chara name="翔太" face="sulk" left=180]
“It's not a contest unless everyone does it.”[p]

Shota pretended to look hurt.[p]
[auto_chara name="龍也" face="smile" left=50]
“Sounds fun.”[p]

Ryuya was on board too. Maybe he was curious,[l]
_ or maybe he was simply that confident.[p]
[auto_chara name="綾香" face="serious" left=300]
“Hey, don't decide this without me. I said I'm not doing it.”[p]

Afraid she'd be outvoted, Ayaka refused to budge.[p]
“Wait, I've got it. Why don't we all guess how many seconds this loser can last without making a sound?”[p]
What Ayaka suggested was even worse.[p]
Naturally, “this loser” meant me.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“Now that could be fun.”[p]

Shota agreed.[p]
[auto_chara name="龍也" face="smile" left=50]
“Yeah. Let's do that.”[p]

Ryuya agreed as well, making it unanimous among the three of them.[p]

Not one of them looked at me.[p]

They were discussing burning my skin right in front of me.[l][r]
And yet I was the only one excluded from the conversation.[p]
[auto_chara name="綾香" face="serious" left=300]
“If I win, I'm raising my fee for buying your cigarettes.[l] Ringing them up while the manager isn't looking is a pain.”[p]
[auto_chara name="翔太" face="sulk" left=180]
“Come on. How can you be so cold?”[p]

Shota sulked.[p]
“Then if I win, you have to ask that manager out.”[p]
[auto_chara name="綾香" face="serious" left=300]
“Absolutely not! He reeks, and he's seriously disgusting!”[p]

Ayaka grimaced in open revulsion.[p]
[auto_chara name="龍也" face="normal" left=50]
“Enough talking. Let's get started.”[p]

Ryuya was losing patience.[p]
“What are we betting on?”[p]
[auto_chara name="綾香" face="serious" left=300]
“Let's see... Whoever gets closest to how many seconds it takes him to make a sound wins.”[p]

Ayaka began laying out the rules.[p]
“He'll cry out as soon as it touches him.[l] I'm betting he won't last even one second.”[p]

She raised her right index finger as she declared her bet.[p]
[auto_chara name="龍也" face="normal" left=50]
“He can probably hold out for two seconds, can't he?”[p]

Ryuya seemed to be giving it serious thought.[p]
[auto_chara name="翔太" face="normal" left=180]
“Then I'll bet on five seconds.”[p]

Shota seemed to enjoy betting against the favorite.[p]
I had stayed silent until now,[l]
_ but with a burn imminent, I desperately searched for some way to stop them.[p]
[auto_chara name="拓海" face="level1_normal" left=120]
“Wait.”[p]

Then it came to me: a way to make the bet impossible.[p]
“This bet doesn't work.”[p]
[auto_chara name="龍也" face="angry" left=50]
“What's with you all of a sudden? Shut up.”[p]

Ryuya snapped.[p]
[auto_chara name="拓海" face="level1_normal" left=120]
“If you burn me and I make a sound right away, Ayaka wins.[l]
_ Then the bet's over.”[p]
The three listened in silence, apparently following my logic.[p]
“There's no reason for me to hold out, so I'll make a sound immediately.[l]
_ That means there is no contest.[l][r]This is pointless, so just stop!”[p]

When I finished, a brief silence fell between them.[p]

Notice, I pleaded silently, over and over.[l][r]
Not the flaw in the logic. Notice how terrified I really am.[p]
[auto_chara name="翔太" face="normal" left=180]
“Oh, good point! You're absolutely right.”[p]

Shota sounded impressed.[p]
He looked up at the sky and thought for a moment.[p]

“Then we just need to give you a reason to hold out.”[p]
[auto_chara name="龍也" face="normal" left=50]
“What do you mean?”[p]

Ryuya asked.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“If Takumi makes a sound, we burn him again.”[p]

How could he even suggest that?[p]

Shota was reshaping the words I'd forced out in hopes of saving myself.[l][r]
It felt as if I'd invited the second cigarette with my own mouth.[p]
“Takumi won't want to get burned again,[l]
_ so he'll try not to make a sound and get it over with in one go. Right?”[p]
Shota looked around to make sure everyone understood.[p]
“He'll do his best to stay quiet, so Ayaka won't just win instantly.[l]
_ Now we've got a real bet.”[p]
[auto_chara name="綾香" face="normal" left=300]
“You're a genius!”[p]

Ayaka showered Shota with exaggerated praise.[p]
The two traded insults, but underneath it all, they got along well.[p]
[auto_chara name="龍也" face="smile" left=50]
“Hold on![l] Then I'm changing mine to five seconds too.”[p]

At some point, Ryuya's mood had recovered.[p]
[auto_chara name="綾香" face="normal" left=300]
“What? That's cheating.”[p]

Ayaka laughed as she made a show of protesting.[p]
[chara_hide_all time=300]
[wait time=500]
I'd failed to stop the bet.[l]
_ If anything, I'd made things worse.[p]
There was no reasoning with them. They were really going to burn me—[p]

The door was only a few steps away.[l][r]
There was a gap by the fence wide enough for one person.[l][r]
Ayaka was about my size.[p]

Desperately, I compared where each of them was facing with the open routes between them.[p]

What should I do—?
[choice_start count=3]
[choice name="choice_ch1_rooftop_run" text="Run for the exit" target="*run"]
[choice name="choice_ch1_rooftop_fight" text="Take on Ryuya" target="*fight"]
[choice name="choice_ch1_rooftop_ayaka" text="Slip past Ayaka" target="*ayaka"]
[s]

*run
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
I slipped past Shota and sprinted for the exit.[p]

[auto_chara name="翔太" face="normal" left=180]
“Oh! Trying to run?”[p]

[auto_chara name="龍也" face="angry" left=50]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

“Not so fast.”[p]

Ryuya quickly cut me off and grabbed my arm.[p]

[jump target="*caught"]


*fight
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
Steeling myself, I swung at Ryuya.[p]

[auto_chara name="龍也" face="normal" left=50]
But Ryuya dodged with a slight tilt of his head.[p]

“Finally decided to fight back?”[p]

[auto_chara name="拓海" face="level1_normal" left=120]
Knowing I couldn't beat him, I gave up and tried to flee.[p]

[auto_chara name="龍也" face="angry" left=50]

“Not so fast.”[p]

Ryuya closed the distance in an instant and grabbed my arm.[p]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

[jump target="*caught"]


*ayaka
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
I shoved Ayaka aside and lunged for the opening.[p]

[auto_chara name="綾香" face="serious" left=300]
But Ayaka only took one step back.[p]

“Ryuya.”[p]

That was all she said.[p]

The next instant, Ryuya had my arm.[p]

[auto_chara name="龍也" face="angry" left=50]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

[jump target="*caught"]


*caught

“And where do you think you're going...?”[p]

[playse storage="se/hold_down.ogg" volume=80]

Ryuya caught me from behind and forced me down onto the ground.[p]

[auto_chara name="拓海" face="level1_shout" left=120]

I fought with everything I had, but the difference in our builds left me almost unable to move.[p]

[auto_chara name="翔太" face="serious" left=180]
“Okay, Ryuya. Keep holding him just like that.”[p]

Shota pinned my struggling arm and removed my watch.[p]
[playse storage=se/watch_take_off.ogg volume=100]
[auto_chara name="綾香" face="normal" left=300]
“What are you doing?”[p]

Ayaka asked with genuine curiosity.[p]
[auto_chara name="翔太" face="normal" left=180]
“I figured the burn would stand out.[l] If we put it where his watch goes, he can hide it.”[p]
[auto_chara name="綾香" face="normal" left=300]
“Huh... You actually thought that far ahead.”[p]

Ayaka sounded thoroughly impressed.[p]
[auto_chara name="拓海" face="level1_shout" left=120]
“Stop it![l] You piece of shit!”[p]

I struggled desperately.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“Wow. That's a pretty awful thing to say.”[p]

Shota pulled a fresh cigarette from the pack[l]
_ and lit it with practiced ease.[p]
[playse storage=se/writer.ogg volume=100]
A bright ember flared at its tip.[p]
“All right... Time to show us some guts,[l]
_ Takumi.”[p]
Slowly, Shota brought[l]
_ the burning cigarette closer.[p]

[wait time=1000]

The red ember[l]
_ crept closer.[p]

[wait time=1000]

Ryuya bore down on me even harder.[p]
[wait time=1000]
The tip of the cigarette[l]
_ seared my skin.[p]
[playse storage=se/fire.ogg volume=100]
[auto_chara name="拓海" face="level1_shout" left=120]
“Aagh!”[p]

The pain tore a cry from me.[p]

The smell of burning flesh reached my nose.[l][r]
It had only been an instant, but I couldn't separate that smell from my own body.[p]

Though Ryuya's arm still held me down,[r]
my burned wrist felt distant, as if it belonged to someone else.[p]
I thrashed so violently that the cigarette touched me for only an instant before falling to the ground.[p]
[auto_chara name="翔太" face="normal" left=180]
“What a waste.”[p]

Shota seemed more concerned about the cigarette.[p]
[auto_chara name="綾香" face="normal" left=300]
“Looks like I win.”[p]

Ayaka looked delighted to have won the bet.[p]
“Just like I said. Not even one second.”[p]
[auto_chara name="翔太" face="serious" left=180]
“Hold on. He knocked it away, so that one doesn't count.”[p]

Shota demanded a correction.[p]
[auto_chara name="龍也" face="angry" left=50]
“Either way, he made a sound. We do it again.”[p]

Ryuya spoke without letting me up.[p]
“Shota. Do it again.”[p]

He jerked his chin in command.[p]
[auto_chara name="拓海" face="level1_shout" left=120]
“Stop it![l] Let me go!”[p]

I screamed.[p]
I'd had enough.[l]
_ The thought of that pain coming again was unbearable,[l]
_ but worse was discovering how deeply humiliating it was to have all control over my body taken away.[p]
It forced me to confront my helplessness in the cruelest way.[p]
I would never forgive them.[l]
;ここで挿絵入れたい。復讐を誓うシーン
_ I'd make them suffer the same thing—[l] no, something worse.[l][r]
I swore it.[p]

As I shouted, my freshly burned wrist scraped against the ground.[p]

My vision went white with pain. Beyond it, the three of them were laughing.[p]

The thought of asking for help no longer crossed my mind.[l][r]
Instead, I glared at them one by one, determined never to forget their faces.[p]
[auto_chara name="翔太" face="nastysmile" left=180]
“Okay, here comes number two.”[p]

Shota brought another freshly lit cigarette toward me.[p]
This time, to keep me from knocking it away,[l]
_ he gripped my arm tightly with his dominant hand.[p]
*ch1_illusion
[playse storage=se/tinnitus.ogg volume=100 buf="0"]
[chara_hide_all]
[bg storage="white.png" time=80]
[wait time=300]
[playse storage=se/white_noise.ogg volume=100 buf="1"]
[bg storage="black.png" time=300]
[fadeoutbgm time=3000]
[delay speed="120"]
At that moment,[l] all sound vanished from the world—[p]
[resetdelay]
[wait time=1000]
Ever since the incident on the rooftop, I had been thinking about that “vision.”[p]
Almost none of it made sense, yet for some reason, there was one thing I felt certain of.[p]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
That strangely lifelike vision had felt as though it had been forced on me.[p]
And somehow, I suspected the force behind it was my own.[p]
Maybe my heightened emotions had turned my own thoughts into something I was forced to see.[p]
I couldn't explain it, but I was sure of that.[p]
And I did have a little evidence.[p]
First, everything in the vision had fallen within the limits of what I knew.[p]
On my way home that day, I glanced at the flower bed by the front gate.[l]
_ It had been covered by a blue tarp, presumably for maintenance—a tarp that hadn't been there that morning.[p]
But when I looked down in the vision,[l]
_ I'd seen the familiar bed full of colorful flowers.[p]
What I'd seen didn't match reality.[l]
_ The vision had shown the flower bed the way I thought it looked, not the way it really was.[p]
The second piece of evidence was what I remembered from researching death by falling.[l]
_ I'd looked up what happened during a fall and how the human body broke down when it struck the ground.[p]
The vision closely resembled the online articles I'd read then.[p]
From all this, I suspected that I had created the vision with some power of my own.[p]
And I had formed a hypothesis: perhaps I could trigger it deliberately.[p]
[fadeoutbgm time=3000]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
[stopse fadeout=1000]
[wait time=1000]
[font color="#CFE8FF"]
[playbgm storage="ability_theme.ogg" loop=true volume=80 fadein=true time=1500]
Everything moved so slowly that time seemed to have stopped.[l]
_ Shota stood frozen in place, his eyes wide.[p]
Through the hand touching Shota,[l]
_ my thoughts flowed into him.[p]
Then my senses merged with his.[p]
Through Shota's eyes, I saw the two figures grappling in front of him.[p]
Then Ryuya released Takumi[l]
_ and lunged at Shota, who stood rigid as a mannequin.[p]
[playse storage=se/pushdown.ogg volume=100]
[cg storage="ch01_cg_shota_nightmare.webp"]
[bg storage="ch01_cg_shota_nightmare.webp" time=200]
He seized Shota by the shoulders and shoved him down,[l]
_ then slowly straddled him.[p]
Shota couldn't resist at all.[p]
Ryuya took the cigarette from Shota's hand.[p]
He pinned Shota's face with his left hand[l]
_ and lowered the cigarette in his right.[p]
What was he going to do?[p]
The cigarette grew larger and larger,[l]
_ coming too close for Shota's eyes to focus on it.[p]
He realized[l] Ryuya was aiming for his eye.[p]
But he could neither fight back nor even close his eyes.[l]
_ In the end, he was completely helpless.[p]
[playse storage=se/fire.ogg volume=100]
[bg storage="white.png" time=50]
[wait time=500]
[bg storage="black.png" time=70]
[wait time=500]
[bg storage="white.png" time=30]
[wait time=500]
[bg storage="black.png" time=300]
To fry an egg,[l]
_ you crack a raw egg into a hot pan.[p]
The clear part hardens and turns white in the heat.[l]
_ The proteins denature and coagulate.[p]
And the change is irreversible.[l]
_ Once the egg turns white, it never becomes clear again.[p]
The cornea is made primarily of protein.[l]
_ The lit end of a cigarette can apparently reach nine hundred degrees Celsius.[p]
[wait time=1000]
“Nnngh—”[p]

Pain tore through Shota's skull.[p]
The cornea is among the body's most pain-sensitive tissues.[p]
Every part of him was consumed by the sensation of pain.[p]
It hurt.[l] It was agony.[l] He couldn't bear it.[p]
An incoherent moan escaped his lips.[p]
He couldn't think.[p]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
Suddenly, his vision brightened.[p]
Ryuya had lifted the left hand pinning Shota's face.[p]
Was it over?[p]
Still straddling Shota,[l]
_ Ryuya put a fresh cigarette between his lips and lit it.[p]
[playse storage=se/writer.ogg volume=100]
He drew a deep breath and exhaled toward the sky.[p]
Then, with his other hand,[l]
_ he covered Shota's clouded eye.[p]
Ryuya looked down and mouthed something.[p]
With his remaining good eye,[p]
Shota read his lips.[p]
[bg storage="white.png" time=80]
[wait time=500]
[bg storage="black.png" time=300]
[delay speed="120"]
[font size=40 color="#B8DFFF"]
YOU MADE...[p]
[wait time=500]
[font size=46 color="#B8DFFF"]
A SOUND...[p]
[wait time=500]
[font size=52 color="#B8DFFF"]
[quake time=300 hmax=2 vmax=10]
SO ONE MORE TIME.[p]
[resetdelay]
[resetfont]
[wait time=500]
[fadeoutbgm time=3000]
[bg storage="bg_rooftop_day.webp" time=600]
[playse storage=se/wind_rooftop.ogg volume=100]
[wait time=500]
“AAAAAAAAAAAAAAAAAAAAAAAGH!”[l][r]
[quake time=1200 hmax=8 vmax=30]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
At that moment, Shota clutched both eyes,[l]
_ let out a terrible scream, and rolled across the ground.[p]
Startled, Ryuya released me, stood, and moved toward him.[p]

[auto_chara name="龍也" face="impatience" left=50]
“Hey, what's wrong?[l] Are you hurt?”[p]
Ryuya frowned in confusion.[p]
[chara_hide_all time=300]
At the sound of Ryuya's voice, Shota yelped and scrambled backward,[l]
_ his face contorted with fear.[p]
Looking closer, I saw that the ground where he'd been was wet.[l]
_ Shota had wet himself.[p]
Ryuya was speechless.[l]

[auto_chara name="綾香" face="anxiety" left=300]
_ “Shota—”[p]

Ayaka couldn't manage another word.[p]
[chara_hide_all time=300]

A silence fell among the three who had been laughing moments ago.[p]

No one was looking at me.[l][r]
But this time, I was the one who had created the silence.[p]

My heart, meanwhile, was pounding.[p]
[fadeoutbgm time=3000]
[playse storage=se/heartbeat.ogg loop=true volume=100]
[wait time=1000]
For one instant, I'd imagined the future I feared most.[p]
Having my eyes burned—the worst thing that could happen.[p]
But even if it was only a hallucination,[l]
_ it had happened to Shota instead of me.[p]
Even with him cowering before me, what filled my chest was not guilt, but the thrill of success.[p]

My burned wrist still throbbed.[l][r]
Yet even that pain no longer felt like something I could only endure.[p]

For the first time, I had stopped them.[l][r]
That realization spread through me as quickly as the fear.[p]

I couldn't look away from Shota writhing on the ground.[r]
Without realizing it, the corners of my mouth had begun to lift.[p]
Now I knew my theory about my “ability” was correct.[p]
[stopse fadeout=3000]
[wait time=1000]
[playse storage=se/wind_rooftop.ogg volume=20]
[wait time=3000]
@jump storage="chapter2.ks" target="*chapter2"
