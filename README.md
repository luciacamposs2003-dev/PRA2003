# PRA2003 -Biology theme 

## Project description
The objetive of this exercise is to monitor the movement and proliferation of bacterial populations under different conditions.
This project has been conducted in R, with the support of VScode 

## User guide 

***Installation requirements***

<img width="603" height="241" alt="Screenshot 2026-10-09 at 22 05 58" src="https://github.com/user-attachments/assets/7368004a-8bd8-4491-bcf4-42e101598268" />


Packages needed in order to run the codes in python

- Numpy; it is a library for numerical operations, using arrays, matrix etc
  
- Pandas: for data manipulation and analysis, used to create dataframes, 
  
- Matplotlib; visualisation tool
  
- Scipy; provides formulas to solve complex mathematical problems

## Dataset
The header number represents the ID of the event being analysed 

Each row under the header represents the 3D momentum with its three components (px, py and pz), moreover it contains a fourth number representing the bacterial ID

Each bacterial ID is a different strain 

500.000 events per file, 5M across the 10 files 

## Questions to be answered

__1. What are the average counts of each bacterial strain and their statistical uncertainties?__

The average was calculated with the following formula 
average= number of bacterial strain per event/ total number of events 

The statistical uncertainty was calculated with 
Sd = sqrt(the sum of each value from the sample - sample mean) / N - 1


<img width="572" height="394" alt="Screenshot 2026-10-09 at 21 48 00" src="https://github.com/user-attachments/assets/dbc59273-31d1-414a-a0d9-a58a21895074" />



__2. Is there any asymmetry between the normal and mutant strain?__

The asymmetry between the WT and the mutant bacterial pairs has been calculated following the process explained below.

***Part 1 analysis***

1st step: is to calculate the total count of each bacterial strain per event , this was done using the formula total count = ∑(events x average per event) / number of datasets
After getting the total count of each bacteria per event the average of each ID per event is calculated simply dividing the total count/ total events 

2nd step: after getting the average number of ID's per event we calculated the standard deviation (SD) using the formula SD= √[Σ(xᵢ − x̄)² / (n − 1)] , and the same was done for each strain in each event 

3rd step: then the uncertainty on the average was calculated using the SD/√10.

<img width="675" height="393" alt="Screenshot 2026-10-09 at 21 42 01" src="https://github.com/user-attachments/assets/a0beec5e-c518-4372-845b-73041e2c4d29" />

***Part 2 analysis***

4rd step: the next step is to calculate the asymmetry for each WT/mutant pair. For each of the 10 datasets, the following formula was used. d = WT - mutant , and the numbers plotted were the dataset's average per event 

5th step: then, again per each dataset A = (WT - mutant) / (WT + mutant) * 100 %, and mean = d * A ( with each 10 datasets separately)

6th step: sigma is calculated by dividing the mean over the standard deviation

To determine if the values are asymmetric or not the following reasoning was taken into account. If sigma is above the threshold, in this case 3-5 sigma, the bacterial pair is asymmetric. Otherwise, if its bellow the pair is symmetric. 

The values will be displayed below in a table 

<img width="844" height="306" alt="Screenshot 2026-10-09 at 21 42 29" src="https://github.com/user-attachments/assets/1259314d-356e-4ecb-9ad9-38fe641fd43b" />




__3. Is there any asymmetry as a function of their momentum?__

To answer this question the objective was to obtain the asymmetry between WT and mutant strait at each momentum as well as their statistical uncertainty per bin, to do that the steps explained below were done. 

Bins: it refers to the momentum ranges
The same bins were used for the 10 subsamples 
In order to adjust the bin width the data was converted from frequency to density by, density = freq/ bin width

To analyse the graphs found in this section is important to take into account that

- more bacteria = narrower bins
  
- less bacteria = wider bins

1st step: calculate the momentum

2nd step: bins were chosen

3rd step: Count per bin N =(WT) & N(mutant) in each bin, per dataset

4th step: calculate asymmetry and dN/dp

5th step: Average the 10 datasets Mean per bin & uncertainty SD

6th step: Plot A against P & dP/dN against P


***Results E.coli***

<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 13 31 57 copy" src="https://github.com/user-attachments/assets/28436fc6-58fc-4ea9-b285-9653e0a42908" />

<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 13 31 57" src="https://github.com/user-attachments/assets/7c21f5d4-2e9c-40f4-af0e-7b6643bf8393" />


***Results Bacillus subtilis***
<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 12 32 44" src="https://github.com/user-attachments/assets/7f9d8179-99a3-4e21-b5ad-0491d398accf" />

<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 12 32 44 copy" src="https://github.com/user-attachments/assets/6a099619-6423-42c3-972b-c5b5e511dc3d" />


***Results Streptococcus*** 

<img width="900" height="595" alt="Screenshot 2026-10-12 at 19 26 41" src="https://github.com/user-attachments/assets/dc2a4a12-20b7-4b0b-8df2-9f1edc16c3ef" />

<img width="892" height="602" alt="Screenshot 2026-10-12 at 19 26 35" src="https://github.com/user-attachments/assets/eb781f3c-225f-47a2-ab0e-7b48ed3e757d" />



***Results salmonella***
<img width="950" height="600" alt="finalFigure_1salmonella" src="https://github.com/user-attachments/assets/b7676799-82b1-4142-9246-457aae28850d" />

<img width="950" height="600" alt="finalFigure_2salmonella" src="https://github.com/user-attachments/assets/2f8da9d9-7739-4e95-ad08-19fba35a9c4f" />


***Results P.aeruginosa***
<img width="950" height="600" alt="Figure-p aeruginosa1" src="https://github.com/user-attachments/assets/b64c3d15-9670-4406-adb2-e49e814fae60" />

<img width="950" height="600" alt="Figure_p aeruginosa2" src="https://github.com/user-attachments/assets/5cc917ae-bef3-4ac9-a8f9-b53ac716abe3" />

***Results tuberculosis***
<img width="950" height="600" alt="Figure_tuberculosis 1" src="https://github.com/user-attachments/assets/afa2bfc2-7071-4af8-9670-335218b6666d" />


<img width="950" height="600" alt="Figure_tuberculosis2" src="https://github.com/user-attachments/assets/515930df-d85a-449f-99db-8c961de4dab6" />


## Discussion

## Conclusion




