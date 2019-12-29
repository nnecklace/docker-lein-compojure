#!bin/bash
service postgresql start
java -jar ./target/lein-compojure-boilerplate-0.1.0-SNAPSHOT-standalone.jar 
