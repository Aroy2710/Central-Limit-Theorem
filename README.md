# Central-Limit-Theorem
To give some background on what this project does , the Central Limit Theorem is a fundamental theorem in statistics that states that the distribution of the sample mean (average) of any thing we are measuring can be approximated by a Normal Distribution curve independant of the original populations distribution for a sufficiently large sample size 

For example suppose you are trying to find the average height of all the students in your school, its impractical and time consuming to ask every single student for their height so you take a sample of students such as 20 students and compute the height of that sample to make conclusions about the true average height, this sample mean will clearly vary as you keep taking samples of the same size. The CLT states that as you keep increasing the number of students in your sample , the distribution of all these sample means can be approximated by a normal curve with a sufficiently large sample, typically 30 or more.


# How the Project Works 

* The main file is the CentralLimitTheoremVFinal which must be run in MATLAB.
* In order to use it properly you must have all the function and audio files in the same folder
* To see the central limit theorem in action I recommend varying the sample size in increasing order, i.e sample size : 10, then 100, then 1000, 10000 and so on , the histogram will become more and more normal with a larger sample size
* Keep the number of samples constant to a high value such as 10000
* You can choose either a histogram or a normal overlay to see the visualization and I have included other visualization such as box plot and line plots to see how the numerical value stabilizes to the true mean in the long run.
* There are other functionality I have added such as seeing summary statistics , generating a file containing all the sample means , seeing a visual gradient of all the means and seeing where certain proportions of data lie such at what range does 68/95/99.7% of the sample lie .



