
hdfs dfs -rm -r /RecInput
hdfs dfs -mkdir /RecInput
hdfs dfs -rm -r /RecOutput0
#hdfs dfs -mkdir /RecOutput0
hdfs dfs -rm -r /RecOutput1
#hdfs dfs -mkdir /RecOutput1
hdfs dfs -rm -r /RecOutput2
#hdfs dfs -mkdir /RecOutput2
hdfs dfs -rm -r /RecOutput3
#hdfs dfs -mkdir /RecOutput3
hdfs dfs -rm -r /RecOutput4
#hdfs dfs -mkdir /RecOutput4
hdfs dfs -put ~/src/RecommenderSystem/RecommenderSystem/input/userRating.txt /RecInput/

hadoop com.sun.tools.javac.Main *.java
jar cf Recommendation.jar *.class
hadoop jar Recommendation.jar Driver /RecInput/userRating.txt /RecOutput0 /RecOutput1 /RecOutput2 /RecOutput3 /RecOutput4
        
