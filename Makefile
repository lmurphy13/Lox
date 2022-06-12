JAVAC = javac
JFLAGS = 
.SUFFIXES:.java .class
.java.class:
	$(JAVAC) $(JFLAGS) $(SOURCES)

JLOXDIR = jlox
JLOXSRC = $(JLOXDIR)/TokenType.java $(JLOXDIR)/Token.java $(JLOXDIR)/Scanner.java \
$(JLOXDIR)/Lox.java $(JLOXDIR)/AstPrinter.java \
$(JLOXDIR)/Expr.java
#JLOXSRC = $(wildcard $(JLOXDIR)/*.java)

TOOLDIR = tool
TOOLSRC = $(TOOLDIR)/GenerateAst.java

SOURCES = $(JLOXSRC)

#jlox: $(SOURCES:.java=.class)

tool: $(TOOLSRC:.java=.class)

all: $(SOURCES:.java=.class) $(tool)

clean:
	rm -f $(JLOXDIR)/*.class
	rm -f $(TOOLDIR)/*.class
