FROM	openjdk:17-alpine
WORKDIR	/app
COPY	hello.java	.
RUN	javac hello.java
CMD	["java", "hello"]
