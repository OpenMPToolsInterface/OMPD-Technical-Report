# OMPD Technical Report
OMPD Debugging Interface Technical Report

This repository contains the working draft of a technical report defining 
OMPD: An Application Programming Interface for a Debugger Support Library for 
OpenMP.

How to build
------------

To build the standard version of the document:

	$ make

To build the document with comments:

	$ make withnotes

The ompd-tr.pdf file will contain the OMPD technical report, and the 
ompd-tr-comments.pdf file will contain the report with comments.

Adding comments
---------------

To add a comment to the document, please use the `notes` environment in latex:

    \begin{notes}
    [Your name]: your comment...
    \end{notes}

Version control
---------------

Please ensure that the current version number appears in the first page by 
modifying the "version" file. The first draft of the document will be 2.000. 
Subsequent drafts will have an increase of "0.001" in the version number, e.g., 
0.001, 0.002, ..., 0.010.