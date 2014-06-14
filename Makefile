KAFKA_VERSION=0.8.1.1
TARGET_FILENAME=kafka-$(KAFKA_VERSION)-src.tgz
SOURCES=~/rpmbuild/SOURCES/

all:
	cp kafka.spec $(SOURCES)
	cp -R SOURCES/* $(SOURCES)
	wget http://apache.sunsite.ualberta.ca/kafka/$(KAFKA_VERSION)/$(TARGET_FILENAME) \
		-O $(SOURCES)$(TARGET_FILENAME)
