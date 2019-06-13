# "hello" becomes 'hi'
# "to, two, too" become '2'
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@"
# "and" becomes "&"

def word_substituter(tweet)
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
  tweet.split(' ').map! do |w|
    if dictionary.key?(w.downcase)
      dictionary[w.downcase]
    else
      w
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map! do |tweet|
    puts word_substituter(tweet)
    word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = selective_tweet_shortener(tweet)
  if short_tweet.length > 140
    short_tweet[0..136] + '...'
  else
    short_tweet
  end
end
