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

The average was calculated with the following formula 
average= number of bacterial strain per event/ total number of events 

The statistical uncertainty was calculated with 
Sd = sqrt(the sum of each value from the sample - sample mean) / N - 1


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

The asymmetry between the WT and the mutant bacterial pairs has been calculated following the process explained below.

1st step: we took the means calculated from each of the 10 subsamples. 

2nd step: with those means we took the mean difference following this formula (mean WT strain - mean mutant strain)

3rd step: from the mean difference we calculated the standard deviation (uncertainty) 

4rd step: then we took the average of the mean differences for each subsample in order to be able to do proceed with mean+/-uncertainty

5th step: from the two values obtained doing the mean+/-uncertainty we could find out if the asymmetry was significant or not. 
if the values obtained are one negative and one positive we can't say confidently that there is any real asymmetry. Meanwhile if the two values obtained are positive we can observe an asymmetry.  This is because between negative and positive numbers the number 0 sits right inside the interval therefore we can't obtain a reliable asymmetry. 

6th step: in order to match the 10 subsamples with the 6 bacterial pairs the overall average of the mean difference of each strain was calculated 
for example for bacterial strain 1 which is E.coli WT and mutant their mean differences across the 10 subsamples was gathered summed and then divided by the 10 subsamples 
the standard deviation was calculated using the formula over the 10 individual mean differences 

those values (grand mean difference) was compared +/- to the uncertainty(SD)

The values will be displayed below

strain 1 -> e.coli WT/mutant -> signifcant asymmetry because the interval is on positive numbers

grand mean difference: 0.03230

uncertainty: 0.00452

interval 0.03230+/-0.00452

strain 2 -> bacillus WT/mutant -> significant asymmetry because the interval is on the positive numbers

grand mean difference: 0.01093

uncertainty: 0.01862

interval: 0.01093 +/- 0.01862

strain 3 ->  pseudo WT/mutant -> significant asymmetry because the interval moves through positive numbers

grand mean difference:  0.02387

uncertainty: 0.00237

interval: 0.02387 +/- 0.00237 

strain  4 -> streptococcus WT/mutant -> significant asymmetry because the interval moves through positive numbers  

grand mean difference: 0.00490 

uncertainty: 0.00058

interval: 0.00490 +/- 0.00058  

strain 5 -> mycobacterium WT/ mutant -> this strain does not show significant asymmetry because the numbers obtained from  mean+/-uncertainty are one positive and one negative which results into the interval moving through 0 

grand mean difference: 0.00044 

uncertainty: 0.00049

interval:  0.00044 +/-  0.00049
 
strain 6 -> salmonella WT/mutant  -> this strain does not show significant asymmetry because the numbers obtained from  mean+/-uncertainty are one positive and one negative which results into the interval moving through 0 

grand mean difference: 0.00008

uncertainty: 0.00013

interval: 0.00008+/- 0.00013 
