<h3> League of Tomb Raiders  <\h3>

//variable from Intruduction
VAR cool = false
VAR mean = false

//variable from Dialog tree 1_part1
VAR friendly = false
VAR fight = false

//variable from Obi-Wan
VAR Trustworthy = false
VAR Suspicious = false
VAR Resourceful = false
VAR Fearful = false

//if obiwan alive
VAR alive = true

//path
VAR less_traveled_path = false
VAR narrow_path = false
VAR mysterious_path = false
VAR shortest_path = false

//END
VAR Greedy = false
VAR Curious = false
VAR Cautious = false
VAR suspicious = false

//Intruduction scene
What kind of tomb-robbing adventurer you wish are?
    *[cool]
        "You are a famous, seasoned, tomb-robbing adventurer with years of experience traveling to dangerous locations.
        ~cool = true
        ->begin
    *[mean]
        "You are a quiet, no emotion,selfish tomb robber adventurer with a lot of survival skills, and you have many years of experience in traveling alone to dangerous places.
        ~mean = true
        ->begin
    
=begin
One day, you found out there is a mysterious ancient building locate in uncharted jungle in the heart of South America. You also heard that there is a priceless treasure hidden in it. You wish to bring it out and sale a great prices."
    *{cool == true}
        You know such a dangerous place like this, it is very difficult to survive and find the treasure alone. Choosing teammates is the best way, and it also indirectly increases the success rate of treasure hunting. 

        Two days later, you saw your teammates. Which are:
        -> main
    *{mean == true}
        You know such a dangerous place like this, it is very difficult to survive and find the treasure alone. But you still decided to choose go by yourself.
        ->main_1

You found following people who had a great experiences:
=== main ===
 * [A Tall Chinese guy]
    His name is Hu: An experienced tomb robber with years of experience and skills. He is good at defences and found the way.
    -> main
 * [Cow Boy style Girl with jeans]
    Her name is Amy: A bold archaeologist, she has a high reputation in the field of archaeology. She speak more than 8 languages and understand some ancient script.
    -> main
 * [A fat boy]
    His name is Fat Boy Wang: A technician who is good at blasting and mechanical work, he can provide technical support and great shooting skills when needed.
    -> main
 * [A burly man with long knife]
    His name is Yang and he is a japanese warriors, but he is super quiet.
    -> main
 * [A Female American soldier with metal umbrella]
    Her name is Sherry: A female American soldier with a amount of military experiences.
    
Everything is prepare. Everyone recommends you as a leader and It's time to go now!
// First scene
**{cool == true}
Finally, the times has come. As you and your team make your way through the dense foliage, you realize that this jungle is unlike any other you have ever encountered. The trees are tall and imposing, their thick trunks covered in vines and moss. The air is thick and humid, with the sounds of exotic birds and animals echoing through the treetops.
    
You and your team start to navigate your way through the jungle, following a map that you have been given. However, the terrain is treacherous, and you soon find yourself lost and disoriented. The map is of little help, and fat boy Wang begin to wonder if you will ever find your way out of this dense jungle. Sherry's exceptional auditory skills came in handy as she heard some sounds that didn't belong to the forest. Everyone followed the sound and eventually discovered a village. 
->choice_1

=== main_1 ===
**{mean == true}
Finally, the times has come. As you make your way through the dense foliage, you realize that this jungle is unlike any other you have ever encountered. The trees are tall and imposing, their thick trunks covered in vines and moss. The air is thick and humid, with the sounds of exotic birds and animals echoing through the treetops.

You start to navigate your way through the jungle, following a map that you have been given. However, the terrain is treacherous, and you soon find yourself lost and disoriented. You start to navigate your way through the jungle, following a map that you have been given. However, the terrain is treacherous, and you soon find yourself lost and disoriented. After the a long search, you eventually discovered a village. 
->choice_1

//Dialog tree 1 
=== choice_1 ===
<h3> Dialog tree 1 <\h3>
*{cool == true}
Wang: "I feel like this village weird. Why is it located in a prehistoric forest?"
Amy: "I agree, It is indeed unusual for a village to be located in a prehistoric forest."
Hu: "Okay, But Should we go inside and take a break?"

As you leader ofthe team, Should we?
    ** [Yes, let's go to the village]
        ->Dialog_tree_1_part1
    ** [No, let's go!]
    "You and your team chose to ignore the existence of the village due to suspicion. You set off into the depths of the forest and got lost soon. With the attack from animals and weather, A week later, your food and water supplies ran out. It's over, Rest In Peace.
        ->END
        
*{mean == true}
You are super tired and it's almost night time.
What should you do now?
    ** [Yes, I shoulds go to the village]
        ->Dialog_tree_1_part1
    ** [No, let's go!]
    "You chose to ignore the existence of the village due to suspicion. You set off into the depths of the forest and got lost soon. With the attack from animals and weather, A week later, your food and water supplies ran out. It's over, Rest In Peace.
    ->END

=== Dialog_tree_1_part1 ===
Obviously, the villagers saw the expedition team. Among them, several courageous villagers came to the expedition team with weapons. Things are beyond everyone's comprehension.

*{cool == true}
Hu: "it seen like something is out of control."

 **[Fat Boy Wang: What are they doing?We should attack them!]
    ~fight = true
    Hu:Calm Down! Wang, I believe they are friendly. But we just don't understand
    ***{fight == true}
    You:"Wait! Wang, Stop!."
    It's too lates, You and your team got more angry villagers attack, things are getting out of hand. The mission of finding treasure is failed
    -> END
    
 **[Hu: We should wait and see what is going on]
 Your team keeps the safe distance from the villagers, and things come to a standstill. Everyone is nervous and scary, now the case it depends on who will step the first action.
    
    Sherry:"This is not a perfect solution, what's next?"
    //choice 1
    *** You: We should speak and explain. Amy, Could you handle it?
    ~friendly = true
    ****{friendly == true}
    ->Dialog_tree_1_part2
    
    //choice 2
    *** You:"we attack them first, let's go!"
    ~fight = true
    ****{fight == true}
    You and your team got more angry villagers attack, things are getting out of hand. The mission of finding treasure is failed
    ->END
    
 **[Amy:Let's me speak to them and see what happened]
    ~friendly = true
    ***{friendly == true}
    ->Dialog_tree_1_part2
    
 **[Yang: I can finish them in 1 mins]
    ~fight = true
    ***{fight == true}
    You:"Wait! Yang, Stop!."
    It's too lates, You and your team got more angry villagers attack, things are getting out of hand. The mission of finding treasure is failed
    ->END

*{mean == true}
    You:"Are you guys all blind? I am not dangerous"
    
    **villager:"Who are you?"(In spanish)
    
    You:"Drop you weapon before I talk to you! you stupid."
    
    ***villager:"I don't speak English!"(In spanish)
    
    ~fight = true
    ****{fight == true}
    "You see the villagers' aggressive demeanor and decide to take the initiative. You take out a dart and launch a surprise attack at one of the villagers. The other villagers, upon seeing this, launch an attack against you as well. Although the villagers ' combat abilities are not great, their sheer numbers overwhelm you quickly and you soon find yourself unable to defend yourself."
    
    You just remember you have a translate machine in your bagpack, You take it out and start translate it.
    ->Dialog_tree_1_part2

===Dialog_tree_1_part2===
*{cool == true}
It's surprise that the the villagers speak Spanish and a little English. Which solve most of the problem because Amy could speak spanish. As you and your team stumble through the jungle and found the village, everyone decided to take a break in the village and discover unique buildings, cuisine, crafts, traditional festivals, and more. In addition, Hu, Amy and you could interact with the villagers  and learn more about the history and stories of the region.

**{friendly == true}
    You: "Hi, we are the visitor and it's any place you suggest?"
    Amy(translate in Spanish)
    ***{friendly == true}
    villager_1:"Hello my friend. We have many beautiful landscape here."
    You: "Excuse me, I was wondering if you could help me. I'm looking for a treasure temple that's rumored to be around this forest. Have you heard anything about it?"
    ****{friendly == true}
    villager_1:"Treasure temple? I'm sorry, I'm not sure what you're talking about."
    Amy: I think you might have heard something about it. Some senior or people say that there's an old palace hidden in the nearby mountains, and that it's filled with treasure.
    You: That's exactly what we are looking for! Do you know where I can find it?
    *****{friendly == true}
    Villager 2: Oh! Do you mean the "Evil dragon" I wouldn't recommend going up into this mountains. It can be dangerous, especially if you're not familiar with the terrain.
    Amy: But what if there really is treasure there? I have to at least try to find it.
    ******{friendly == true}
    Villager 1: That's true. And even if there is a palace up there, it's likely that it's been looted already. Lots of people have gone looking for it over the years.
    *******{friendly == true}
    Villager 2: And even if you don't find any treasure, the mountains themselves are a treasure. They're beautiful and full of wildlife.
    Amy: You're right. I should be grateful just to have the opportunity to explore this area. Thank you for your advice.
    ********{friendly == true}
    Villager 1: If you're determined to go up there, I would suggest asking some of the local guides called Obi-Wan for help. He know the "Evil Dragon" mountains well since he went there when he was young, and he can help you find quick safe road and save more time.
    You: Okay, The local guides Obi-Wan, where did he lived?
    *********{friendly == true}
    Villager 1: He lived in the backside village, you could found him soon!
    Amy and You: Thank you!
    **********{friendly == true}
    Villager 2: Of course. And if you do find anything interesting up there, be sure to let us know! We're always curious about what's hidden in our mountains.
    ->Dialog_tree_1_part3
    
*{mean == true}
It's surprise that the the villagers speak Spanish and a little English. Which solve most of the problem because you can use translate machine. As you stumble through the jungle and found the village, you decided to take a break in the village and discover unique buildings, cuisine, crafts, traditional festivals, and more. In addition, you could interact with the villagers and learn more about the history and stories of the region.

    **{fight == true}
    You: "Hi, you! Yes I am the vistor and..."
    Although the misunderstanding of yesterday's fight was resolved, none of the villagers wanted to talk to you.
    You:" Okay, stupid, I talk to another one, see you."
    
    ***{fight == true}
    You: "Hi, you! Yes I am the vistor."
    villager_1:"Okay! What do you want?"
    You: "I'm looking for a "Evil Dragon" that's rumored to be around this forest. Have you heard anything about it?
    ****{fight == true}
    villager_1:"Evil Dragon? I'm sorry, I'm not sure what you're talking about."
    You: "Are you fucking kidding? You don't know anything?"
    *****{fight == true}
    Villager 1: "I don't know! Just leave me alone!"
    You:"Okay, WTF, I don't need your help."
    
    You talk to another village
    ******{fight == true}
    You: "Hi, you! Yes I am the vistor."
    Villager 2: "What? You need help?"
    *******{fight == true}
    You:"I'm looking for a "Evil Dragon" that's rumored to be around this forest. Have you heard anything about it?"
    Villager 2:"If you're determined to go up there, I would suggest you go home!"
    ********{fight == true}
    You:"WTF? You talking shit about me?"
    Villager 2:"Yeah, you go to temple and crying like a baby"
    *********{fight == true}
    You:"You!"
    Villager 2: "A useless, noisy kid! hahahahaha!"
    **********{fight == true}
    When you were very angry, there was a weather-beaten man with deep wrinkles on his face. He advises you and Village Name 2 not to quarrel. He takes you to his home and he say he can answer all your questions.
    ->DialogTree_2_part1_mean

=== Dialog_tree_1_part3 ===
*{cool == true}
After the talk, You share the talks to all teammates. Everyone understand that it's important to always be cautious when exploring unknown areas. Respect for local culture and customs is crucial, and it's important to avoid any actions that could damage the environment or have any adverse impact on the locals. If there are any questions or concerns, it's best to seek help and advice from the locals.

You realize that found a local guide Obi-Wan is significant. He may offers to help the team find the way to the temple. 2 hours later, You and Amy found Obi-Wan. Obi-Wan is a weathered man with deep wrinkles etched into his face. 
    ->DialogTree_2_part1_friendly


=== DialogTree_2_part1_friendly ===
//Dialog Tree 2: The Guide
<h3> Dialog tree 2 <\h3>
*Obi-Wan: "Welcome, have a seat, my friend"
You:"I heard "Evil Dragon" Mountain. It is dangerous and you went there before?"

**Obi-Wan: "That's correct, my friend. If I guess correctly, you must looking for the temple"
You:" Yes, Obi-Wan, and we need your help."

***Obi-Wan: "There is no free meal, My friend"
You:" How Much do you want?"

****Obi-Wan: "We should talk more now. My friend"
After the conversation, He seems knowledgeable about the area and offers to lead you through the jungle in exchange for a fee. But the fee he requested is more expensive than the price you assume.

Now, It's time for the choice.
->DialogTree_2_part2


=== DialogTree_2_part1_mean ===
//Dialog Tree 2: The Guide
<h3> Dialog tree 2 <\h3>
*Obi-Wan: "Welcome, have a seat, my friend"
You:"I heard "Evil Dragon" Mountain. It is dangerous and you went there before?"

**Obi-Wan: "That's correct, my friend. If I guess correctly, you must looking for the temple"
You:" Yes, Obi-Wan, and we need your help."

***Obi-Wan: "There is no free meal, My friend"
You:" How Much do you want?"

****Obi-Wan: "We should talk more now. My friend"
After the conversation, He seems knowledgeable about the area and offers to lead you through the jungle in exchange for a fee. But the fee he requested is more expensive than the price you assume.

Now, It's time for the choice.
->DialogTree_2_part2_mean

=== DialogTree_2_part2_mean ===
You understand a good choice is significant, you should.....
*[Trustworthy]
~Trustworthy = true
You decide to trust the Obi-wan and pay him the fee. You also promise him will pay extra tips, but he needs to lead you through the jungle with ease and safe.
    ->DialogTree_3_part1_mean
    
*[Suspicious]
You don't trust Obi-wan and refuse to pay him. Because of the distrust, you refused Obi-Wan. You decided to find the "Evil Mountain youself. You start the trip tomorrow. Two days later, As you navigate through the dense jungle. But soon realize that you are more lost than ever before. REST IN PEACE!
->END


=== DialogTree_2_part2 ===
You understand a good choice is significant, you should.....
//your character traits
*[Trustworthy]
~Trustworthy = true
You decide to trust the Obi-wan and pay him the fee. You also promise him will pay extra tips, but he needs to lead you and your team through the jungle with ease and safe.
    ->DialogTree_3_part1
    
*[Suspicious]
~Suspicious = true
You don't trust Obi-wan and refuse to pay him. Because of the expensive prices, you refused Obi-Wan. You decided to find the "Evil Mountain youself. You and your team start the trip tomorrow. Two days later, As you and your teammates navigate through the dense jungle. But soon realize that you are more lost than ever before, you guys come across a fork in the path(With 5 roads here). Wang's technology support is not useful. Even Sherry has no idea which way we should choose which way to go to get closer to Evil Mountain.
    ->DialogTree_4_part1
    
*[Resourceful]
~Resourceful = true
You negotiate with Obi-wan and agree to pay him only if he helps you find the temple quickly. He agrees, and you and your team start the trip tomorrow.
    ->->DialogTree_3_part1
    
*[Fearful]
~Fearful = true
You cling to the Obi-wan and pay him whatever he asks, hoping that he will keep you and your team safe. You and your team start the trip tomorrow.
**{cool == true}
The next day, you and your team meet the Obi-Wan at the designated location. Obi-Wan bring another different man. He is a tall, muscular man with a rugged look and piercing blue eyes. He looks at you and your team with a sense of determination. He explains the situation to you, but he also assuring you that he will protect you and bring you back safely with the treasure. Even though some teammates are confused, but with the guide by your side, everyone feel confident that we can overcome any obstacle that comes your way. 

    For days, you and your team trek through the unforgiving landscape, fighting off dangerous creatures. Finally, when you almost reach the location where the temple is hidden. Obi-Wan and his man suddenly turns on you and it seems like it's about to pull a weapon out of its pocket. When HU and Yang thought they needed to pull out their weapons and attack, Sherry and You promptly intervened. You reminded them that they could not assume someone was a criminal based on their own ideas. Even hearing the team leader's advice, HU and Yang still hold their weapon. 
    ***{Fearful == true}
        You:"Everyone drop your weapon. Obi-Wan, We need to talk and calm down!"
        
        After the truely communcation, Everyone temporarily put down their weapons. You just found that Obi-Wan and his man only wanted to take out a water bottle from their pocket, and not attack them.
        
        ~Fearful = false
        ~Trustworthy = true
        The team felt regretful and sorry because they had almost committed an irreversible mistake. They deeply realized the importance of staying calm and evaluating the entire situation in an unfamiliar environment. Obi-Wan understand it. He also say sorry and the reason why he brought his man is because the distrust of our team. You and Obi-Wan decided to take it as a lesson, act more cautiously, and continue exploring unknown temple together.
            ->DialogTree_3_part1
            
    ***{Fearful == true}
        You:"Obi-Wan, you make me disappoint! That's what you want?! Okay! Let's fight!"
        
        ****Obi-Wan:"Jim, Are you serious, why you do that?"
        
        You:"it's too late!"
        
        *****Obi-Wan:"No, Stop! Let's us explain!"
        
        You finish Obi-Wan and his man,but also just found that Obi-Wan and his man only wanted to take out a water bottle from their pocket, and not attack them. You make a stupid big mistake!!!!!!!!!
        
        ****** Sherry:"I told you! Why you so angry! Why?"
        You:"I am sorry, I didn't realize this is the result."
        ******* Amy:"You know what, Stay away from me and sherry"
        
        ~alive = false
        but the biggest problem now is you doesn't know how to go back to village or temple!
            ->DialogTree_4_part1

=== DialogTree_3_part1_mean ===
As you and obiwan journey to find the temple, Obi-Wan knew the terrain like the back of their hand and had a deep understanding of the area's history and culture. Obi-Wan led the you through winding paths and rugged terrain, making sure to point out important landmarks and natural features along the way. 

As you approached the temple, Obi-Wan use his knowledge to identify subtle signs and markers that would have gone unnoticed by others, leading you down a narrow path that wound its way through thick jungle foliage. Finally, you and obi-wan emerged into a clearing where the temple stood, its imposing stone walls rising up into the sky. 

*{Trustworthy == true}
Obi-Wan: My friends, you here now!"
YOU:"Wow, everything went faster than what I thought!"

**Obi-Wan: "Well, but I will not go inside the temple."
You open the bagpack and take out the money
YOU:" Understand, here is half of the fee! Obi-Wan, I give you the rest when I back"

***Obi-Wan: "May the force be with you, My friend"
You:" What is that mean?"

****Obi-Wan: "Good Lucky on you!"
You:" Okay, I thought you talking shit about me"
->DialogTree_MEND


//Dialog Tree 3: The Temple
=== DialogTree_3_part1 ===
<h3> Dialog tree 3 <\h3>
As the team embarked on their journey to find the temple, Obi-Wan knew the terrain like the back of their hand and had a deep understanding of the area's history and culture. Obi-Wan led the team through winding paths and rugged terrain, making sure to point out important landmarks and natural features along the way. Obi-Wan also shared his fascinating stories when he was young and insights about the local flora and fauna, giving the team a deeper appreciation for the environment ment they were passing through.

As you and your team approached the temple, Obi-Wan use his knowledge to identify subtle signs and markers that would have gone unnoticed by others, leading the team down a narrow path that wound its way through thick jungle foliage. Finally, the team emerged into a clearing where the temple stood, its imposing stone walls rising up into the sky. 
*{Trustworthy == true}
Obi-Wan: My friends, you here now!"
Wang:"Wow, everything went faster than what I thought!"

**Obi-Wan: "Well, but I will not go inside the temple,so I just wait for you here."
Amy:" Understand, Obi-Wan, thanks for your help."

***Obi-Wan: "May the force be with you, My friend"
You:" What is that mean?"
Hu:" I don't know, maybe I guess he is saying see you soon?"

****Amy: "No, he mean good lucky on us! Let's go!"
Everyone: "Oh! Let's go!"
->DialogTree_END

//Dialog Tree 4: The way
=== DialogTree_4_part1 ===
<h3> Dialog tree 3 <\h3>
As the situation happened, you and your team is now facing which way should we enter. Without the Guide help, we don't know which way should we enter. Since you are the Leaders, You will choose:
    *[A less traveled path]
    ~less_traveled_path = true
    The team was walking a less traveled path, and to their horror, the path became more and more branched as they progressed. You and the team were unsure of what was happening. Sherry and Hu immediately looked around, but unfortunately, they both fell into a deep pit and let out screams. 
        **{less_traveled_path == true}
        You, Wang, Yang, and Amy ran over to check on them and discovered it was a snake pit. You saw a snake king, larger than a truck, had already eaten both of them. Amy screamed in terror and caught the snake king's attention. The snake king quickly climbed out of the pit and attacked, and it was clear that none of you were a match for it. Wang and Yang stayed behind to hold off the snake king, while you and Amy fled in panic. Amidst the chaos, you and Amy miraculously stumbled the temple.
        ***[It's a good news, but also sad.]
            ->DialogTree_END
            
    *[A familiar path]
    You choose the path that looks more familiar, hoping to avoid any unexpected dangers. two hour later, you and your team are back to where you are?!
        ->DialogTree_4_part1
        
    *A narrow path
    ~narrow_path = true
    The team was walking along a narrow path, and to their horror, the path became narrower and the surrounding area filled with mist as they progressed. You and the team were unsure of what was happening. Suddenly, Wang accidentally stepped into thin air and let out a scream! 
    **{narrow_path == true}
    Sherry and Hu quickly looked around and realized that you were all on a cliff. As the team mourned for Wang, a large group of black crows swooped down on you. You and your team fought back, but the narrow cliff limited your defense. Outnumbered, you all fell off the cliff.
        ->END
        
    *[A mysterious path]
    ~mysterious_path = true
    Not long after, you and your team came across a weird statue. The statue had the upper body of a chicken and the lower body of a horse. There were also many human bones nearby. Obviously, there are others had been there before, but had unfortunately met their demise. 
    **{mysterious_path == true}
    Wang and Hu observed the area around the statue and discovered some writing. Amy translated the text and found a terrifying message: "Those who approach must leave quickly, otherwise they will be punished." Just as you were all puzzled by this, you were suddenly surrounded by a pack of wolves. You and your team fought back, but were unable to resist the overwhelming number of wolves. Everyone is died. Rest in Peace
        ->END
        
    *A shortest path
    ~shortest_path = true
    You choose the path that looks the shortest, hoping to reach the temple as quickly as possible. You have been wandering in this forest for a long time. It was also attacked by many wild beasts. Many teammates died here, and you also regret that you didn't ask obi-wan to be your guide. 
    
    **{shortest_path == true}
    If you had a guide, there wouldn't be so many casualties. But there is no regret medicine in the world. When you were desperate and your supplies were low, you and Amy found the temple in a daze.
        ***[It's a good news, but also sad.]
        ->DialogTree_END


//END Scene
=== DialogTree_END ===
<h3> Dialog tree 4: THE END GAME <\h3>
As the exploration of the temple's interior progressed, you encountered numerous traps and mechanisms, which you managed to navigate with caution and bravery. After many trials and tribulations, you and your team finally arrived at the treasure room, filled with vast amounts of gold, diamonds, and pearls, as well as many peculiar and exotic artifacts. Your teammates eagerly began stuffing their bags with the treasures. Suddenly, Amy noticed some ancient writing on the wall that read, "You have obtained the treasure you sought. Please leave some for those who come after." You and your team pondered the message for a long time. Some thought it posed no threat, while others believed it to be a warning that you should be cautious. 

As the leader of the team, what should you do?
*{friendly == true}
    [Greedy]
    ~Greedy = true
    **{Greedy == true}
    You and your team become consumed with the idea of finding the treasure and are willing to take risks and make sacrifices to get it, which is decided to ignore this warning! But as you reached for the treasure, you heard a low rumbling sound from deep within the vault. The ground shook beneath your feet, and you realized with horror that the entire vault was collapsing in on itself. Panic set in as you scrambled to grab as much treasure as you could, but it was a futile effort. The walls were crumbling, and the ceiling was collapsing, threatening to bury you alive.

    REST IN PEACE
        ->END
*{friendly == true}
    [Curious]
    ~Curious = true
    **{Curious == true}
    You and your team were determined to uncover the secrets behind the ancient writing on the wall, but in your eagerness, you forgot that danger can lurk around every corner. Time was slipping away, and before you knew it, the door to the treasure room suddenly closed shut, leaving you and your team trapped inside. Panic set in as you frantically searched for a way out, but it was too late. Your worst fears had come to pass, and you were all trapped with no hope of escape.
    ***{Curious == true}
    The atmosphere in the room grew increasingly tense as you and your team came to terms with the gravity of the situation. The air grew stale and suffocating, and you could feel the weight of impending doom closing in on you. The once glittering treasures around you now seemed like a curse, mocking your foolishness for not heeding the warning on the wall.
    ****{Curious == true}
    As the reality of the situation set in, a sense of hopelessness and despair washed over you. You knew that there was no way out, and that you were doomed to spend your final moments trapped in the treasure room. You huddled together with your team, as the darkness consumed you and your fate was sealed.

    REST IN PEACE.
        ->END

*{friendly == true}
    [Cautious]
    You and your team decided to obey the warning. You make sure everyone get the limit amount of treasure. But Wang doesn't listen to you. Wang is scrambled to grab as much treasure as he could, but the walls were crumbling, and the ceiling was collapsing, threatening to bury his alive. Even you and others try to save his life, it's useless. You couldn't help but feel grateful for your cautious approach. You knew that without your careful planning and preparation, All teammates will dead.
    <h1> Good ENDING <\h1>
        ->END
        
=== DialogTree_MEND ===
<h3> Dialog tree 4: THE END GAME <\h3>
As the exploration of the temple's interior progressed, you encountered numerous traps and mechanisms, which you managed to navigate with caution and bravery. After many trials and tribulations, you finally arrived at the treasure room, filled with vast amounts of gold, diamonds, and pearls, as well as many peculiar and exotic artifacts. You eagerly began stuffing their bags with the treasures. Suddenly, you noticed some ancient writing on the wall that read, "You have obtained the treasure you sought. Please leave some for those who come after." 

What should you do?
*{mean == true}
    [Greedy]
    ~Greedy = true
    **{Greedy == true}
    You become consumed with the idea of finding the treasure and are willing to take risks and make sacrifices to get it, which is decided to ignore this warning! But as you reached for the treasure, you heard a low rumbling sound from deep within the vault. The ground shook beneath your feet, and you realized with horror that the entire vault was collapsing in on itself. Panic set in as you scrambled to grab as much treasure as you could, but it was a futile effort. The walls were crumbling, and the ceiling was collapsing, threatening to bury you alive.

    REST IN PEACE
        ->END
*{mean == true}
    [Curious]
    ~Curious = true
    **{Curious == true}
    You were determined to uncover the secrets behind the ancient writing on the wall, but in your eagerness, you forgot that danger can lurk around every corner. Time was slipping away, and before you knew it, the door to the treasure room suddenly closed shut, leaving you and your team trapped inside. Panic set in as you frantically searched for a way out, but it was too late. Your worst fears had come to pass, and you were trapped with no hope of escape.
    ***{Curious == true}
    The atmosphere in the room grew increasingly tense as you came to terms with the gravity of the situation. The air grew stale and suffocating, and you could feel the weight of impending doom closing in on you. The once glittering treasures around you now seemed like a curse, mocking your foolishness for not heeding the warning on the wall.
    ****{Curious == true}
    As the reality of the situation set in, a sense of hopelessness and despair washed over you. You knew that there was no way out, and that you were doomed to spend your final moments trapped in the treasure room. As the darkness consumed you and your fate was sealed.

    REST IN PEACE.
        ->END

*{mean == true}
    [Cautious]
    You decided to obey the warning. You make sure everyone get the limit amount of treasure. You knew that without your careful planning and preparation, you will died here and it's always good to be careful.
    <h1> Good ENDING <\h1>
    ->END


