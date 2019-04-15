
# IST 664:Natural Language Processing

Bradley Wuon Seok Choi

HW 4: Sentiment Analysis of Amazon Product Reviews

# 1. Data Description: 

The dataset is created by Julian McAuley art UCSD. This dataset contains product reviews and metadata from Amazon, including 142.8 million reviews and spanning from May 1996 to July 2014. The dataset includes reviews (ratings, text, helpfulness votes), prouct metadata (descriptions, category information, price, brand and image features), and links (also viewed/also bought graphs). 

http://jmcauley.ucsd.edu/data/amazon/

# 2. Pre-processing:

I will be following the code from the McAuley's code on the UCSD website as to how to read the json file into Pandas data frame. (1) Follow McAuley's code to read the json file into a pandas dataframe and parse the text files, (2) place the parsed data into pandas dataframe, (3) clean the pandas dataframe and isolate the reviewtext. 


```python
import pandas as pd
import json
import gzip
```


```python
def parse(path):
  g = gzip.open(path, 'rb')
  for l in g:
    yield eval(l)

def getDF(path):
  i = 0
  df = {}
  for d in parse(path):
    df[i] = d
    i += 1
  return pd.DataFrame.from_dict(df, orient='index')

df = getDF('reviews_Baby_5.json.gz')
```


```python
#Looking at the dataframe
df[:10]
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>reviewerID</th>
      <th>asin</th>
      <th>reviewerName</th>
      <th>helpful</th>
      <th>reviewText</th>
      <th>overall</th>
      <th>summary</th>
      <th>unixReviewTime</th>
      <th>reviewTime</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>A1HK2FQW6KXQB2</td>
      <td>097293751X</td>
      <td>Amanda Johnsen "Amanda E. Johnsen"</td>
      <td>[0, 0]</td>
      <td>Perfect for new parents. We were able to keep ...</td>
      <td>5.0</td>
      <td>Awesine</td>
      <td>1373932800</td>
      <td>07 16, 2013</td>
    </tr>
    <tr>
      <th>1</th>
      <td>A19K65VY14D13R</td>
      <td>097293751X</td>
      <td>angela</td>
      <td>[0, 0]</td>
      <td>This book is such a life saver.  It has been s...</td>
      <td>5.0</td>
      <td>Should be required for all new parents!</td>
      <td>1372464000</td>
      <td>06 29, 2013</td>
    </tr>
    <tr>
      <th>2</th>
      <td>A2LL1TGG90977E</td>
      <td>097293751X</td>
      <td>Carter</td>
      <td>[0, 0]</td>
      <td>Helps me know exactly how my babies day has go...</td>
      <td>5.0</td>
      <td>Grandmother watching baby</td>
      <td>1395187200</td>
      <td>03 19, 2014</td>
    </tr>
    <tr>
      <th>3</th>
      <td>A5G19RYX8599E</td>
      <td>097293751X</td>
      <td>cfpurplerose</td>
      <td>[0, 0]</td>
      <td>I bought this a few times for my older son and...</td>
      <td>5.0</td>
      <td>repeat buyer</td>
      <td>1376697600</td>
      <td>08 17, 2013</td>
    </tr>
    <tr>
      <th>4</th>
      <td>A2496A4EWMLQ7</td>
      <td>097293751X</td>
      <td>C. Jeter</td>
      <td>[0, 0]</td>
      <td>I wanted an alternative to printing out daily ...</td>
      <td>4.0</td>
      <td>Great</td>
      <td>1396310400</td>
      <td>04 1, 2014</td>
    </tr>
    <tr>
      <th>5</th>
      <td>A3OQEVD4C7G3L3</td>
      <td>097293751X</td>
      <td>CMB</td>
      <td>[0, 0]</td>
      <td>This is great for basics, but I wish the space...</td>
      <td>4.0</td>
      <td>Great for basics, but not detail</td>
      <td>1399680000</td>
      <td>05 10, 2014</td>
    </tr>
    <tr>
      <th>6</th>
      <td>ATZDT4B1U7NL</td>
      <td>097293751X</td>
      <td>HYM</td>
      <td>[0, 0]</td>
      <td>My 3 month old son spend half of his days with...</td>
      <td>5.0</td>
      <td>Perfect for the working mom</td>
      <td>1374019200</td>
      <td>07 17, 2013</td>
    </tr>
    <tr>
      <th>7</th>
      <td>A3NMPMELAZC8ZY</td>
      <td>097293751X</td>
      <td>Jakell</td>
      <td>[3, 3]</td>
      <td>This book is perfect!  I'm a first time new mo...</td>
      <td>5.0</td>
      <td>Great for newborns</td>
      <td>1359244800</td>
      <td>01 27, 2013</td>
    </tr>
    <tr>
      <th>8</th>
      <td>A1ZSTU6RKY1JCL</td>
      <td>097293751X</td>
      <td>Jen</td>
      <td>[0, 0]</td>
      <td>I wanted to love this, but it was pretty expen...</td>
      <td>3.0</td>
      <td>It's ok, but I liked a regular weekly planner ...</td>
      <td>1398124800</td>
      <td>04 22, 2014</td>
    </tr>
    <tr>
      <th>9</th>
      <td>A1TFH58BMFJCR3</td>
      <td>097293751X</td>
      <td>killerbee</td>
      <td>[0, 0]</td>
      <td>The Baby Tracker brand books are the absolute ...</td>
      <td>5.0</td>
      <td>Best for Tracking!</td>
      <td>1384819200</td>
      <td>11 19, 2013</td>
    </tr>
  </tbody>
</table>
</div>



Creating a new dataframe by isolating the reviewText for further sentiment analysis


```python
# Creating a new dataframe with reviewText
ndf = df[['reviewText']].copy()
ndf.head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>reviewText</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Perfect for new parents. We were able to keep ...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>This book is such a life saver.  It has been s...</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Helps me know exactly how my babies day has go...</td>
    </tr>
    <tr>
      <th>3</th>
      <td>I bought this a few times for my older son and...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>I wanted an alternative to printing out daily ...</td>
    </tr>
    <tr>
      <th>5</th>
      <td>This is great for basics, but I wish the space...</td>
    </tr>
    <tr>
      <th>6</th>
      <td>My 3 month old son spend half of his days with...</td>
    </tr>
    <tr>
      <th>7</th>
      <td>This book is perfect!  I'm a first time new mo...</td>
    </tr>
    <tr>
      <th>8</th>
      <td>I wanted to love this, but it was pretty expen...</td>
    </tr>
    <tr>
      <th>9</th>
      <td>The Baby Tracker brand books are the absolute ...</td>
    </tr>
  </tbody>
</table>
</div>



# 3. Sentiment Classification 

(1) Create a nested list of sentences from the reviewText dataframe. (2) Then place parsed data into a new padandas dataframe, (3) and finally clean the new dataframe.


```python
from nltk.corpus import sentence_polarity
from nltk import sent_tokenize
from nltk.classify import NaiveBayesClassifier
from nltk.corpus import subjectivity
from nltk.sentiment import SentimentAnalyzer
from nltk.sentiment.util import *
import random
```


```python
par_list = ndf['reviewText'].values.tolist()
```


```python
# Creating nested listed to separate sentences from each reviewText passages.  
list_paragraph_sentences = []
list_paragraph_word = []
for paragraph in par_list:
    words = nltk.tokenize.word_tokenize(paragraph)
    sentences = sent_tokenize(paragraph)
    list_paragraph_sentences.append(sentences)
    list_paragraph_word.append(words)
```


```python
# Organising the data with columns reviewSentence and reviewWords
ndf['reviewSentence'] = list_paragraph_sentences
ndf['reviewWords'] = list_paragraph_word
ndf.head(5)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>reviewText</th>
      <th>reviewSentence</th>
      <th>reviewWords</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Perfect for new parents. We were able to keep ...</td>
      <td>[Perfect for new parents., We were able to kee...</td>
      <td>[Perfect, for, new, parents, ., We, were, able...</td>
    </tr>
    <tr>
      <th>1</th>
      <td>This book is such a life saver.  It has been s...</td>
      <td>[This book is such a life saver., It has been ...</td>
      <td>[This, book, is, such, a, life, saver, ., It, ...</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Helps me know exactly how my babies day has go...</td>
      <td>[Helps me know exactly how my babies day has g...</td>
      <td>[Helps, me, know, exactly, how, my, babies, da...</td>
    </tr>
    <tr>
      <th>3</th>
      <td>I bought this a few times for my older son and...</td>
      <td>[I bought this a few times for my older son an...</td>
      <td>[I, bought, this, a, few, times, for, my, olde...</td>
    </tr>
    <tr>
      <th>4</th>
      <td>I wanted an alternative to printing out daily ...</td>
      <td>[I wanted an alternative to printing out daily...</td>
      <td>[I, wanted, an, alternative, to, printing, out...</td>
    </tr>
  </tbody>
</table>
</div>



Building sentiment models 


```python
from nltk.corpus import sentence_polarity
import random
```


```python
# Positive and Negative training data built from the nltk corpus
positive_sentence = sentence_polarity.sents(categories='pos')
negative_sentence = sentence_polarity.sents(categories='neg')
```


```python
# creating list of documents (docs) that have a list of the words labelled 'pos' or 'neg'
docs = [(sent,cat) for cat in sentence_polarity.categories()
        for sent in sentence_polarity.sents(categories=cat)]

# randomisation
random.shuffle(docs)
```


```python
list_all_words = [word for (sent,cat) in docs for word in sent]
all_words = nltk.FreqDist(list_all_words)

# get 2000 most frequent appearing words in the corpus
word_items = all_words.most_common(2000)
# strip the word count leaving a list of only words
word_features = [word for (word,count) in word_items]
```


```python
def document_features(docs, word_features):
    words_docs = set(docs)
    features = {}
    for word in word_features:
        features['V_{}'.format(word)] = (word in words_docs)
    return features
```


```python
featuresets = [(document_features(d, word_features), e) for (d,e) in docs]
```


```python
# train & testing classifier
# split training and testing data
train_set, test_set = featuresets[1000:], featuresets[:1000]
# we will use multinomial naive bayes algorithm 
# -for the classification model
classifier = nltk.NaiveBayesClassifier.train(train_set)
```


```python
# evaluate the model
nltk.classify.accuracy(classifier, test_set)
```




    0.753



Scoring Amazon Sentiment 


```python
new_document_list = ndf['reviewWords'].values.tolist()
```


```python
amaz_features = [(document_features(d, word_features)) for d in new_document_list]
```


```python
amazon_sentiment_list = []
for feature in amaz_features:
    amazon_sentiment_list.append(classifier.classify(feature))
```


```python
ndf['reviewSentiment'] = amazon_sentiment_list
ndf.head(50)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>reviewText</th>
      <th>reviewSentence</th>
      <th>reviewWords</th>
      <th>reviewSentiment</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Perfect for new parents. We were able to keep ...</td>
      <td>[Perfect for new parents., We were able to kee...</td>
      <td>[Perfect, for, new, parents, ., We, were, able...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>1</th>
      <td>This book is such a life saver.  It has been s...</td>
      <td>[This book is such a life saver., It has been ...</td>
      <td>[This, book, is, such, a, life, saver, ., It, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Helps me know exactly how my babies day has go...</td>
      <td>[Helps me know exactly how my babies day has g...</td>
      <td>[Helps, me, know, exactly, how, my, babies, da...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>3</th>
      <td>I bought this a few times for my older son and...</td>
      <td>[I bought this a few times for my older son an...</td>
      <td>[I, bought, this, a, few, times, for, my, olde...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>4</th>
      <td>I wanted an alternative to printing out daily ...</td>
      <td>[I wanted an alternative to printing out daily...</td>
      <td>[I, wanted, an, alternative, to, printing, out...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>5</th>
      <td>This is great for basics, but I wish the space...</td>
      <td>[This is great for basics, but I wish the spac...</td>
      <td>[This, is, great, for, basics, ,, but, I, wish...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>6</th>
      <td>My 3 month old son spend half of his days with...</td>
      <td>[My 3 month old son spend half of his days wit...</td>
      <td>[My, 3, month, old, son, spend, half, of, his,...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>7</th>
      <td>This book is perfect!  I'm a first time new mo...</td>
      <td>[This book is perfect!, I'm a first time new m...</td>
      <td>[This, book, is, perfect, !, I, 'm, a, first, ...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>8</th>
      <td>I wanted to love this, but it was pretty expen...</td>
      <td>[I wanted to love this, but it was pretty expe...</td>
      <td>[I, wanted, to, love, this, ,, but, it, was, p...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>9</th>
      <td>The Baby Tracker brand books are the absolute ...</td>
      <td>[The Baby Tracker brand books are the absolute...</td>
      <td>[The, Baby, Tracker, brand, books, are, the, a...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>10</th>
      <td>During your postpartum stay at the hospital th...</td>
      <td>[During your postpartum stay at the hospital t...</td>
      <td>[During, your, postpartum, stay, at, the, hosp...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>11</th>
      <td>I use this so that our babysitter (grandma) ca...</td>
      <td>[I use this so that our babysitter (grandma) c...</td>
      <td>[I, use, this, so, that, our, babysitter, (, g...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>12</th>
      <td>This book is a great way for keeping track of ...</td>
      <td>[This book is a great way for keeping track of...</td>
      <td>[This, book, is, a, great, way, for, keeping, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>13</th>
      <td>Has columns for all the info I need at a glanc...</td>
      <td>[Has columns for all the info I need at a glan...</td>
      <td>[Has, columns, for, all, the, info, I, need, a...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>14</th>
      <td>I like this log, but think it would work bette...</td>
      <td>[I like this log, but think it would work bett...</td>
      <td>[I, like, this, log, ,, but, think, it, would,...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>15</th>
      <td>My wife and I have a six month old baby boy an...</td>
      <td>[My wife and I have a six month old baby boy a...</td>
      <td>[My, wife, and, I, have, a, six, month, old, b...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>16</th>
      <td>I thought keeping a simple handwritten journal...</td>
      <td>[I thought keeping a simple handwritten journa...</td>
      <td>[I, thought, keeping, a, simple, handwritten, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>17</th>
      <td>Easy to use, simple! I got this when my baby w...</td>
      <td>[Easy to use, simple!, I got this when my baby...</td>
      <td>[Easy, to, use, ,, simple, !, I, got, this, wh...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>18</th>
      <td>We used this to help us keep track of pees and...</td>
      <td>[We used this to help us keep track of pees an...</td>
      <td>[We, used, this, to, help, us, keep, track, of...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>19</th>
      <td>This item was extremely helpful, especially wi...</td>
      <td>[This item was extremely helpful, especially w...</td>
      <td>[This, item, was, extremely, helpful, ,, espec...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>20</th>
      <td>I've been using the baby tracker since the day...</td>
      <td>[I've been using the baby tracker since the da...</td>
      <td>[I, 've, been, using, the, baby, tracker, sinc...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>21</th>
      <td>Of course this has been a great/easy way for m...</td>
      <td>[Of course this has been a great/easy way for ...</td>
      <td>[Of, course, this, has, been, a, great/easy, w...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>22</th>
      <td>I've been using this since the day my baby was...</td>
      <td>[I've been using this since the day my baby wa...</td>
      <td>[I, 've, been, using, this, since, the, day, m...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>23</th>
      <td>I didn't think I would really use this and I w...</td>
      <td>[I didn't think I would really use this and I ...</td>
      <td>[I, did, n't, think, I, would, really, use, th...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>24</th>
      <td>I have used this book since my son was born.  ...</td>
      <td>[I have used this book since my son was born.,...</td>
      <td>[I, have, used, this, book, since, my, son, wa...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>25</th>
      <td>I am 4 weeks from delivery of my first baby an...</td>
      <td>[I am 4 weeks from delivery of my first baby a...</td>
      <td>[I, am, 4, weeks, from, delivery, of, my, firs...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>26</th>
      <td>I have used this tracker for all 3 of my child...</td>
      <td>[I have used this tracker for all 3 of my chil...</td>
      <td>[I, have, used, this, tracker, for, all, 3, of...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>27</th>
      <td>We found this book at a rummage sale and found...</td>
      <td>[We found this book at a rummage sale and foun...</td>
      <td>[We, found, this, book, at, a, rummage, sale, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>28</th>
      <td>GREAT journal. We use this everyday to communi...</td>
      <td>[GREAT journal., We use this everyday to commu...</td>
      <td>[GREAT, journal, ., We, use, this, everyday, t...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>29</th>
      <td>I have been using this baby tracker for three ...</td>
      <td>[I have been using this baby tracker for three...</td>
      <td>[I, have, been, using, this, baby, tracker, fo...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>30</th>
      <td>Great way to keep track of important daily act...</td>
      <td>[Great way to keep track of important daily ac...</td>
      <td>[Great, way, to, keep, track, of, important, d...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>31</th>
      <td>Love this book! Just finished our first one an...</td>
      <td>[Love this book!, Just finished our first one ...</td>
      <td>[Love, this, book, !, Just, finished, our, fir...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>32</th>
      <td>THis has been helpful in tracking the feedings...</td>
      <td>[THis has been helpful in tracking the feeding...</td>
      <td>[THis, has, been, helpful, in, tracking, the, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>33</th>
      <td>I bought this tracker when my daughter was 4 w...</td>
      <td>[I bought this tracker when my daughter was 4 ...</td>
      <td>[I, bought, this, tracker, when, my, daughter,...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>34</th>
      <td>if I didn't suck at documenting. Not sure exac...</td>
      <td>[if I didn't suck at documenting., Not sure ex...</td>
      <td>[if, I, did, n't, suck, at, documenting, ., No...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>35</th>
      <td>Easy to track feeding, playtime, changes, naps...</td>
      <td>[Easy to track feeding, playtime, changes, nap...</td>
      <td>[Easy, to, track, feeding, ,, playtime, ,, cha...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>36</th>
      <td>My husband gave this to me as a Christmas gift...</td>
      <td>[My husband gave this to me as a Christmas gif...</td>
      <td>[My, husband, gave, this, to, me, as, a, Chris...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>37</th>
      <td>The layout of the hours are a little tricky bu...</td>
      <td>[The layout of the hours are a little tricky b...</td>
      <td>[The, layout, of, the, hours, are, a, little, ...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>38</th>
      <td>This is the best way to keep track of when you...</td>
      <td>[This is the best way to keep track of when yo...</td>
      <td>[This, is, the, best, way, to, keep, track, of...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>39</th>
      <td>Please, please take this to the hospital with ...</td>
      <td>[Please, please take this to the hospital with...</td>
      <td>[Please, ,, please, take, this, to, the, hospi...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>40</th>
      <td>I find this tracker very useful. I've been usi...</td>
      <td>[I find this tracker very useful., I've been u...</td>
      <td>[I, find, this, tracker, very, useful, ., I, '...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>41</th>
      <td>This has been my go to for my scheduling of my...</td>
      <td>[This has been my go to for my scheduling of m...</td>
      <td>[This, has, been, my, go, to, for, my, schedul...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>42</th>
      <td>Inside is nice and clean. Columns for diaper c...</td>
      <td>[Inside is nice and clean., Columns for diaper...</td>
      <td>[Inside, is, nice, and, clean, ., Columns, for...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>43</th>
      <td>While I love the app on my phone (Baby ESP) fo...</td>
      <td>[While I love the app on my phone (Baby ESP) f...</td>
      <td>[While, I, love, the, app, on, my, phone, (, B...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>44</th>
      <td>I used this for my little on and it was really...</td>
      <td>[I used this for my little on and it was reall...</td>
      <td>[I, used, this, for, my, little, on, and, it, ...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>45</th>
      <td>The Daycare workers were offended by the book ...</td>
      <td>[The Daycare workers were offended by the book...</td>
      <td>[The, Daycare, workers, were, offended, by, th...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>46</th>
      <td>This is probably one of the greatest invention...</td>
      <td>[This is probably one of the greatest inventio...</td>
      <td>[This, is, probably, one, of, the, greatest, i...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>47</th>
      <td>This product is awesome. It was so helpful to ...</td>
      <td>[This product is awesome., It was so helpful t...</td>
      <td>[This, product, is, awesome, ., It, was, so, h...</td>
      <td>neg</td>
    </tr>
    <tr>
      <th>48</th>
      <td>Perfect way to keep track of the day for a lit...</td>
      <td>[Perfect way to keep track of the day for a li...</td>
      <td>[Perfect, way, to, keep, track, of, the, day, ...</td>
      <td>pos</td>
    </tr>
    <tr>
      <th>49</th>
      <td>This was a lifesaver especially during the fir...</td>
      <td>[This was a lifesaver especially during the fi...</td>
      <td>[This, was, a, lifesaver, especially, during, ...</td>
      <td>neg</td>
    </tr>
  </tbody>
</table>
</div>




```python

```
