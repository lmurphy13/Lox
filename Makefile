JAVAC = javac
JFLAGS = 
.SUFFIXES:.java .class
.java.class:
	$(JAVAC) $(JFLAGS) $(JLOXSRC)

JLOXDIR = jlox
JLOXSRC = $(JLOXDIR)/TokenType.java $(JLOXDIR)/Token.java $(JLOXDIR)/Scanner.java \
$(JLOXDIR)/Lox.java

all:$(JLOXSRC:.java=.class)

clean:
	rm -f $(JLOXDIR)/*.class