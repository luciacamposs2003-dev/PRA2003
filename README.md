# PRA2003 -Biology theme 

## Project description
The objetive of this exercise is to monitor the movement and proliferation of bacterial populations under different conditions.
This project has been conducted in R, with the support of VScode 

## Dataset
The header number represents the ID of the event being analysed 

Each row under the header represents the 3D momentum with its three components (px, py and pz), moreover it contains a fourth number representing the bacterial ID

Each bacterial ID is a different strain 

## Questions to be answered

1. What are the average counts of each bacterial strain and their statistical uncertainties?

 |Bacterial ID|	               |Bacterial strain|	                                |Total average| 	  |Total uncertainty|

    |211|	                     |E.coli WT|	                                      |18.42534|	        |0.00192|

    |-211|	                     |E.coli mutant|	                     	          |18.39551|	        |0.00192|                   	                                        

    |321|	                     |Bacillus subtilis WT|	                              |2.31745|	            |0.000681|

    |-321|	                     |Bacillus subtilis mutant|                           |2.31219|	            |0.00068|
 
    |2212|	                     |Pseudomonas aeruginosa WT|	                      |1.11574|	            |0.000472|

    |-2212|	                     |Pseudomonas aeruginosa antibiotic-resistant|	      |1.09369|	            |0.000468|

    |3122|	                     |Streptococcus pneumoniae|	                          |0.25547|	            |0.000226|

    |-3122|	                     |Capsule-decifient S.pneumoniae|	                  |0.25094|	            |0.000224|

    |3312|	                     |Mycobacterium tuberculosis|	                      |0.03643|	            |0.0000854|

    |-3312|                       |Drug-resistant M tuberculosis| 	                  |0.03602|	            |0.0000849|

    |3334|	                     |Salmonella enterica| 	                              |0.00110|	            |0.0000148|

    |-3334|                       |Salmonella mutant| 	                              |0.00106|	            |0.0000146|


2. Is there any asymmetry between the normal and mutant strain?

The asymmetry between the two groups was calculated using a two-sample z-test
   
|Bacterial ID|	         |Bacterial strain |                                                         |Significant asymmetry|

|211, -211|	              |E.coli WT + E.coli mutant|                                                        |YES|                                                         

|321, -321|	              |Bacillus subtilis WT + Bacillus subtilis mutant|                                  |YES|

|2212, -2212|	          |Pseudomonas aeruginosa WT + Pseudomonas aeruginosa antibiotic-resistant|          |YES|

|3122,-3122|	          |Streptococcus pneumoniae + 	Capsule-decifient S.pneumoniae|                      |YES|

|3312, -3312| 	          |Mycobacterium tuberculosis + Drug-resistant M tuberculosis|                       |YES|  

|3334, -3334|             |Salmonella enterica + Salmonella mutant|                                          |NO|

	
   

4. Is there any asymmetry as a function of their momentum?
