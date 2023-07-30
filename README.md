# Earthquake Data Visualization: Project Overview


## Objective 
1. Read the survey data file provided (Superheroes.csv found in the files section of our course page) and store the information in a Python data structure
2. Ask the user which of the five methods described below they want to use to select a winner (the user input can be a number, a letter, a word, etc.)
3. Run an implementation of the chosen voting system and select a winner or declare a draw
4. Inform the user of the results, including total votes and winner

In this personal project, I studied the computational aspects of different voting methods. The prevalent philosophy about voting in the United States (and in the Western world in general) is the one person, one vote principle. Under this system, every voter casts a ballot supporting their preferred candidate, and the candidate with the most votes wins. This method is known as plurality voting. While it may seem like a common-sense approach, it is the source of much unfairness in election results. The most common problem with plurality voting is the phenomenon of vote splitting, in which multiple candidates run on similar platforms and each gets a share of (thereby "splitting") the same electorate. When this happens, a candidate disliked by the majority of the population can still win an election simply because the vote against them is split.
In the US, the most familiar form of vote splitting is the spoiler effect, in which a third candidate draws a significant share of the votes from either the Democrat or the Republican that would have otherwise won. The 1992 victory of Bill Clinton over George H.W. Bush was the result of (Republican) vote splitting by the spoiler candidate Ross Perot. The 2000 victory of George W. Bush over Al Gore was the result of (Democrat) vote splitting by spoiler candidate Ralph Nader.

Vote splitting can be effectively prevented by changing the voting method. There are multiple approaches to this end, each with its own pros and cons. Many of them rely on the use of ranked ballots. In this kind of ballot, a voter does not have to mark their one preferred candidate, but instead can define a ranking of several candidates from most to least preferred. Once voting is conducted in this way, there are different computational approaches to determine which candidate wins. For an in-depth discussion of vote splitting and the different methods to address it, you can review the book "Gaming the vote: why elections aren't fair (and what we can do about it)" by William Poundstone.

The CSV file used is a questionnaire collected. The voting methods for this project are:"
