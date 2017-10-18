##############################################################################
#									     #
#   makefile of MCFSolve						     #
#									     #
#                                VERSION 2.00				     #
#                	        11 - 06 - 2008				     #
#									     #
# 		               Implementation by:			     #
#									     #
#			       Antonio Frangioni			     #
#									     #
#   			   Operations Research Group			     #
#			  Dipartimento di Informatica			     #
#   			     Universita' di Pisa			     #
#									     #
##############################################################################

# module name
NAME = MCFSolve

# switches
SW = -O3 -g

# libreries
LIB = -lm

# compiler
CC = g++

# default target- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

default: $(NAME)

# clean - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

clean::
	rm -f *.o *~ $(NAME)

# main module (linking phase) - - - - - - - - - - - - - - - - - - - - - - - -

OBJ =   RelaxIV.o Main.o

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LIB) $(SW)

# dependencies: every .o from its .C + every recursively included .h- - - - -

RelaxIV.o: RelaxIV.C RelaxIV.h MCFClass.h OPTUtils.h
	$(CC) -c $*.C -o $@ $(SW)

Main.o: Main.C RelaxIV.h MCFClass.h OPTUtils.h
	$(CC) -c $*.C -o $@ $(SW)

############################ End of makefile #################################
