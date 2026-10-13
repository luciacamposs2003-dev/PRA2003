# PRA2003 -Biology theme 

## Project description

The objective of this exercise is to monitor the movement and proliferation of bacterial populations under different conditions. 

The ***importance*** of this project lays on measuring if the mutant strains are less common than the WT because mutations normally are resistant to antibiotics which makes them less successful to combat against.  

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

Files used: `output-Set1.txt`... `output-Set10.txt`from SURFdrive (around 800MB each file). `output-Set0.txt` was a test file with one event. 

The header number represents the event being analysed 

Each bacterial strain has a different ID, which are shown in the table below 

<img width="321" height="217" alt="Screenshot 2026-10-13 at 17 58 35" src="https://github.com/user-attachments/assets/9565c26c-9ccf-4a7d-a48d-7b9ec0a2516e" />


500.000 events per file, 5M across the 10 files 

Non-empty events (used events): 4.617.993 in total

Each row under the header represents the 3D momentum with its three components (px, py and pz), moreover it contains a fourth number representing the bacterial ID


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

In the following sections the graphs will be briefly describes, however, a more extended contextual explanation can be found later in the discussion section of this github. 

***Results E.coli***

Bins used:[0, 0.25, 0.50, 0.75, 1, 1.5, 2, 3, 4, 6, 8, 12, 16, 24, 32]

The graphs observed below provide a comparative analysis between the Wild type E.coli and the mutant version across various momentum bins. 

Regarding the error bars, they (vertical) represent the standard error of the mean for the average symmetry, and the horizontal ones represent the momentum range of each bin.


<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 13 31 57" src="https://github.com/user-attachments/assets/7c21f5d4-2e9c-40f4-af0e-7b6643bf8393" />

In the first graph we can observe the population asymmetry as a function of momentum. Where the dashed line represents absolute symmetry with a value of 0, that means that if a point is found there the WT and mutant strains are equal. 

In this particular case, the momentum values range from 0 to 16 and the average asymmetry of the 10 subsamples is relatively low between 0 and 0.0025. Meanwhile in the high-momentum region where P > 23 the measured asymmetry increases notably up to  0.0058


<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 13 31 57 copy" src="https://github.com/user-attachments/assets/28436fc6-58fc-4ea9-b285-9653e0a42908" />

The second graph represents the distribution density expressed as bacteria per event on a logarithmic scale for both WT and mutant strain averaged over the 10 subsamples 

We can observe a decay trend where both the WT (pink) and mutant (green) exhibit a sharp decline in frequency as momentum increases from 0 to 32 x 10^-20 kg m/s

***Results Bacillus Subtilis***

Bins used: [0, 0.5, 1, 1.5, 2, 2.5, 3, 4, 6, 8, 12, 16, 24, 40]

<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 12 32 44 copy" src="https://github.com/user-attachments/assets/6a099619-6423-42c3-972b-c5b5e511dc3d" />

The first graph shows that the combined asymmetry across all bacteria and momenta is 0.0011+/- 0.0007 (SEM).As the momentum rises the asymmetry does as well.
In mid momentum ranges the asymmetry stays near zero. 


<img width="950" height="600" alt="WhatsApp Image 2026-10-13 at 12 32 44" src="https://github.com/user-attachments/assets/7f9d8179-99a3-4e21-b5ad-0491d398accf" />

The second graph showing the momentum distribution dN/dP shows a similar decay profile across the WT and the mutant strain as momentum increases, from 0 to 40 x 10^-20 kg m/s



***Results Streptococcus*** 

Bins used: [0, 1, 1.5, 2, 2.5, 3, 4, 6, 8, 12, 16]


<img width="900" height="595" alt="Screenshot 2026-10-12 at 19 26 41" src="https://github.com/user-attachments/assets/dc2a4a12-20b7-4b0b-8df2-9f1edc16c3ef" />

For Streptococcus pneumoniae the total combined asymmetry across all bacteria and momenta is 0.00894+/-0.00106. This overall baseline indicates a positive and statistically greater than zero (therefore, A= 0) which indicates that is asymmetric 

In this case, a linear trend was included which shows a clear upward slope across the bins. 3.2 sigma confirms a statistically meaningful upward trend where asymmetry increases as momentum rises. 

<img width="892" height="602" alt="Screenshot 2026-10-12 at 19 26 35" src="https://github.com/user-attachments/assets/eb781f3c-225f-47a2-ab0e-7b48ed3e757d" />

The second graph shows a steadily decay at higher momentum states, picking at P = 1-2 x 10^-20 kg m/s with a 3.2 sigma which demonstrates statistical significance that at higher momentum bins there is a progression towards a bigger asymmetry.


***Results Salmonella***

Bins used: 

<img width="950" height="600" alt="finalFigure_1salmonella" src="https://github.com/user-attachments/assets/b7676799-82b1-4142-9246-457aae28850d" />

Regarding the asymmetry analysis based on momentum, we can observe how the overall asymmetry across all momenta combined is 0.0152 +/- 0.0093(SEM). Because the uncertainty interval crosses 0, the overall asymmetry is statistically weak.

<img width="950" height="600" alt="finalFigure_2salmonella" src="https://github.com/user-attachments/assets/2f8da9d9-7739-4e95-ad08-19fba35a9c4f" />

The moment distribution graph shows an exponential-like decrease as momentum increases

***Results P.aeruginosa***

Bins used: [0, 1, 1.5, 2, 2.5, 3, 4, 6, 8, 12, 16]

<img width="950" height="600" alt="Figure-p aeruginosa1" src="https://github.com/user-attachments/assets/b64c3d15-9670-4406-adb2-e49e814fae60" />
Combined across all bacteria and momenta, the average asymmetry is 0.0100+/-0.0010. However, we can observe how the asymmetry is dependent on the momentum having an upward shift from low momentum being around 0.007 to high momentum where the asymmetry jump to 0.0155.

<img width="950" height="600" alt="Figure_p aeruginosa2" src="https://github.com/user-attachments/assets/5cc917ae-bef3-4ac9-a8f9-b53ac716abe3" />
Regarding the momentum distribution, a decay is also seen down to 0.013 at P= 16

***Results tuberculosis***

Bins used: [0, 1, 1.5, 2, 2.5, 3, 4, 6, 8, 12, 16]

<img width="950" height="600" alt="Figure_tuberculosis 1" src="https://github.com/user-attachments/assets/afa2bfc2-7071-4af8-9670-335218b6666d" />

Overall asymmetry combined across all bacteria and momenta, the average asymmetry is 0.0056+/-0.0062. A slight decrease can be seen at P=2.7, -0.006, and at high momentum P=16 the asymmetry value remains low and steady at 0.006


<img width="950" height="600" alt="Figure_tuberculosis2" src="https://github.com/user-attachments/assets/515930df-d85a-449f-99db-8c961de4dab6" />

Regarding the momentum distribution in the density profile we can observe how its peak is around P=2 x 10^-20 kg m/s and decays towards higher momentum states. 


## Discussion
For the first strain pair (211, -211), we can suggest a clear dependence of asymmetry on bacterial momentum when the two strains are compared. In lower momentum the asymmetry remains near zero which is close to the overall sample mean of 0.0008+/-0.0000 (SEM). Which indicates that within standard momentum ranges both WT and mutant have a very similar behavioral distribution taits. 
However, there is a deviation see at higher momentum levels, where the asymmetry rises (up to 0.0058) which suggests that one strain is favoured over the other, where one bacteria has a better propulsion mechanics or structural stability under high kinetic energy conditions. The second graph follows the trend showing a decrease as momentum increases, where the majority of the bacteria are in low momentum states. 

In contrast with E.coli, salmonella shows a symmetric distribution across the entire momentum spectrum. In the highest momentum (P=32) the asymmetry aligns closely with the overall sample baseline, showing no substantial shift in either strain. There is minimal deviations observed in P=3 and P= 18, however they remain within standard error limits. Furthermore, the dN/dP density profiles for WT and mutant show near-perfect aligment across all measured momentum bins. This suggests that the -3334 mutation in Salmonella does not significantly alter motility characteristics.

Regarding B.subtilis, we can suggest that is mostly symmetric. However, their behavior slightly varies depending on the momenta. Across lower and intermediate momentum bins, the average sub sample asymmetry fluctuates tightly around zero, staying below 0.01- Furthermore, the dN/dP profiles for both WT and mutant overlap closely, which demonstrates nearly identical distribution behaviors. 
In higher momentum bins the asymmetry increases notably (up to 0.019) approximately which indicates a change in population proportions at high kinematics states.

Unlike other species, S.pneumoniae displays a steady increase in asymmetry as momentum rises. Despite this increasing asymmetry, the overall event density profiles for both WT and mutant strains overlap across all momentum bins. This indicates that the mutation does not significantly disrupt the kinematic distribution of the population but just subtly leans towards the WT bacteria as kinetic energy increases because the positive asymmetry and 3.2 sigma positive slope mean Nwt consistently outnumbers Nmut. as momentum increases

P.aeruginosa strain, show an asymmetric relationship and leans towards the WT strain because the combined asymmetry (A= 0.0100+/-0.0100) across all momentum bins is positive (A>0) WT outnumbers the mutant across the dataset. The asymmetry grows steadily alongside the momentum but because no data points fall below zero that indicates WT dominates across all kinematic states. In the lowest bin asymmetry sits around 0.007 whereas in high momentum regions it increases up to 0.0155. This pattern indicates that higher propulsion conditions favour the WT survival, relative to the mutant strain. However, the density profiles remain closely aligned. Which indicates that the -2212 mutation does not alter the population decay rate of P.aeruginosa.

Finally, M.tuberculosis shows a statistically symmetric distribution across all measured momentum states. The combined sample asymmetry of 0.0.56+/-0.0062 includes zero within its uncertainty margin which demonstrated that WT and mutant populations remain symmetric. The near-perfect overlap in dN/dP density distribution between WT and mutant further confirms that -3312 mutation does not have a big impact on population kinetic behavior in M.tuberculosis. 


 


