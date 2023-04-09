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

> **H<sub> 1 </sub>: The prevalence of Tweets suspecting the United States behind the sabotage will be relatively high.**

Secondly, hypothesis number two is derived from the overall suspicion of Russia being behind the attack which has been quite prevalent in the journalistic discourse in many Western and European countries. This is mostly due to Russia's weaponisation of energy which culminated in the sabotage and often referred to Russia's . See for example: [CNN](https://edition.cnn.com/2022/09/28/politics/nord-stream-pipeline-leak-russian-navy-ships/index.html), [Politico](https://www.politico.eu/article/russia-nord-stream-pipeline-could-be-behind-nord-stream-leaks-says-former-german-intel-chief/)'s reporting on Gerhard Schindler's declarations, or [The Times](https://www.thetimes.co.uk/article/who-attacked-nord-stream-pipeline-russia-uk-west-ukraine-war-wv99ds7tx)'s summary of the different allegations. Nevertheless, no formal allegations have been put forward and the [Washington Post](https://www.washingtonpost.com/national-security/2022/12/21/russia-nord-stream-explosions/) reported that, as of December, no concluding evidence were found to support this claim. Still, our second hypothesis is: 

> **H<sub> 2 </sub>: The prevalence of Tweets suspecting Russia behind the sabotage will be relatively high.**

Thirdly, we infer our third hypothesis mainly from the [US intelligence allegations](https://www.reuters.com/world/europe/us-intelligence-suggests-pro-ukrainian-group-sabotaged-nord-stream-pipelines-nyt-2023-03-07/) reviewed by the [New York Times](https://www.nytimes.com/2023/03/07/us/politics/nord-stream-pipeline-sabotage-ukraine.html). It is important to notice that [EU officials](https://www.politico.eu/article/eu-officials-nord-stream-two-pipeline-allegation-ukraine-russia/) distanced themselves from such claims.

> **H<sub> 3 </sub>: The prevalence of Tweets suspecting Ukraine behind the sabotage will be relatively high.**

In addition, building the intuition that different communites discuss different topics, with different focuses and different interests – and thus develop different narratives around the same event – we developed a fourth hypothesis. 

> **H<sub> 4 </sub>: The degree of heterogeneity in the prevalence of popular rumors across different communities will be relatively high.**

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

 ***Figure 1: Nord Stream discourse network***

 <div align="center"> 
<img width="1000" alt="figure 2" src="https://user-images.githubusercontent.com/119635466/230784286-83a9fc1c-170b-450d-a8ae-470ea7f57519.jpeg">
</div>
 
The graph supports the assumption of a rather decentralized network with distinct communities. The largest community (№ 180) is denoted in blue. Among the most important nodes in this community are German far-left parliamentarian Sahra Wagenknecht (@SWagenknecht) and Alice Weidel (@Alice_Weidel), German parliamentarian leader of the German far-right populist party, AfD. The second biggest community (№ 106) is denoted in violet and revolves around several Russian government organizations such as the Russian Ministry of Foreign Affairs (@mfa_russia), the Russian Embassy to the United Kingdom (@RussianEmbassy), the Permanent Mission of Russia to the United Nations (@RussianUN), the Russian Embassy to the United States (@RusEmbUSA), and Russian Deputy Permanent Representative to the United Nations, Dmitry Polyanskiy (@Dpol_un). Moreover, we find numerous pro-Kremlin journalists and pages to be prominent actors within this community (e.g., @sahouraxo, @Consortiumnews, @afshinrattansi). German Far-left parliamentarian Sevim Dağdelen (@SevimDagdelen) is also a key actor and seems to be a link between the blue and violet communities. In general, community № 106 appears to be connected to most other communities. The third biggest community (№ 246) is denoted in green and features in particular the Irish far-left MEPs Mick Wallace (@wallacemick) and Clare Daly (@ClareDalyMEP). The fourth biggest community (№ 1029) is denoted in purple and considerably overlaps with community № 106. It includes, for example, the pro-Kremlin journalist Aaron Maté (@aaronjmate). The fifth biggest community (№ 271) is denoted in dark grey. It seemingly encompasses mostly pro-Ukrainian/anti-Kremlin accounts (e.g., @Tendar) as well as EU Commission President Ursula von der Leyen (@vonderleyen) and Norwegian Prime Minister Jonas Støre (@jonasgahrstore). The sixth largest community (№ 479) is denoted in red. The most prominent actors in this community are predominantly German-language journalists (e.g., @JZirm), news pages (e.g., @tagesschau) and civil society actors (e.g., @jakluge). The seventh largest community (№ 771) is denoted in orange and features prominent American conspiracy theorists (e.g., @JohnBasham) and pages (e.g., @KanekoaTheGreat). Finally, the eights largest community (№ 232) is denoted in turquoise and revolves around a conspiracy theory page (@EcommunistForum). 
 
<a name="BERT"></a>
### Topic Modeling

In community № 180, we identified a total of 14 topics. Based on these topics, we interpretively determined three overarching topic clusters. Moreover, as the most prominent actors from the social network analysis already indicated, the topics within this community were nearly exclusively in German. The first cluster involves topics that suspect the US to be behind the Nord Stream sabotage. Specifically, this included, among others, direct allegations by public figures (e.g., Topic 0) and conjectures about the course of events (e.g., Topic 8). The second cluster involves topics related to a recent news report that claimed that “pro-Ukrainian” was behind the Nord Stream sabotage (e.g., Topic 2). A closer manual inspection, however, revealed that the dominant view within these topics was that this story was only meant to distract from the real perpetrator. The third cluster included topics insisting that Russia would be the victim in this matter (e.g., Topic 4). In Figure 2, Tweets exemplary of the three topic clusters are shown.
 
 
 <img width="388" alt="com_180" src="https://user-images.githubusercontent.com/119635466/230784809-8df61907-1978-4efb-bfad-170e23e9ffb3.png">

 <a href="https://example.com"><img src="https://user-images.githubusercontent.com/119635466/230784809-8df61907-1978-4efb-bfad-170e23e9ffb3.png" alt="com_180"></a>

 
 
 
 
#### Community 180 – Light Blue

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596617-4ba124c8-6df5-4871-b646-3524764140ab.png"> <img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596684-ddfc468a-d73c-411d-aed4-298fa4785be4.png">

 ***Figure 5***
</div>

#### Community 106 – Pink

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596763-a50b87ce-3e20-456d-96f9-e1c1bdeeceb7.png">
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596824-02c49c7a-e757-4520-a71c-af07ef150ed9.png">

 ***Figure 6***
</div>

#### Community 246 – Green

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596904-17a9f8fc-5466-41da-8d92-2a4d786a197c.png">
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230596975-44eba920-0910-409e-851e-d6593d07ae78.png">

 ***Figure 7***
</div>

#### Community 1029 – Violet

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230597042-3037a0c8-f5f3-43b4-9a08-0800588d819f.png">
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230597092-5bc9dcdc-5412-40db-a697-3254cb179e70.png">

 ***Figure 8***
</div>

#### Community 271 – Dark Grey

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230597139-5ccfec18-b228-4971-a874-531c350c87af.png">
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230597185-57342161-9026-482d-927c-6d2359cda7b0.png">

 ***Figure 9***
</div>

<a name="stats"></a>
### Descriptive Statistics

#### 1. Timeseries of Account Creation 


<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230435238-c4cd05e6-a52c-4524-b981-59318b4aa2d4.svg">
 
 ***Figure 1***
    </div>


#### 2. Timeseries of Tweets 

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230435613-9b06ecbc-6e85-40a9-a65a-97f2183778b3.svg">  

 ***Figure 2***
</div>


#### 3. Kernel Density by Community

<div align="center"> 
<img width="650" alt="figure 2" src="https://user-images.githubusercontent.com/55432992/230435837-960ab479-5f77-4209-818e-41f13f09bad5.svg">

 ***Figure 3***
</div>

<a name="conclusion"></a>
## Conclusion

Based on the exploratory analysis we conducted on the Twitter discourse around the Nord Stream sabotage, we can conclude that: 
- We find relatively high prevalence of Tweets suspecting the United States behind the sabotage
- Only a relatively small fraction of Tweets discusses Russia as a potential perpetrator
- Although a relatively high number of Tweets discuss the report about an alleged pro-Ukrainian group, it is mostly considered to be a distraction
- The degree of heterogeneity in the prevalence of popular rumors varies relatively greatly across the communities















