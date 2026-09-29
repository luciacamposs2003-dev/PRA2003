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

    |211|	                     |E.coli WT|	                                      |19.94951|	        |3.27E-02|

    |-211|	                     |E.coli mutant|	                     	          |19.91722|	        |3.19E-02|                   	                                        

    |321|	                     |Bacillus subtilis WT|	                              |2.50915|	            |4.77E-03|

    |-321|	                     |Bacillus subtilis mutant|                           |2.50346|	            |5.50E-03|
 
    |2212|	                     |Pseudomonas aeruginosa WT|	                      |1.20803|	            |1.90E-03|

    |-2212|	                     |Pseudomonas aeruginosa antibiotic-resistant|	      |1.18416|	            |2.41E-03|

    |3122|	                     |Streptococcus pneumoniae|	                          |0.2717|	            |1.07E-03|

    |-3122|	                     |Capsule-decifient S.pneumoniae|	                  |0.03944|	            |9.85E-04|

    |3312|	                     |Mycobacterium tuberculosis|	                      |0.039|	            |2.83E-04|

    |-3312|                       |Drug-resistant M tuberculosis| 	                  |0.03602|	            |4.03E-04|

    |3334|	                     |Salmonella enterica| 	                              |0.00119|	            |4.16E-05|

    |-3334|                       |Salmonella mutant| 	                              |0.00115|	            |5.18E-05|


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
