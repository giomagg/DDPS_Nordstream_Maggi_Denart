# Exploring the #NordStream Discourse on Twitter

_Paris, April 6th 2023_

<p align="justify">
This repository provides access to the code and the data used for the final project in the context of the course "Diving in the Digital Public Space" offered by CIVICA in the Spring of 2023 and taught by Prof. Jean-Philippe Cointet (<i>Sciences Po</i>), Prof. Marton Karsai (<i>Central European University</i>), and Armin Pournaki (<i>Sciences Po</i>). 
</p>

<p align="justify">
The project was developed by Giovanni Maggi and Louis Denart, master candidates in the Digital, New technologies and Public Policy specialisation of the <i>Sciences Po School of Public Affairs</i>. 
</p>

Here we present a summary of our digital investigation. 

## Table of Contents
- [Background](#context)
- [Methodology and Research Design](#Methods)
  * [Research Question](#res)
  * [Hypotheses](#hyp)
  * [Data Collection](#mdata)
  * [Methodology](#meth)
- [Results and Discussion](#results)
  * [Social Network Analysis](#SNA)
  * [Topic Modeling](#BERT)
  * [Descriptive Analysis](#stats)
- [Conclusion](#conclusion)
- [References](#ref)

<a name="context"></a>
## Background

<p align="justify">
On September 26th 2022, at around 2am, the Nord Stream 2 pipeline connecting Russia to Germany underwent an explosion which resulted in the failure of the system. Around seven hours later, its sister pipeline Nord Stream 1 underwent the same problems. The two resulted in underwater gas leaks in the territorial waters of both Sweden and Denmark around the Bornholm Island (DK). The explosions were immediately recognised on September 27th as intentional sabotage by Sweden, Russia, the European Union (EU), and NATO. While there are evidence to indicate the intentionality of the explosions (found by the Swedish authorities and backed up by German Police investigations), there are no proofs concerning the identities of the perpetrators, their motives, nor their means. Investigations are being carried on by Sweden, Denmark, Germany, and Russia but have yet to find conclusive evidence (Meredith, 2022; Tebel, 2023).
</p>

<p align="justify">
The journalistic coverage of the events has been debating the causes of the attack. On September 27th, the German news outlet <em>Der Tegesspiegel</em> claimed that the sabotaged had been the result of targeted attacks by submarines or divers (Hackenbruch et al., 2022). A couple of days later, on September 29th, <em>CNN</em> reported that Russian submarines were observed at the site of the sabotage in the days preceding the attack (Atwood, 2022). Nevertheless, on November 11th, <em>Wired Magazine</em>'s analysis of satellite images suggested that two large unidentified ships – which turned off their tracking systems – were at the site of the sabotage in the days leading up the events (Burgess, 2022). Moreover, and highly relevant to this study, on February 8th 2023 the American 1970 Pulitzer-prize winner Seymour Hersh published an article on his personal blog on <em>Substack</em> claiming that the United States perpetrated the attack – and that it was aided by Norwegian assets in doing so (see Hersh, 2023; Midolo, 2023).
</p>

<p align="justify">
The Nord Stream gas leaks come at a crucial point during the Russo-Ukrainian War which had already sparked tensions between the Russian Federation and the West (specifically with the EU) on crucial strategic infrastructure and on energy supply. Specifically interesting in this regard is the way in which the war already revived debates around European dependency on Russian natural gas supply – which at the time at the invasion made up the biggest share of gas imports for the EU (ISPI, 2022) – which the Kremlin weaponised in response to the EU's actions following the invasion of Ukraine (see Boute, 2022). Moreover, further embedding Nord Stream in the context of the Russo-Ukrainian War, it is relevant to point out that, even before the invasion, US president Joe Biden claimed he would have "end[ed] Nord Stream in the case of a Russian invasion (Shalal et al., 2022).
</p>

<p align="justify">
Against this background speculations have soared in the public sphere regarding the responsible actors for the sabotage. So far this has not resulted in any concluding evidence but has rather remained a game of pointing fingers. Officially, the Russian authorities have taken a strong position, and, on October 1st 2022, they blamed in front of the UN Security Council the United States to be behind the attack (Gardner & Lewis, 2022). Later, on October 29th, the Russian Ministry of Defence pointed also to the United Kingdom as a possible perpetrator (Faulconbridge & Ravikumar, 2022). Contrarily to Russia, the EU and NATO have yet to take an official position – although suspicions of a Russian involvement in the sabotage dominated the public sphere in the Western media (See for example Atwood (2022); Bennetts (2023); Welt (2022)). On March 7th, US officials were briefed on new intelligence suggesting that the attack was in fact caused by a pro-Ukrainian group (Entous et al., 2023; Reuters, 2023). The same day, a German journalists' network released an investigation in which they laid out how, according to their research, a pro-Ukrainian group had allegedly carried out the sabotage (Götschenberg et al., 2023).
</p>

<p align="justify">
Finally, as recently as March 27th, a Russian motion for an independent international investigation concerning the events failed to pass at the UN Security Council with only Russia, China, and Brazil supporting it (Nichols, 2023; UN Press, 2023). Robert Wood – deputy US ambassador to the UN – commented that <em>“[t]he United States was not involved in any way. Period”</em> (Al Jazeera, 2023).
</p>

<a name="Methods"></a>
## Methodology and Research Design

<a name="res"></a>
### Research Question 

<p align="justify">
Our research aims to explore how the game of pointing fingers is reflected in the Twitter debate. Specifically, because of the absence of concluding evidence from any of the investigations which have been carried on since the attack, and building on the highly heterogeneous public debate around the perpetrators of the sabotage, we ask:
</p>

> **To what extent are popular rumours about the perpetrator of the Nord Stream pipeline sabotage reflected in the Twitter discourse?**

<a name="hyp"></a>
### Hypotheses

<p align="justify">
Following from the brief qualitative work conducted in preparation to the study – which took into account the international press in order to understand the facts and speculations surrounding the Nord Stream sabotage – we developed three main hypothesis. These concern the topics which we expected to find in the Twitter discourse around the perpetrators of the attack.
</p>

<p align="justify">
Our first hypothesis is derived from the claims made by Russia both in front of the UN Security Council and on national television, as well as from the popularisation of such a narrative in the West following the publishing of Seymour Hersh's article. Moreover, analysing the <em>EUvDisinfo database</em>, an initiative created by the EU External Action Services to track disinformation concerning the Russo-Ukrainian War, we found this narrative to be quite prevalent (East StratCom Task Force, 2022). Therefore, our first hypothesis is: </p>

> ***H*<sub>1</sub>: The prevalence of Tweets suspecting the United States are behind the sabotage will be relatively high.**

<p align="justify">
Secondly, hypothesis number two is derived from the overall suspicion of Russia being behind the attack which has been quite prevalent in the journalistic discourse in many Western and European countries (See for example Atwood (2022); Bennetts (2023); Welt (2022)). No formal allegations have been put forward, and Harris et al. (2022) reported on the <em>Washington Post</em> that, as of December 2022, no concluding evidence were found to support this claim. Still, some public figures – such as US Energy Secretary Jennifer Granholm, German Economy Minister Robert Habeck, and an adviser to Volodymyr Zelensky – expressed their suspicion that Russia was behind the attack (Harris et al., 2022). Thus, our second hypothesis is: 
</p>

> ***H*<sub>2</sub>: The prevalence of Tweets suspecting Russia is behind the sabotage will be relatively high.**

<p align="justify">
Thirdly, we infer our third hypothesis mainly from the US intelligence allegations reviewed by the New York Times and which claim that a pro-Ukrainian group caused the explosion (Entous et al., 2023; Reuters, 2023). It is important to notice that EU officials distanced themselves from such claims (Barigazzi & Bayer, 2023).
</p>

> ***H*<sub>3</sub>: The prevalence of Tweets suspecting Ukraine is behind the sabotage will be relatively high.**

<p align="justify">
In addition to these three, we had some expectations about how these topics would be distributed in the different Twitter communities in the retweet social network. For this we build on the – still debated – literature on political bubbles on social media which shows how discussions online are structured around ideological affiliations – which are reinforced by the individual's interactions with these epistemic ecosystems (see e.g., Eady et al., 2019; Flaxman et al., 2016; Ruiz & Nilsonn 2023). The literature also finds that the ideological structure of our online networks influences our exposure, dissemination, and belief of the information we come across online (Ognyanova, forthcoming). In this context, information – especially false messages – spread further in ideologically similar communities while they are restrained by an ideologically integrated network structure (Stein et al., 2023).  This is because a person's probability of sharing a message online increases when it is aligned to the individual's previous beliefs and ideology (<em>ibidem</em>). Building on these intuitions, we can expect that different communities – all displaying different interests, ideologies, and identities – will focus on different aspects of the Nord Stream events in their discussions. Therefore, they will develop different narratives around the same event.

<p align="justify"> 
In our case, given the heterogeneity of the different allegations surrounding the perpetrator of the Nord Stream sabotage, we expect the topics of discussion to be highly different depending on the community. In turn, we expect the prevalence of the topics – namely those we hypothesised in <em><strong>H<sub>1,2,3</sub></strong></em> – to vary on a community base. In other words, we expected the degree of heterogeneity to increase the further we move away from a community in the retweet social network. If two communities are relatively close (i.e., they share many bridges relative to the number of nodes in each of them), then we can expect them to display similar topics while displaying subtle differences. On the other hand, if two communities are relatively distant (i.e., they do not share many bridges relative to the number of nodes in each of them), they will display more substantial differences in the topics and narratives present in each of them.
</p>

More formally, our fourth hypothesis is thus: 

> ***H*<sub>4</sub>: The degree of heterogeneity in the prevalence of popular rumors across different communities will be relatively high – and it will increase with the further apart two communities are located.**

<a name="data"></a>
### Data Collection

<p align="justify">
To analyze the Twitter network around the Nord Stream discourse, we first selected the hashtag that was most commonly used in Tweets associated to the incident: <b>#NordStream</b>. Utilizing Twitter’s Research API, we extracted Tweets and related metadata that included the respective hashtag, dating from September 26, 2022 – the day of the Nord Stream sabotage – to March 12, 2023. In total, the data set consisted of 702,243 Tweets. The data set included various attributes such as Tweet ID, Tweet content, time of Tweet creation, user ID, username, time of user creation, as well as information on the receiver of a Tweet (e.g., in the case of Retweets). For the analysis, the data was filtered to only include English and German-language Tweets. As a result, the final dataset consisted in total of 446,099 Tweets across 154,898 accounts.
</p>

<a name="meth"></a>
### Methodology

<p align="justify">
In order to answer our research question and the corresponding hypotheses, we employ social network analysis (SNA) in combination with topic modeling. Social network analysis is a method of mapping the interactions (characterized as “edges”) between individuals (characterized as “nodes”) in a social network (UK Home Office, 2016). We opted to deploy this method in order to better understand the structure of the Nord Stream discourse and this distribution of topics, as SNA allows for identifying the composition of a network, as well as key actors and communities. Furthermore, in contrast to more traditional research methods, social network analysis provides a unique perspective on the social interactions and relationships between actors within a network (Hanneman & Riddle, 2005).
</p>

<p align="justify">
We start the social network analysis of the Nord Stream discourse by defining the two main attributes of the network: nodes, which we identify as Twitter users within the Nord Stream network, and edges, which we classify as the interactions (Retweets, Quote Tweets, replies) between said users. Then, we divide the network into communities by calculating modularity with the Louvain method. In social network analysis, modularity is a measure of the strength of division of a network into communities. The Louvain method specifically is a community detection algorithm that iteratively optimizes modularity by hierarchically merging nodes into communities (Blondel et al. 2008).
</p>

<p align="justify">
Having associated Tweets and accounts with a respective community, we proceeded by performing topic modeling to determine the topics within the most prevalent communities. Since there was a significant difference in size between the examined communities, we chose to compute topic models for the communities separately to ensure that we capture relevant small-community topics for which a single topic model may not have been sufficiently fine-grained. Furthermore, it allowed setting different model specifications for the communities, which provided better results due to the heterogeneous community sizes. For the topic modeling, we used a multilingual BERTopic model. Developed by Grootendorst (2022), BERTopic is a topic modeling technique that extracts coherent topics through a modified class-based variation of the term frequency-inverse document frequency (TF-IDF) method. BERTopic has demonstrated to perform particularly well on short-text documents such as Tweets, and is therefore an appropriate choice for the present study. Prior to running the models, the data was cleaned.
 </p>

<a name="results"></a>
## Results and Discussion 

<p align="justify">
Our research results are presented in detail below. First, we introduce our initial findings based on the social network analysis of the Nord Stream discourse. Then, we proceed by examining the results of our topic models. Finally, we triangulate these findings with a descriptive analysis of the Nord Stream discourse to better contextualize our insights before turning to a brief discussion of our digital investigation.
</p>
 
<a name="SNA"></a>
### Social Network Analysis

<p align="justify">
In total, the Nord Stream discourse network consists of 154,898 nodes (representing Twitter users) and 446,099 edges (representing interactions among the users). The network diameter is 21, i.e., the greatest distance between any two nodes in the network is 21 degrees of separation. The average degree of the network is 2.187, indicating that each node had about two connections on average. In contrast, the maximum degree is 2110.
</p>
 
<p align="justify">
Then, we proceeded to calculate the modularity classes (indicating the communities) within the network. In total, the network was determined to consist of 1366 communities. The modularity score of 0.626 suggests a relatively strong modular structure in the network. The score falls in the higher end of the range (modularity ranges from 0 to 1), indicating that the communities within the network are quite cohesive. This means that there tend to be strong connections within the communities and rather weak connections between them.
</p>
 
<p align="justify">
The largest community (№ 180) comprises 178,486 Tweets and constitutes 40.0% of the network. The second largest community (№ 106) consists of 90,120 Tweets and comprises 20.2% of the network. The third (№ 246), fourth (№ 1029), and fifth largest (№ 271) communities contain 29,830, 26,485, and 24,455 Tweets, respectively, and represent 6.7%, 5.9 %, and 5.5% of the network. The communities ranked sixth (№ 479), seventh (№ 771), and eighth (№ 232) in terms of size comprise 22,914, 12,130, and 10,303 Tweets, respectively, accounting for 5.1%, 2.7 %, and 2.3% of the network. Together, the eight most prevalent communities nearly represent 90% of the entire Tweet corpus.
</p>
 
<p align="justify"> 
Below, in Figure 1, the Nord Stream discourse network is illustrated. Distinct colors denote the communities. In addition, we calculated the PageRank score of each node. PageRank is a measure of importance, which captures the relative importance of a given node based on the number and quality of its connections to other nodes. In this regard, we labeled the 30 accounts with the highest scores according to their Twitter account handle. The higher PageRank score, the larger a node is presented in the graph.
</p>
 
  <div align="center"> 
 <b>Figure 1: Nord Stream discourse network</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_1" src="https://user-images.githubusercontent.com/119635466/230784286-83a9fc1c-170b-450d-a8ae-470ea7f57519.jpeg">
 <br><br>
</div>

<p align="justify">
The graph supports the assumption of a rather decentralized network with distinct communities (see <em>H<sub>4</sub></em>). The largest community (№ 180) is denoted in blue. Among the most important nodes in this community are German far-left parliamentarian Sahra Wagenknecht (@SWagenknecht) and Alice Weidel (@Alice_Weidel), German parliamentarian leader of the German far-right populist party, AfD. The second biggest community (№ 106) is denoted in violet and revolves around several Russian government organizations such as the Russian Ministry of Foreign Affairs (@mfa_russia), the Russian Embassy to the United Kingdom (@RussianEmbassy), the Permanent Mission of Russia to the United Nations (@RussianUN), the Russian Embassy to the United States (@RusEmbUSA), and Russian Deputy Permanent Representative to the United Nations, Dmitry Polyanskiy (@Dpol_un). Moreover, we find numerous pro-Kremlin journalists and pages to be prominent actors within this community (e.g., @sahouraxo, @Consortiumnews, @afshinrattansi). German Far-left parliamentarian Sevim Dağdelen (@SevimDagdelen) is also a key actor and seems to be a link between the blue and violet communities. In general, community № 106 appears to be connected to most other communities. The third biggest community (№ 246) is denoted in green and features in particular the Irish far-left MEPs Mick Wallace (@wallacemick) and Clare Daly (@ClareDalyMEP). The fourth biggest community (№ 1029) is denoted in purple and considerably overlaps with community № 106. It includes, for example, the pro-Kremlin journalist Aaron Maté (@aaronjmate). The fifth biggest community (№ 271) is denoted in dark grey. It seemingly encompasses mostly pro-Ukrainian/anti-Kremlin accounts (e.g., @Tendar) as well as EU Commission President Ursula von der Leyen (@vonderleyen) and Norwegian Prime Minister Jonas Støre (@jonasgahrstore). The sixth largest community (№ 479) is denoted in red. The most prominent actors in this community are predominantly German-language journalists (e.g., @JZirm), news pages (e.g., @tagesschau) and civil society actors (e.g., @jakluge). The seventh largest community (№ 771) is denoted in orange and features prominent American conspiracy theorists (e.g., @JohnBasham) and pages (e.g., @KanekoaTheGreat). Finally, the eights largest community (№ 232) is denoted in turquoise and revolves around a conspiracy theory page (@EcommunistForum).
</p> 
 
<a name="BERT"></a>
### Topic Modeling

<a name="com_180"></a>
<p align="justify">
In community № 180, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230784809-8df61907-1978-4efb-bfad-170e23e9ffb3.png">14 topics</a>. Based on these topics, we interpretively determined three overarching topic clusters. Moreover, as the most prominent actors from the social network analysis already indicated, the topics within this community were nearly exclusively in German. The first cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included, among others, direct allegations by public figures (e.g., Topic 0) and conjectures about the course of events (e.g., Topic 8). The second cluster involves topics related to a recent news report that claimed that a pro-Ukrainian was behind the Nord Stream sabotage (e.g., Topic 2). A closer manual inspection, however, revealed that the dominant view within these topics was that this story was only meant to distract from the real perpetrator. The third cluster included topics insisting that Russia would be the victim in this matter (e.g., Topic 4). In Figure 2, Tweets exemplary of the three topic clusters are shown.
</p> 
 
 <div align="center"> 
 <b>Figure 2: Example Tweets from community № 180</b>
 <br><br>
</div>
 
 <div align="center"> 
<img width="600" alt="Fig_2" src="https://user-images.githubusercontent.com/119635466/230785264-18fef2bf-226c-451f-877c-151103382ab7.png">
 <br><br>
</div>
 
<a name="com_106"></a>
<p align="justify">
In community № 106, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230785440-0a7f97a1-5cc5-4b38-a7bf-1a91afd0cca6.png">15 topics</a>. Here, we determined three overarching topic clusters. The topics within this community were almost exclusively in English. Again, the first and most prominent cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included, among others, speculations by public figures (e.g., Topic 9) and references to an interview with US President Biden from February 7, 2022, which some view as proof of US involvement (e.g., Topic 2). The second cluster of topics mainly revolved around references to and corresponding speculations about the publication of Seymour Hersh’s “investigative” report (e.g., Topic 10). The third topic cluster consisted of topics according to which the EU would allegedly not be interested in a genuine investigation of the incident (e.g., Topic 7). In Figure 3, Tweets exemplary of the three topic clusters are shown.
</p>
 
 <div align="center"> 
 <b>Figure 3: Example Tweets from community № 106</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_3" src="https://user-images.githubusercontent.com/119635466/230785489-3dad8d7a-81c7-4979-99b4-193c2839cce8.png">
 <br><br>
</div>

<p align="justify">
In community № 246, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230785758-4a851926-c992-41d0-9baa-f6a827a4509d.png">10 topics</a>. Here, we determined two overarching topic clusters. The topics within this community were exclusively in English. These mainly included suspecting the US to behind the Nord Stream sabotage (e.g., Topic 7) and views contending that NATO partners would withhold information on the perpetrator (e.g., Topic 8). Moreover, several topics were directly linked to the Irish MEP Mick Wallace. In Figure 4, Tweets exemplary of the two topic clusters are shown.
</p> 
 
 <div align="center"> 
 <b>Figure 4: Example Tweets from community № 246</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_4" src="https://user-images.githubusercontent.com/119635466/230785729-53b2ff0b-3d51-4938-a418-d367548c1128.png">
 <br><br>
</div>

<a name="com_1029"></a>
<p align="justify">
In community № 1029, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230785783-b0112ee1-c115-453e-bc24-c1ceb852a4ed.png">5 topics</a>. Here, we determined three topic clusters. The topics were both in English and in German. As in the prior communities, the suspicion that the US had sabotaged the Nord Stream pipelines was widely reflected in the topics (e.g., Topic 0). The second topic cluster involved views that the spy balloons (or “UFO’s”) over the US were intended to distract from Nord Stream sabotage (Topic 3). The third topic cluster mainly included reports about an anti-war rally that took place in the wake of this year’s Munich Security Conference (Topic 4). In Figure 5, Tweets exemplary of the three topic clusters are shown.
</p> 

 <div align="center"> 
 <b>Figure 5: Example Tweets from community № 1029</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_5" src="https://user-images.githubusercontent.com/119635466/230785817-42cffe89-6e63-413a-8643-c41ab1eed458.png">
 <br><br>
</div>

<p align="justify">
In community № 271, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230785863-555b3b46-d1b7-441f-aa46-4f77e1640d89.png">3 topics</a>. Here, we determined two topic clusters. The topics were both in English and in German. In contrast to prior communities, here a cluster revolved about the perception that Russia was behind the Nord Stream sabotage (e.g., Topic 0). The other topic cluster focused on a conversation EU Commission President Ursula von der Leyen and Norwegian Prime Minister Jonas Støre had in the context of the Nord Stream sabotage (Topic 1). In Figure 6, Tweets exemplary of the two topic clusters are shown.
</p>
 
 <div align="center"> 
 <b>Figure 6: Example Tweets from community № 271</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_6" src="https://user-images.githubusercontent.com/119635466/230794470-a66d0e1d-b5ef-4aec-ab4e-d41fbf7ad61b.png">
 <br><br>
</div>

<p align="justify">
In community № 479, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230786029-96d9516f-36c1-42e0-9226-ad72c4a382fb.png">4 topics</a>. The topics were exclusively in German. The first topic cluster involves topics related to nuanced journalistic and expert contributions in Germany (e.g., Topic 3). Within the second topic clusters, the environmental impact of the Nord Stream incident is addressed (Topic 2). In Figure 7, Tweets exemplary of the two topic clusters are shown.
</p>
 
 <div align="center"> 
 <b>Figure 7: Example Tweets from community № 479</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_7" src="https://user-images.githubusercontent.com/119635466/230786050-cc222370-6f82-4244-835b-f43ccfab33ed.png">
 <br><br>
</div>

<a name="com_771"></a>
<p align="justify">
In community № 771, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230786100-6fae49d7-c4d8-4117-b2ee-042e96e9cc4d.png">3 topics</a>. Here, we determined two topic clusters. The topics were exclusively in English. The first cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included alleged insider information from a US Defense Department source, according to which Joe Biden ordered the Nord Stream sabotage (Topic 0). The second cluster of topics mainly revolved around references to and corresponding speculations about the publication of Seymour Hersh’s “investigative” report (e.g., Topic 1). In Figure 8, Tweets exemplary of the two topic clusters are shown.
</p> 

 <div align="center"> 
 <b>Figure 8: Example Tweets from community № 771</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_8" src="https://user-images.githubusercontent.com/119635466/230786154-bddcd77f-b4b4-42d1-8f3c-d5a11f17bb2c.png">
 <br><br>
</div>

<p align="justify">
In community № 232, we identified a total of <a href="https://user-images.githubusercontent.com/119635466/230786192-b870c447-5f35-4d93-9911-65a4e770567c.png">2 topics</a>. Here, we determined two topic clusters. The topics were exclusively in English. The first cluster revolves around satirical posts on the Nord Stream sabotage, mixed with conspiracy theories (Topic 0). The second cluster included suspicions after which the US was behind the Nord Stream sabotage (Topic 1). In Figure 9, Tweets exemplary of the two topic clusters are shown.
</p> 
 
 <div align="center"> 
 <b>Figure 9: Example Tweets from community № 232</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_9" src="https://user-images.githubusercontent.com/119635466/230786216-279fd134-6ccf-4977-bfc4-238690001555.png">
 <br><br>
</div>

<p align="justify">
In Table 1, a comparative overview of the topic clusters across the most prevalent communities is presented.
</p> 
 
 <div align="center"> 
 <b>Table 1: Overview of topic clusters across communities</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Table_1" src="https://user-images.githubusercontent.com/119635466/230786980-7eac44b0-64ee-4ff4-a79f-87a19e06eba6.png">
 <br><br>
</div>

<a name="stats"></a>
### Descriptive Analysis

<p align="justify">
Next, we triangulate these findings with a descriptive analysis of the Nord Stream discourse. Figure 10 shows the development of Tweets related to Nord Stream since the day of the sabotage on September 26, 2022 until March 12, 2023. We can observe that the discourse reached its first and highest peak only days after the incident before decreasing to a level of a few thousand Tweets per day. Another moderate yet suspicious peak happened in mid-December 2022. Manual inspection of the data showed that this peak was apparently due to a viral speech MEP Mick Wallace gave in the European Parliament, in which he hinted that the US was behind the sabotage of Nord Stream. Then, after the debate continued for a few months on a rather low level, it gained renewed attention after American investigative journalist Seymour Hersh published his article on February 8, 2023. Only a month later, a German journalists' network released an investigation after which a pro-Ukrainian group was behind the sabotage, drawing a similar level of attention.
</p> 
 
 <div align="center"> 
 <b>Figure 10: Histogram of all Tweets</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_10" src="https://user-images.githubusercontent.com/119635466/230947762-6a4cece6-6e7c-4790-9a80-36b4c78a7ccb.svg">
 <br><br>
</div>

<p align="justify">
To explore how the Tweet activity varied among the eight most prevalent communities, we next chose to determine the respective kernel density. A kernel density plot is a graphical representation of the distribution of a data set. It is similar to a histogram, but rather than using discrete bins to show the distribution of the data, it uses a smooth curve to estimate the density of the data at different points. The community curves indicate how densely distributed the Tweet activity of a given community is, regardless of the absolute number of Tweets by that community. The higher a curve is at a particular point, the more concentrated the Tweet activity of a given community is. In Figure 11, the respective kernel density estimation of the eight most prevalent communities over the entire period is presented. The legend shows the community labels. Here, we can observe that community № 232, which revolved around a conspiracy theory page (@EcommunistForum), was concentrated almost exclusively around the days of the sabotage. Moreover, we receive confirmation that indeed the community around Mick Wallace (№ 246) caused the moderate peak in mid-December. Furthermore, we find that community № 271, which suspected Russia to be behind the sabotage, was rather concentrated around the days of the sabotage and barely prevalent afterward. In addition, we can observe that community № 771 and 1029 were quite concentrated in February 2023. This makes sense since the corresponding topics were dominated by events that occurred at that time (e.g., the publication of Seymour Hersh’s report, the discovery of the spy balloons, and the anti-war rally during the Munich Security Conference). The remaining communities, in contrast, appear to have been distributed rather evenly over the observation period.
</p> 

 <div align="center"> 
 <b>Figure 11: Kernel density plot of all Tweets (by community)</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_11" src="https://user-images.githubusercontent.com/119635466/230793346-c76dc620-06ce-4792-b397-3e9204a52ab2.svg">
 <br><br>
</div>

<p align="justify">
In addition to examining the evolution and distribution of Tweet activity, we determined the points in time when the accounts involved were created. Figure 12 shows this evolution over time. The first account associated with Tweets from our data set was created on August 30, 2006, the most recent account was created on March 11, 2023. Interestingly, 25% of all associated accounts (about 38,724) were created after September 28, 2021. Moreover, we can observe to extreme peaks around April 26 and October 28, 2022. Yet, we were not able to link these to events or developments related to the Nord Stream sabotage. However, we could determine that Tweets originating from the accounts created on these dates were predominantly linked to the communities № <a href="#com_180">180</a>, <a href="#com_1029">1029</a>, <a href="#com_106">106</a> and <a href="#com_771">771</a>.
</p>  

 <div align="center"> 
 <b>Figure 12: Histogram of all account creations</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_12" src="https://user-images.githubusercontent.com/119635466/230793368-8befeadc-4c55-44f6-a409-936253a8549a.svg">
 <br><br>
</div>

<p align="justify">
We now return to our network graph and label it according to our overall findings. Figure 13 illustrates the identities of the most prevalent communities in the Twitter debate surrounding the Nord Stream sabotage.
</p>  

 <div align="center"> 
 <b>Figure 13: Nord Stream discourse network with community labels</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_13" src="https://user-images.githubusercontent.com/119635466/230787419-7c6de49a-3670-4943-98df-17fdf6026520.jpeg">
 <br><br>
</div>

<p align="justify">
With regard to our research question, we found that popular rumors about the perpetrator of the Nord Stream pipeline sabotage are strongly reflected in the Twitter discourse. Regarding our first hypothesis (<b><i>H</i><sub>1</sub></b>), we find a relatively high prevalence of Tweets suspecting the United States to be behind the Nord Stream sabotage. However, contrary to our expectation (<b><i>H</i><sub>2</sub></b>), only a relatively small fraction of Tweets in our corpus discusses Russia as a potential perpetrator. Moreover, while the report of an alleged pro-Ukrainian group is referenced in a relatively large number of Tweets, it is mostly viewed as a distraction from the true perpetrator, as opposed to what we expected to find (<b><i>H</i><sub>3</sub></b>). Finally, in support of (<b><i>H</i><sub>4</sub></b>), we find the degree of heterogeneity in the prevalence of popular rumors to vary relatively greatly across the communities, and that it increases the bigger the distance between two communities.
</p>  

<p align="justify">
Apart from that, certain limitations of the investigation must be recognized. First, although we selected the most prominent hashtag associated with the discourse on the Nord Stream sabotage, it may be the case that a number of related Tweets were outside our scope due to the use of different hashtags or none at all. Second, our dataset was filtered to include only English and German-language Tweets. Tweets in other languages may contain different perspectives on the perpetration of the Nord Stream pipeline sabotage. Third, we want to highlight that topic modeling specifications deviating from ours may lead to different results.
</p> 

<a name="conclusion"></a>
## Conclusion


<a name="ref"></a>
## References

Al Jazeera. (2023, March 27). *UN Security Council turns down request for Nord Stream inquiry*. https://www.aljazeera.com/news/2023/3/27/un-security-council-turns-down-request-for-nord-stream-inquiry

Atwood, K. B. L., Natasha Bertrand,Kylie. (2022, September 29). First on CNN: European security officials observed Russian Navy ships in vicinity of Nord Stream pipeline leaks. *CNN Politics*. https://www.cnn.com/2022/09/28/politics/nord-stream-pipeline-leak-russian-navy-ships/index.html

Barigazzi & Bayer. (2023, March 8). EU officials distance themselves from intel on Nord Stream blasts. *POLITICO*. https://www.politico.eu/article/eu-officials-nord-stream-two-pipeline-allegation-ukraine-russia/

Bennetts, M. (2023, April 9). Who attacked the Nord Stream pipelines? *The Times*. https://www.thetimes.co.uk/article/who-attacked-nord-stream-pipeline-russia-uk-west-ukraine-war-wv99ds7tx

Blondel, V. D., Guillaume, J., Lambiotte, R., & Lefebvre, E. (2008). Fast unfolding of communities in large networks. *Journal of Statistical Mechanics: Theory and Experiment*, 2008(10), P10008. https://doi.org/10.1088/1742-5468/2008/10/p10008

Boute, A. (2022). Weaponizing Energy: Energy, Trade, and Investment Law in the New Geopolitical Reality. *American Journal of International Law*, 116(4), 740–751. https://doi.org/10.1017/ajil.2022.53

Burgess, M. (2022, November 11). ‘Dark Ships’ Emerge From the Shadows of the Nord Stream Mystery. *Wired*. https://www.wired.com/story/nord-stream-pipeline-explosion-dark-ships/

Diaz Ruiz, C., Nilsson, T. (2023). Disinformation and Echo Chambers: How Disinformation Circulates on Social Media Through Identity-Driven Controversies. *Journal of Public Policy & Marketing*. 42(1). 18-35. doi: 10.1177/07439156221103852

Eady, G., Nagler, J., Guess, A., Zilinsky, J., Tucker, Joshua A. (2019). How Many People Live in Political Bubbles on Social Media? Evidence From Linked Survey and Twitter Data. *SAGE Open*. 9(1). doi: 10.1177/2158244019832705

East StratCom Task Force. (2022). EUvsDiSiNFO Database. *European Union External Action Services*. https://euvsdisinfo.eu/disinformation-cases/?text=nord%20stream&date= 

Entous, A., Barnes, J. E., & Goldman, A. (2023, March 7). Intelligence Suggests Pro-Ukrainian Group Sabotaged Pipelines, U.S. Officials Say. *The New York Times*. https://www.nytimes.com/2023/03/07/us/politics/nord-stream-pipeline-sabotage-ukraine.html

Faulconbridge, G., & Ravikumar, S. (2022, October 29). Russia says UK navy blew up Nord Stream, London denies involvement. *Reuters*. https://www.reuters.com/world/europe/russia-says-british-navy-personnel-blew-up-nord-stream-gas-pipelines-2022-10-29/

Seth Flaxman, Sharad Goel, Justin M. Rao. (2016). Filter Bubbles, Echo Chambers, and Online News Consumption. *Public Opinion Quarterly*. 80(1): 298–320. https://doi.org/10.1093/poq/nfw006

Gardner, T., & Lewis, S. (2022, September 30). U.S. has much to gain from Nord Stream damage, Russia says at U.N. *Reuters*. https://www.reuters.com/world/us-has-much-gain-nord-stream-damage-russia-says-un-2022-09-30/

Götschenberg, M., Heil, G., & Schmidt, H. (2023, March 7). *Nord-Stream-Ermittlungen: Spuren führen in die Ukraine*. Tagesschau. https://www.tagesschau.de/investigativ/nord-stream-explosion-101.html

Grootendorst, M. (2022). BERTopic: Neural topic modeling with a class-based TF-IDF procedure. *ArXiv*. https://doi.org/10.48550/arxiv.2203.05794

Hackenbruch, F., Ismar, G., Schlandt, J., & Lumetsberger, S. (2022, September 30). Ende von Gas-Austritt für Sonntag erhofft: Aus beschädigten Nord Stream-Pipelines tritt offenbar weniger Gas. *Der Tagesspiegel*. https://www.tagesspiegel.de/wirtschaft/nord-stream-putin-spricht-von-terroranschlag-gegen-nord-stream-8687140.html

Hanneman, R., & Riddle, M. (2005). *Introduction to Social Network Methods*. https://faculty.ucr.edu/%7Ehanneman/nettext/C1_Social_Network_Data.html 

Harris, S., Hudson, J., Ryan, M., & Birnbaum, M. (2022, December 22). No conclusive evidence Russia is behind Nord Stream attack. *Washington Post*. https://www.washingtonpost.com/national-security/2022/12/21/russia-nord-stream-explosions/

Hersh, S. (2023, February 8). How America Took Out The Nord Stream Pipeline. *Seymour Hersh*. https://seymourhersh.substack.com/p/how-america-took-out-the-nord-stream

ISPI. (2022). Gas, crisi Russia-UE: La dashboard con tutti i numeri. *Istituto per gli Studi di Politica Internazionale (ISPI)*. https://www.ispionline.it/it/pubblicazione/gas-crisi-russia-ue-la-dashboard-con-tutti-i-numeri-35726

Meredith, S. (2022, October 11). All you need to know about the Nord Stream gas leaks—And why Europe suspects ‘gross sabotage’. *CNBC*. https://www.cnbc.com/2022/10/11/nord-stream-gas-leaks-what-happened-and-why-europe-suspects-sabotage.html

Midolo, E. (2023, April 10). US bombed Nord Stream gas pipelines, claims investigative journalist Seymour Hersh. *The Times* https://www.thetimes.co.uk/article/us-bombed-nord-stream-gas-pipelines-claims-investigative-journalist-seymour-hersh-s730dnnfz

Nichols, M. (2023, March 27). Russia fails at UN to get Nord Stream blast inquiry. *Reuters*. https://www.reuters.com/world/europe/russia-fails-un-get-nord-stream-blast-inquiry-2023-03-27/

Ognyanova, K. (Forthcoming). Network Approaches to Misinformation Evaluation and Correction. In M. S. Weber & I. Yanovitzky (Eds.), *Networks, Knowledge Brokers, and the Public Policymaking Process (pp. 351–373). Springer International Publishing*. https://doi.org/10.1007/978-3-030-78755-4_13

Reuters. (2023, March 8). New intelligence points to pro-Ukraine group in Nord Stream attack -NYT. *Reuters*. https://www.reuters.com/world/europe/us-intelligence-suggests-pro-ukrainian-group-sabotaged-nord-stream-pipelines-nyt-2023-03-07/

Shalal, A., Rinke, A., & Mason, J. (2022, February 8). Biden pledges end to Nord Stream 2 if Russia invades Ukraine. *Reuters*. https://www.reuters.com/world/biden-germanys-scholz-stress-unified-front-against-any-russian-aggression-toward-2022-02-07/

Stein, J., Keuschnigg, M., & van de Rijt, A. (2023). Network segregation and the propagation of misinformation. Nature, 13(1), 917. https://doi.org/10.1038/s41598-022-26913-5

Tebel, R. (2023, March 10). Nord Stream Sabotage: The Evidence So Far. *Geopolitical Monitor*. https://www.geopoliticalmonitor.com/nord-stream-sabotage-the-evidence-so-far/

UK Home Office. (2016). *Social Network Analysis: ‘How to guide.’*. https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/491572/socnet_howto.pdf

UN Press. (2023, March 27). Security Council Rejects Draft Resolution Establishing Commission to Investigate Sabotage of Nord Stream Pipeline. *United Nation Press Release*. https://press.un.org/en/2023/sc15243.doc.htm

Welt. (2022, September 29). ‘Only Russia’ could be behind Nord Stream leaks, says former German intel chief. *POLITICO*. https://www.politico.eu/article/russia-nord-stream-pipeline-could-be-behind-nord-stream-leaks-says-former-german-intel-chief/















