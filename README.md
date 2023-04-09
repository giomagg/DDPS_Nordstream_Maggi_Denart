# Exploring the #NordStream Discourse on Twitter

_Paris, April 6th 2023_

This repository provides access to the code and the data used for the final project in the context of the course "Diving in the Digital Public Space" offered by CIVICA in the Spring of 2023 and taught by Prof. Jean-Philippe Cointet (_Sciences Po_), Prof. Marton Karsai (_Central European University_), and Armin Pournaki (_Sciences Po_). 

The project was developed by Giovanni Maggi and Louis Denart, master candidates in the Digital, New technologies and Public Policy specialisation of the _Sciences Po School of Public Affairs_. 

Here we present a summary of our study. 

## Table of Contents
- [Introduction](#context)
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
## Introduction

On September 26th 2022, at around 2am, the Nord Stream 2 pipeline connecting Russia to Germany underwent an explosion which resulted in the failure of the system. Around seven hours later, its sister pipeline Nord Stream 1 underwent the same problems. The two resulted in underwater gas leaks in the territorial waters of both Sweden and Denmark around the Bornholm Island (DK). The explosions were immediately recognised on September 27th as intentional sabotage by Sweden, Russia, the European Union (EU), and NATO. While there are evidence to indicate the intentionality of the explosions (found by the Swedish authorities and backed up by German Police investigations), there are no proofs concerning the identities of the perpetetrors, their motives, nor their means. Investigations are being carried on by Sweden, Denmark, Germany, and Russia but have yet to find conclusive evidence.

The journalistic coverage of the events has been debating the causes of the attack. On September 27th, the German news outlet [Der Tegesspiegel claimed](https://www.tagesspiegel.de/wirtschaft/nord-stream-putin-spricht-von-terroranschlag-gegen-nord-stream-8687140.html) that the sabotaged had been the result of targeted attacks by submarines or divers. A couple of days later, on September 29th, [CNN reported](https://edition.cnn.com/2022/09/28/politics/nord-stream-pipeline-leak-russian-navy-ships/index.html) that Russian submarines were observed at the site of the sabotage in the days preceding the attack. Nevertheless, on November 11th, [Wired Magazine's analysis](https://www.wired.com/story/nord-stream-pipeline-explosion-dark-ships/) of satellite images suggested that two large unidentified ships – which turned off their tracking systems – were at the site of the sabotage in the days leading up the the events. Moreover, and highly relevant to this study, on February 8th 2023 the American 1970 Pulitzer-prize winner Seymour Hersh published an [article](https://seymourhersh.substack.com/p/how-america-took-out-the-nord-stream) on his personal blog on Substack claiming that the United States perpetrated the attack – and that it was aided by Nerwegian assets in doing so (see also [The Times](https://www.thetimes.co.uk/article/us-bombed-nord-stream-gas-pipelines-claims-investigative-journalist-seymour-hersh-s730dnnfz)' reporting on the article). 

The Nord Stream gas leaks come at a crucial point during the Ukrainian war which had already sparked tensions between the Russian Federation and the West (specifically with the EU) on crucial strategic infrastructure and on energy supply. Specifically interesting in this regard is the way in which the war already revived debates around European dependency on Russian natural gas supply – which at the time at the invasion made up the [biggest share of gas imports](https://www.ispionline.it/it/pubblicazione/gas-crisi-russia-ue-la-dashboard-con-tutti-i-numeri-35726) for the EU – which the Krelin weaponised in response to the EU's actions following the invasion of Ukraine (see [Boute 2022](https://www.cambridge.org/core/product/identifier/S0002930022000537/type/journal_article)). Moreover, further embedding Nord Stream in the context of the Ukrainian war, it is relevant to point out that, even before the invation, US preseident Joe Biden claimed he would have ["end[ed] Nord Stream"](https://www.reuters.com/world/biden-germanys-scholz-stress-unified-front-against-any-russian-aggression-toward-2022-02-07/) in the case of a russian invasion.

Against this background speculations have soared in the public sphere regarding the responsible actors for the sabotage. So far this has not resulted in any concluding evidence but has rather remained a game of pointing fingers. Officially, the Russian authorities have taken a strong position, and, on October 1st 2022, they blamed in front of the UN Security Council the United States to be behind the attack. Later on, on October 29th, the Russian Ministry of Defence pointed also to the United Kingdom as a possible perpetrator. Contrarily to Russia, the EU and NATO have yet to take an official positions – although suspicions of a Russian involvement in the sabotage dominated the public sphere in the Western media. Finally, as recently as March 7th, the US intelligence services released a report claiming that the attack was in fact caused by a pro-Ukrainian group. 

<a name="Methods"></a>
## Methodology and Research Design

<a name="res"></a>
### Research Question 

Our research aims to explore how the game of pointing fingers is reflected in the Twitter debate. Specifically, because of the absence of concluding evidence from any of the investigations which have been carried on since the attack, and building on the highly heterogeneous public debate around the perpetrators of the sabotage, we ask:

> **To what extent are popular rumors about the perpetrator of the Nord Stream pipeline sabotage reflected in the Twitter discourse?**

<a name="hyp"></a>
### Hypotheses

Following from the brief qualitative work conducted in preparation to the study – which took into account the international press in order to understand the facts and speculations surrounding the Nord Stream sabotage – we developed three main hypothesis. These concern the topics which we expected to find in the Twitter discourse around the perpetrators of the attack.

Our first hypothesis is derived from the claims made by Russia both in front of the UN Security Council and on national television, as well as from the popularisation of such a narrative in the West following the publishing of Seymour Hersh's article. Moreover, analysing the [EUvDisinfo database](https://euvsdisinfo.eu/disinformation-cases/?text=nord%20stream&date=), an initiative created by the EU External Action Services to track disinformation concerning the Ukrainian war, we found this narrative to be quite prevalent. Therefore, our first hypothesis is: 

> ***H*<sub>1</sub>: The prevalence of Tweets suspecting the United States behind the sabotage will be relatively high.**

Secondly, hypothesis number two is derived from the overall suspicion of Russia being behind the attack which has been quite prevalent in the journalistic discourse in many Western and European countries. This is mostly due to Russia's weaponisation of energy which culminated in the sabotage and often referred to Russia's . See for example: [CNN](https://edition.cnn.com/2022/09/28/politics/nord-stream-pipeline-leak-russian-navy-ships/index.html), [Politico](https://www.politico.eu/article/russia-nord-stream-pipeline-could-be-behind-nord-stream-leaks-says-former-german-intel-chief/)'s reporting on Gerhard Schindler's declarations, or [The Times](https://www.thetimes.co.uk/article/who-attacked-nord-stream-pipeline-russia-uk-west-ukraine-war-wv99ds7tx)'s summary of the different allegations. Nevertheless, no formal allegations have been put forward and the [Washington Post](https://www.washingtonpost.com/national-security/2022/12/21/russia-nord-stream-explosions/) reported that, as of December, no concluding evidence were found to support this claim. Still, our second hypothesis is: 

> ***H*<sub>2</sub>: The prevalence of Tweets suspecting Russia behind the sabotage will be relatively high.**

Thirdly, we infer our third hypothesis mainly from the [US intelligence allegations](https://www.reuters.com/world/europe/us-intelligence-suggests-pro-ukrainian-group-sabotaged-nord-stream-pipelines-nyt-2023-03-07/) reviewed by the [New York Times](https://www.nytimes.com/2023/03/07/us/politics/nord-stream-pipeline-sabotage-ukraine.html). It is important to notice that [EU officials](https://www.politico.eu/article/eu-officials-nord-stream-two-pipeline-allegation-ukraine-russia/) distanced themselves from such claims.

> ***H*<sub>3</sub>: The prevalence of Tweets suspecting Ukraine behind the sabotage will be relatively high.**

In addition, building the intuition that different communites discuss different topics, with different focuses and different interests – and thus develop different narratives around the same event – we developed a fourth hypothesis. 

> ***H*<sub>4</sub>: The degree of heterogeneity in the prevalence of popular rumors across different communities will be relatively high.**

We also expected the degree of heterogeneity to increase the futher we move away from a community in the retweet social network. What we mean by this is that if two communities are relatively close (i.e., they share many bridges relative to the number of nodes in each of them), then we can expect them to display similar topics while displaying subtle differences. On the other hand, if two communities are relatively distant (i.e., they do not share many bridges relative to the number of nodes in each of them), they will display more substantial differences in the topics and narratives present in each of them.


<a name="data"></a>
### Data Collection

To analyze the Twitter network around the Nord Stream discourse, we first selected the hashtag that was most commonly used in Tweets associated to the incident: **#NordStream**. Utilizing Twitter’s Research API, we extracted Tweets and related metadata that included the respective hashtag, dating from September 26, 2022 – the day of the Nord Stream sabotage – to March 12, 2023. In total, the data set consisted of 702,243 Tweets. The data set included various attributes such as Tweet ID, Tweet content, time of Tweet creation, user ID, username, time of user creation, as well as information on the receiver of a Tweet (e.g., in the case of Retweets). For the analysis, the data was filtered to only include English and German-language Tweets. As a result, the final dataset consisted in total of 446,099 Tweets across 154,898 accounts.

<a name="meth"></a>
### Methodology

In order to answer our research question and the corresponding hypotheses, we employ social network analysis (SNA) in combination with topic modeling. Social network analysis is a method of mapping the interactions (characterized as “edges”) between individuals (characterized as “nodes”) in a social network (UK Home Office, 2016). We opted to deploy this method in order to better understand the structure of the Nord Stream discourse and this distribution of topics, as SNA allows for identifying the composition of a network, as well as key actors and communities. Furthermore, in contrast to more traditional research methods, social network analysis provides a unique perspective on the social interactions and relationships between actors within a network (Hanneman & Riddle, 2005).

We start the social network analysis of the Nord Stream discourse by defining the two main attributes of the network: nodes, which we identify as Twitter users within the Nord Stream network, and edges, which we classify as the interactions (Retweets, Quote Tweets, replies) between said users. Then, we divide the network into communities by calculating modularity with the Louvain method. In social network analysis, modularity is a measure of the strength of division of a network into communities. The Louvain method specifically is a community detection algorithm that iteratively optimizes modularity by hierarchically merging nodes into communities (Blondel et al. 2008).

Having associated Tweets and accounts with a respective community, we proceeded by performing topic modeling to determine the topics within the most prevalent communities. Since there was a significant difference in size between the examined communities, we chose to compute topic models for the communities separately to ensure that we capture relevant small-community topics for which a single topic model may not have been sufficiently fine-grained. Furthermore, it allowed setting different model specifications for the communities, which provided better results due to the heterogeneous community sizes. For the topic modeling, we used a multilingual BERTopic model. Developed by Grootendorst (2022), BERTopic is a topic modeling technique that extracts coherent topics through a modified class-based variation of the term frequency-inverse document frequency (TF-IDF) method. BERTopic has demonstrated to perform particularly well on short-text documents such as Tweets, and is therefore an appropriate choice for the present study. Prior to running the models, the data was cleaned.

<a name="results"></a>
## Results and Discussion 

Our research results are presented in detail below. First, we introduce our initial findings based on the social network analysis of the Nord Stream discourse. Then, we proceed by examining the results of our topic models. Finally, we triangulate these findings with a descriptive analysis of the Nord Stream discourse to better contextualize our insights before turning to a brief discussion of our digital investigation.

<a name="SNA"></a>
### Social Network Analysis

In total, the Nord Stream discourse network consists of 154,898 nodes (representing Twitter users) and 446,099 edges (representing interactions among the users). The network diameter is 21, i.e., the greatest distance between any two nodes in the network is 21 degrees of separation. The average degree of the network is 2.187, indicating that each node had about two connections on average. In contrast, the maximum degree is 2110.

Then, we proceeded to calculate the modularity classes (indicating the communities) within the network. In total, the network was determined to consist of 1366 communities. The modularity score of 0.626 suggests a relatively strong modular structure in the network. The score falls in the higher end of the range (modularity ranges from 0 to 1), indicating that the communities within the network are quite cohesive. This means that there tend to be strong connections within the communities and rather weak connections between them.

The largest community (№ 180) comprises 178,486 Tweets and constitutes 40.0% of the network. The second largest community (№ 106) consists of 90,120 Tweets and comprises 20.2% of the network. The third (№ 246), fourth (№ 1029), and fifth largest (№ 271) communities contain 29,830, 26,485, and 24,455 Tweets, respectively, and represent 6.7%, 5.9 %, and 5.5% of the network. The communities ranked sixth (№ 479), seventh (№ 771), and eighth (№ 232) in terms of size comprise 22,914, 12,130, and 10,303 Tweets, respectively, accounting for 5.1%, 2.7 %, and 2.3% of the network. Together, the eight most prevalent communities nearly represent 90% of the entire Tweet corpus.

Below, in Figure 1, the Nord Stream discourse network is illustrated. Distinct colors denote the communities. In addition, we calculated the PageRank score of each node. PageRank is a measure of importance, which captures the relative importance of a given node based on the number and quality of its connections to other nodes. In this regard, we labeled the 30 accounts with the highest scores according to their Twitter account handle. The higher PageRank score, the larger a node is presented in the graph.

  <div align="center"> 
 <b>Figure 1: Nord Stream discourse network</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_1" src="https://user-images.githubusercontent.com/119635466/230784286-83a9fc1c-170b-450d-a8ae-470ea7f57519.jpeg">
 <br><br>
</div>
 
The graph supports the assumption of a rather decentralized network with distinct communities. The largest community (№ 180) is denoted in blue. Among the most important nodes in this community are German far-left parliamentarian Sahra Wagenknecht (@SWagenknecht) and Alice Weidel (@Alice_Weidel), German parliamentarian leader of the German far-right populist party, AfD. The second biggest community (№ 106) is denoted in violet and revolves around several Russian government organizations such as the Russian Ministry of Foreign Affairs (@mfa_russia), the Russian Embassy to the United Kingdom (@RussianEmbassy), the Permanent Mission of Russia to the United Nations (@RussianUN), the Russian Embassy to the United States (@RusEmbUSA), and Russian Deputy Permanent Representative to the United Nations, Dmitry Polyanskiy (@Dpol_un). Moreover, we find numerous pro-Kremlin journalists and pages to be prominent actors within this community (e.g., @sahouraxo, @Consortiumnews, @afshinrattansi). German Far-left parliamentarian Sevim Dağdelen (@SevimDagdelen) is also a key actor and seems to be a link between the blue and violet communities. In general, community № 106 appears to be connected to most other communities. The third biggest community (№ 246) is denoted in green and features in particular the Irish far-left MEPs Mick Wallace (@wallacemick) and Clare Daly (@ClareDalyMEP). The fourth biggest community (№ 1029) is denoted in purple and considerably overlaps with community № 106. It includes, for example, the pro-Kremlin journalist Aaron Maté (@aaronjmate). The fifth biggest community (№ 271) is denoted in dark grey. It seemingly encompasses mostly pro-Ukrainian/anti-Kremlin accounts (e.g., @Tendar) as well as EU Commission President Ursula von der Leyen (@vonderleyen) and Norwegian Prime Minister Jonas Støre (@jonasgahrstore). The sixth largest community (№ 479) is denoted in red. The most prominent actors in this community are predominantly German-language journalists (e.g., @JZirm), news pages (e.g., @tagesschau) and civil society actors (e.g., @jakluge). The seventh largest community (№ 771) is denoted in orange and features prominent American conspiracy theorists (e.g., @JohnBasham) and pages (e.g., @KanekoaTheGreat). Finally, the eights largest community (№ 232) is denoted in turquoise and revolves around a conspiracy theory page (@EcommunistForum). 
 
<a name="BERT"></a>
### Topic Modeling

In community № 180, we identified a total of [14 topics](https://user-images.githubusercontent.com/119635466/230784809-8df61907-1978-4efb-bfad-170e23e9ffb3.png). Based on these topics, we interpretively determined three overarching topic clusters. Moreover, as the most prominent actors from the social network analysis already indicated, the topics within this community were nearly exclusively in German. The first cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included, among others, direct allegations by public figures (e.g., Topic 0) and conjectures about the course of events (e.g., Topic 8). The second cluster involves topics related to a recent news report that claimed that “pro-Ukrainian” was behind the Nord Stream sabotage (e.g., Topic 2). A closer manual inspection, however, revealed that the dominant view within these topics was that this story was only meant to distract from the real perpetrator. The third cluster included topics insisting that Russia would be the victim in this matter (e.g., Topic 4). In Figure 2, Tweets exemplary of the three topic clusters are shown.
 
 <div align="center"> 
 <b>Figure 2: Example Tweets from community № 180</b>
 <br><br>
</div>
 
 <div align="center"> 
<img width="600" alt="Fig_2" src="https://user-images.githubusercontent.com/119635466/230785264-18fef2bf-226c-451f-877c-151103382ab7.png">
 <br><br>
</div>
 
In community № 106, we identified a total of [15 topics](https://user-images.githubusercontent.com/119635466/230785440-0a7f97a1-5cc5-4b38-a7bf-1a91afd0cca6.png). Here, we determined three overarching topic clusters. The topics within this community were almost exclusively in English. Again, the first and most prominent cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included, among others, speculations by public figures (e.g., Topic 9) and references to an interview with US President Biden from February 7, 2022, which some view as proof of US involvement (e.g., Topic 2). The second cluster of topics mainly revolved around references to and corresponding speculations about the publication of Seymour Hersh’s “investigative” report (e.g., Topic 10). The third topic cluster consisted of topics according to which the EU would allegedly not be interested in a genuine investigation of the incident (e.g., Topic 7). In Figure 3, Tweets exemplary of the three topic clusters are shown.

 <div align="center"> 
 <b>Figure 3: Example Tweets from community № 106</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_3" src="https://user-images.githubusercontent.com/119635466/230785489-3dad8d7a-81c7-4979-99b4-193c2839cce8.png">
 <br><br>
</div>

In community № 246, we identified a total of [10 topics](https://user-images.githubusercontent.com/119635466/230785758-4a851926-c992-41d0-9baa-f6a827a4509d.png). Here, we determined two overarching topic clusters. The topics within this community were exclusively in English. These mainly included suspecting the US to behind the Nord Stream sabotage (e.g., Topic 7) and views contending that NATO partners would withhold information on the perpetrator (e.g., Topic 8). Moreover, several topics were directly linked to the Irish MEP Mick Wallace. In Figure 4, Tweets exemplary of the two topic clusters are shown.
 
 <div align="center"> 
 <b>Figure 4: Example Tweets from community № 246</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_4" src="https://user-images.githubusercontent.com/119635466/230785729-53b2ff0b-3d51-4938-a418-d367548c1128.png">
 <br><br>
</div>

In community № 1029, we identified a total of [5 topics](https://user-images.githubusercontent.com/119635466/230785783-b0112ee1-c115-453e-bc24-c1ceb852a4ed.png). Here, we determined three topic clusters. The topics were both in English and in German. As in the prior communities, the suspicion that the US had sabotaged the Nord Stream pipelines was widely reflected in the topics (e.g., Topic 0). The second topic cluster involved views that the spy balloons (or “UFO’s”) over the US were intended to distract from Nord Stream sabotage (Topic 3). The third topic cluster mainly included reports about an anti-war rally that took place in the wake of this year’s Munich Security Conference (Topic 4). In Figure 5, Tweets exemplary of the three topic clusters are shown.

 <div align="center"> 
 <b>Figure 5: Example Tweets from community № 1029</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_5" src="https://user-images.githubusercontent.com/119635466/230785817-42cffe89-6e63-413a-8643-c41ab1eed458.png">
 <br><br>
</div>

In community № 271, we identified a total of [3 topics](https://user-images.githubusercontent.com/119635466/230785863-555b3b46-d1b7-441f-aa46-4f77e1640d89.png). Here, we determined two topic clusters. The topics were both in English and in German. In contrast to prior communities, here a cluster revolved about the perception that Russia was behind the Nord Stream sabotage (e.g., Topic 0). The other topic cluster focused on a conversation EU Commission President Ursula von der Leyen and Norwegian Prime Minister Jonas Støre had in the context of the Nord Stream sabotage (Topic 1). In Figure 6, Tweets exemplary of the two topic clusters are shown.
 
 <div align="center"> 
 <b>Figure 6: Example Tweets from community № 271</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_6" src="https://user-images.githubusercontent.com/119635466/230794470-a66d0e1d-b5ef-4aec-ab4e-d41fbf7ad61b.png">
 <br><br>
</div>

In community № 479, we identified a total of [4 topics](https://user-images.githubusercontent.com/119635466/230786029-96d9516f-36c1-42e0-9226-ad72c4a382fb.png). Here, we determined two topic clusters. The topics were exclusively in German. The first topic cluster involves topics related to nuanced journalistic and expert contributions in Germany (e.g., Topic 3). Within the second topic clusters, the environmental impact of the Nord Stream incident is addressed (Topic 2). In Figure 7, Tweets exemplary of the two topic clusters are shown.

 <div align="center"> 
 <b>Figure 7: Example Tweets from community № 479</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_7" src="https://user-images.githubusercontent.com/119635466/230786050-cc222370-6f82-4244-835b-f43ccfab33ed.png">
 <br><br>
</div>

In community № 771, we identified a total of [3 topics](https://user-images.githubusercontent.com/119635466/230786100-6fae49d7-c4d8-4117-b2ee-042e96e9cc4d.png). Here, we determined two topic clusters. The topics were exclusively in English. The first cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included alleged insider information from a US Defense Department source, according to which Joe Biden ordered the Nord Stream sabotage (Topic 0). The second cluster of topics mainly revolved around references to and corresponding speculations about the publication of Seymour Hersh’s “investigative” report (e.g., Topic 1). In Figure 8, Tweets exemplary of the two topic clusters are shown.

 <div align="center"> 
 <b>Figure 8: Example Tweets from community № 771</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_8" src="https://user-images.githubusercontent.com/119635466/230786154-bddcd77f-b4b4-42d1-8f3c-d5a11f17bb2c.png">
 <br><br>
</div>

In community № 232, we identified a total of [2 topics](https://user-images.githubusercontent.com/119635466/230786192-b870c447-5f35-4d93-9911-65a4e770567c.png). Here, we determined two topic clusters. The topics were exclusively in English. The first cluster revolves around satirical posts on the Nord Stream sabotage, mixed with conspiracy theories (Topic 0). The second cluster included suspicions after which the US was behind the Nord Stream sabotage (Topic 1). In Figure 9, Tweets exemplary of the two topic clusters are shown.
 
 <div align="center"> 
 <b>Figure 9: Example Tweets from community № 232</b>
 <br><br>
</div>

 <div align="center"> 
<img width="600" alt="Fig_9" src="https://user-images.githubusercontent.com/119635466/230786216-279fd134-6ccf-4977-bfc4-238690001555.png">
 <br><br>
</div>

In Table 1, a comparative overview of the topic clusters across the most prevalent communities is presented.
 
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

Next, we triangulate these findings with a descriptive analysis of the Nord Stream discourse. Figure 10 shows the development of Tweets related to Nord Stream since the day of the sabotage on September 26, 2022 until March 12, 2023. We can observe that the discourse reached its first and highest peak only days after the incident before decreasing to a level of a few thousand Tweets per day. Another moderate yet suspicious peak happened in mid-December 2022. Manual inspection of the data showed that this peak was apparently due to a viral speech MEP Mick Wallace gave in the European Parliament, in which he hinted that the US was behind the sabotage of Nord Stream. Then, after the debate continued for a few months on a rather low level, it gained renewed attention after American investigative journalist Seymour Hersh published an article on February 8, 2023, claiming that the US had carried out the sabotage in a covert sea operation. Only a month later, a German journalists' network released an investigation after which a "pro-Ukrainian" group was behind the sabotage, drawing a similar level of attention.
 
 <div align="center"> 
 <b>Figure 10: Histogram of all Tweets</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_10" src="https://user-images.githubusercontent.com/119635466/230793318-17cb8e7d-e033-46aa-988c-a3ca4b6eac2c.svg">
 <br><br>
</div>

To explore how the Tweet activity varied among the eight most prevalent communities, we next chose to determine the respective kernel density. A kernel density plot is a graphical representation of the distribution of a data set. It is similar to a histogram, but rather than using discrete bins to show the distribution of the data, it uses a smooth curve to estimate the density of the data at different points. The community curves indicate how densely distributed the Tweet activity of a given community is, regardless of the absolute number of Tweets by that community. The higher a curve is at a particular point, the more concentrated the Tweet activity of a given community is. In Figure 11, the respective kernel density estimation of the eight most prevalent communities over the entire period is presented. The legend shows the community labels. Here, we can observe that community № 232, which revolved around a conspiracy theory page (@EcommunistForum), was concentrated almost exclusively around the days of the sabotage. Moreover, we receive confirmation that indeed the community around Mick Wallace (№ 246) caused the moderate peak in mid-December. Furthermore, we find that community № 271, which suspected Russia to be behind the sabotage, was rather concentrated around the days of the sabotage and barely prevalent afterward. In addition, we can observe that community № 771 and 1029 were quite concentrated in February 2023. This makes sense since the corresponding topics were dominated by events that occurred at that time (e.g., the publication of Seymour Hersh’s report, the discovery of the spy balloons, and the anti-war rally during the Munich Security Conference). The remaining communities, in contrast, appear to have been distributed rather evenly over the observation period.

 <div align="center"> 
 <b>Figure 11: Kernel density plot of all Tweets (by community)</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_11" src="https://user-images.githubusercontent.com/119635466/230793346-c76dc620-06ce-4792-b397-3e9204a52ab2.svg">
 <br><br>
</div>

In addition to examining the evolution and distribution of Tweet activity, we determined the points in time when the accounts involved were created. Figure 12 shows this evolution over time. The first account associated with Tweets from our data set was created on August 30, 2006, the most recent account was created on March 11, 2023. Interestingly, 25% of all associated accounts (about 38,724) were created after September 28, 2021. Moreover, we can observe to extreme peaks around April 26 and October 28, 2022. Yet, we were not able to link these to events or developments related to the Nord Stream sabotage. However, we could determine that Tweets originating from the accounts created on these dates were predominantly linked to the communities № 180, 1029, 106 and 771.

 <div align="center"> 
 <b>Figure 12: Histogram of all account creations</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_12" src="https://user-images.githubusercontent.com/119635466/230793368-8befeadc-4c55-44f6-a409-936253a8549a.svg">
 <br><br>
</div>

Based on our findings, we return to our network graph, which we have complemented accordingly. Figure 13 illustrates the most prevalent communities, which we have labeled according to our overall analysis.

 <div align="center"> 
 <b>Figure 13: Nord Stream discourse network with community labels</b>
 <br><br>
</div>

 <div align="center"> 
<img width="1098" alt="Fig_13" src="https://user-images.githubusercontent.com/119635466/230787419-7c6de49a-3670-4943-98df-17fdf6026520.jpeg">
 <br><br>
</div>

With regard to our research question, we found that popular rumors about the perpetrator of the Nord Stream pipeline sabotage are strongly reflected in the Twitter discourse. Regarding our first hypothesis (***H*<sub>1</sub>**), we find a relatively high prevalence of Tweets suspecting the United States to be behind the Nord Stream sabotage. Further, contrary to our expectation (***H*<sub>2</sub>**), only a relatively small fraction of Tweets in our corpus discusses Russia as a potential perpetrator. Moreover, while the report of an alleged "pro-Ukrainian" group is referenced in a relatively large number of Tweets, it is mostly viewed as a distraction from the true perpetrator, as opposed to our assumption (***H*<sub>3</sub>**). Finally, in support of ***H*<sub>4</sub>**, we find the degree of heterogeneity in the prevalence of popular rumors to vary relatively greatly across the communities.

Apart from that, certain limitations of the investigation must be recognized. First, although we selected the most prominent hashtag associated with the discourse on the Nord Stream sabotage, it may be the case that a number of related Tweets were outside our scope due to the use of different hashtags or none at all. Second, our dataset was filtered to include only English and German-language Tweets. Tweets in other languages may contain different perspectives on the perpetration of the Nord Stream pipeline sabotage. Third, we want to highlight that topic modeling specifications deviating from ours may lead to different results.

<a name="conclusion"></a>
## Conclusion

Based on the exploratory analysis we conducted on the Twitter discourse around the Nord Stream sabotage, we can conclude that: 
- We find relatively high prevalence of Tweets suspecting the United States behind the sabotage
- Only a relatively small fraction of Tweets discusses Russia as a potential perpetrator
- Although a relatively high number of Tweets discuss the report about an alleged pro-Ukrainian group, it is mostly considered to be a distraction
- The degree of heterogeneity in the prevalence of popular rumors varies relatively greatly across the communities

<a name="ref"></a>
## References

Blondel, V. D., Guillaume, J., Lambiotte, R., & Lefebvre, E. (2008). Fast unfolding of communities in large networks. Journal of Statistical Mechanics: Theory and Experiment, 2008(10), P10008. https://doi.org/10.1088/1742-5468/2008/10/p10008

Grootendorst, M. (2022). BERTopic: Neural topic modeling with a class-based TF-IDF procedure. ArXiv. https://doi.org/10.48550/arxiv.2203.05794

Hanneman, R., & Riddle, M. (2005). Introduction to Social Network Methods. https://faculty.ucr.edu/%7Ehanneman/nettext/C1_Social_Network_Data.html 

UK Home Office. (2016). Social Network Analysis: ‘How to guide.’. https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/491572/socnet_howto.pdf













