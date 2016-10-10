---
title: "Computational Methods for Neuroimaging in R, Hemorrhagic Stroke and Neuroconductor"
author: "John Muschelli, PhD - Johns Hopkins Bloomberg School of Public Health<br/> http://johnmuschelli.com/Rochester_2016.html"
date: "October 13, 2016"
output:
  ioslides_presentation:
    css: neuroconductor.css
    self_contained: no
    widescreen: yes
  beamer_presentation: default
  slidy_presentation:
    css: neuroconductor.css
    mathjax: local
    widescreen: yes
bibliography: Oral_Proposal.bib
---


<script type="text/x-mathjax-config">
MathJax.Hub.Config({ TeX: { extensions: ["color.js"] }});
</script>











## Overview of Work/Research

<div style='font-size: 28pt;'>
- Segmentation/Classification of Computed Tomography (CT) scans
    - Brain segmentation
    - Hemorrhage segmentation
- Neuroimaging and R: Neuroconductor
</div>

## Overview of Work/Research

<div style='font-size: 28pt;'>
- Segmentation/Classification of Computed Tomography (CT) scans
    - Brain segmentation
    - Hemorrhage segmentation
- Neuroimaging and R: Neuroconductor
</div>


# Neuroimaging Analysis in Stroke

## The MISTIE Stroke Trial 

* Minimally Invasive Surgery plus r-tPA for Intracerebral Hemorrhage Evacuation (<strong>MISTIE</strong>) 
    - Multi-center, multi-national Phase II clinical trial
    - Alteplase (donated by Genentech)
* Patients with intracerebral hemorrhages (≥ 20 millilters)


<div class="container">
<div id="left_col">
<img src="figures/MISTIE3-LOGO.png" style="width:200px; height:100px; display: block; margin: auto;" alt="MISTIE LOGO">
</div>
<div id="right_col">
PI: Dr. Dan Hanley
<img src="figures/Hanley.jpg" style="width:60%; display: block; margin: auto;" alt="Hanley">
</div>
</div>

* http://braininjuryoutcomes.com/mistie-about


## When I say "stroke" I don't mean ischemic

<div class="container">
<div id="left_col">
<img src="figures/ischemic_stroke_edema_700w.jpg" alt="Ischemic" style="display: block; margin: auto; width: 80%">
</div>
<div id="right_col">

- Ischemic stroke - clot blocks oxygen/nutrients
- Tissue dies
- ≈87% of strokes

<p style = "font-size:10.5px;">
Image from <a href = "http://www.strokecenter.org/patients/about-stroke/ischemic-stroke/
" style ="word-wrap: break-word;" >http://www.strokecenter.org/patients/about-stroke/ischemic-stroke/
</a>
</p>
</div>
</div>


## When I say "stroke" I don't mean ischemic

<div class="container">
<div id="left_col">
<img src="figures/ischemic_stroke_edema_700w_not.jpg" alt="Ischemic" style="display: block; margin: auto; width: 80%">
</div>
<div id="right_col">

- Ischemic stroke - clot blocks oxygen/nutrients
- Tissue dies
- ≈87% of strokes

<p style = "font-size:10.5px;">
Image from <a href = "http://www.strokecenter.org/patients/about-stroke/ischemic-stroke/
" style ="word-wrap: break-word;" >http://www.strokecenter.org/patients/about-stroke/ischemic-stroke/
</a>
</p>
</div>
</div>




## Intracranial/Intracerebral Hemorrhage

<div class="columns-2" style='font-size: 28pt;'>
- When a blood vessel ruptures into:
    + **Tissue ⇒ intracerebral hemorrhage (ICH)**
- ≈ 13% of strokes

![](figures/stroke_hem_web.jpg)

<p style = "font-size:10.5px; ">
<a href = "http://www.heartandstroke.com/site/c.ikIQLcMWJtE/b.3484153/k.7675/Stroke__Hemorrhagic_stroke.htm" style ="word-wrap: break-word;" >http://www.heartandstroke.com/site/c.ikIQLcMWJtE/b.3484153/k.7675/Stroke__Hemorrhagic_stroke.htm</a>
</p>

</div>


## X-ray Computed Tomography (CT) Scans
<div class="notes">
Images are acquired from an X-ray scanner.  
x-ray goes around object and detector the other side of the object determines how many x-rays are recovered 
- fancy transform
- Image!
</div>
<div style="width:48%;float:left;">
<sub><sup><sub><sup>Image from http://www.cyberphysics.co.uk/topics/medical/CTScanner.htm</sup></sub></sup></sub>
![inline fill](figures/CT_diagram2.gif)
<br>
</div>
<div style="margin-left:48%;">
<img src="figures/Original_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
</div>


## Image Representation: voxels (3D pixels)
<div class="columns-2">
<img src="figures/Zoom_No_ICH.png"  style="width:100%;  display: block; margin: auto;">
<br>
<img src="figures/movie_final.gif" style="width:80%;  inline; display: block; margin: auto;" loop=infinite>

<p style='font-size: 10pt;'>Muschelli, John, Elizabeth Sweeney, and Ciprian Crainiceanu. "brainR: Interactive 3 and 4D Images of High Resolution Neuroimage Data." R JOURNAL 6.1 (2014): 42-48.</p>
</div>

## Terminology: Neuroimaging to Data/Statistics

<div style="font-size: 26pt">
* Segmentation ⇔ classification 
* Image ⇔ 3-dimensional array
    - composed of voxels
* Mask/Region of Interest ⇔ binary (0/1) image 
* Registration ⇔  Spatial Normalization/Standarization
    - "Lining up" Brains
</div>


# Brain Segmentation of CT Scans

## Problem: CT Scans Capture **Everything**

<img src="figures/the_room.png" style="width:100%; display: block; margin: auto;" alt="The room">


## Brain Segmentation of CT Scans


<div class="columns-2">
Want to go from an image:
<img src="figures/Original_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
<br/>
<img src="figures/White_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
</div>

## Brain Segmentation of CT Scans


<div class="columns-2">
Want to go from an image:
<img src="figures/Original_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
<br/>
To a brain-extracted image:
<img src="figures/SS_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
</div>

## Publicly Available Code

* Muschelli, John, et al. "Validated automatic brain extraction of head CT images." NeuroImage 114 (2015): 379-385. 
* R code: http://bit.ly/CTBET_RCODE - based on **fslr** 
* bash code: http://bit.ly/CTBET_BASH

<img src="figures/Normal_SS.png" style="width:38%;  display: block; margin: auto;" alt="SS">


# Larger ICH Volume ⇒ Worse Outcome




## ICH Segmentation, Volume/Location Estimation 

<div class="columns-2">
Want to go from a brain image:
<img src="figures/SS_Image.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
<br/>
To a binary hemorrhage mask:
<img src="figures/SS_Image_PrePredict_ROI_Mask.png" style="width:100%;  display: block; margin: auto;" alt="MISTIE LOGO">
</div>


## Subject Data used: 111 scans (1 Per Patient)
<div id="wrap">
<div id="left_col">


----------------------------------------------
&nbsp;                                 Overall
-------------------------------- -------------
Age in Years: Mean (SD)            60.8 (11.2)

Male: N (%)                         76 (68.5%)

Reader-Based Clot Location (%)                

&nbsp;&nbsp;&nbsp;Putamen            68 (61.3)

&nbsp;&nbsp;&nbsp;Lobar              33 (29.7)

&nbsp;&nbsp;&nbsp;Globus              6 ( 5.4)
Pallidus                                      

&nbsp;&nbsp;&nbsp;Thalamus            4 ( 3.6)

ICH Volume in mL: Mean (SD)        37.4 (20.1)
----------------------------------------------

</div>
<div id="right_col"  style='font-size: 24pt;'>


- Adults (inclusion criteria 18-80 years old)
- Mostly males
- Reader-classified Location of Hemorrhage

</div>

</div>


## Step 1: Create Predictors of ICH <img src="figures/Just_The_Covariates2.png" style="width:48%; display: block; margin: auto;" alt="Preds">  

## Data Structure for One Patient <br/> <img src="figures/voxel_stacking.png" style="width:70%;  display: block; margin: auto;" alt="MISTIE LOGO">  

---

<div class="container"> 
<div id="left_col2"> 
  <h2>Step 2: Aggregate Data</h2>
  Training Data Structure
  
  * Stack together 10 randomly selected patients
  * Train model/classifier on this design matrix

  
  </div>    
  <div id="right_col2">
  <img src="figures/Large_Design_Matrix_small.jpg" style="width:45%;  display: block; margin: auto;" alt="MISTIE LOGO">  
  </div> 
</div>


## Step 3: Fit Models / Classifier

Let $y_{i}(v)$ be the presence / absence of ICH for voxel $v$ from person $i$.  

General model form: 
$$
 P(Y_{i}(v) = 1)  \propto f(X_{i}(v))
$$

## Models Fit on the Training Data

- Logistic Regression: \(f(X_{i}(v)) = \text{expit} \left\{ \beta_0 + \sum_{k= 1}^{p} x_{i, k}(v)\beta_{k}\right\}  \)
- Generalized Additive Model (Hastie, et al., 1990) 
    - fit using thin plate splines
- LASSO (Tibshirani, 1996; Friedman, et al., 2010): 
$$ \mathcal{L}\left(\left.Y_{i}(v) \right|\, f(X_i(v))\right) \propto \beta_0 + \sum_{k= 1}^{p} x_{i, k}(v) \beta_{k} + \lambda \sum_{k= 1}^{p} \left|\beta_{k}\right|
$$
- Random Forests (Liaw, et al., 2002; Breiman, 2001)
<div class="centerer">
\(f(X_{i}(v)) \propto\) <img src="figures/Random_Forest.png" style="width:40%;inline;" alt="random forest">
</div>

## Predicted Volume Estimates True Volume <img src="figures/Reseg_Volume_Logistic.png" style="width:55%;  display: block; margin: auto;" alt="Reseg">

## Predicted Volume Estimates True Volume <img src="figures/Reseg_Volume_Comparison.png" style="width:55%;  display: block; margin: auto;" alt="Reseg">

## Patient with Median Overlap in Validation Set

<img src="figures/Reseg_Figure_DSI_Quantile_050_No_DSI.png" style="width:500px;  display: block; margin: auto;" alt="MISTIE LOGO"> 

## Shiny Application  [http://johnmuschelli.com/ich_segment.html](http://johnmuschelli.com/ich_segment.html) <img src="figures/Shiny_prediction_crop.png" style="width:105%; display: block; margin: auto;" alt="shiny orig">

## Conclusions of Stroke Analyses

<div style="font-size: 24pt">

- We can segment ICH volume from CT scans <br><br>

</div>


---- 
<div class="container"> 
<div id="left_col2"> 
  <h2>Workflow for the Analysis</h2>
  </div>    
  <div id="right_col2">
<img src="figures/Imaging_Pipeline_Flowchart_box_stat.png" style="width:75%; display: block; margin: auto;" alt="flow">
  </div>
</div>

----
<div class="container"> 
<div id="left_col2"> 
  <h2>Workflow for the Analysis</h2>
  </div>    
  <div id="right_col2">
<img src="figures/Imaging_Pipeline_Flowchart_matlab.png" style="width:75%; display: block; margin: auto;" alt="flow">
  </div>
</div>

# <img src="figures/Better_Neuron_note.png" style="width:10%; display: inline; margin: auto;" alt="flow"> Neuroconductor: <br> A Neuroimaging R Repository <br> Hosted on GitHub and <br>Checked by Travis CI


----
<div class="container"> 
<div id="left_col2"> 
  <h2>Neuroconductor Goal: <h2>
  Lower the bar to entry - just R
  </div>    
  <div id="right_col2">
<img src="figures/Imaging_Pipeline_Flowchart_R.png" style="width:75%; display: block; margin: auto;" alt="flow">
  </div>
</div>

## (A Lot of) Software Choices for fMRI Analysis 

<img src="figures/carp_2012_figure_full.jpg" style="width:650px; display: block; margin: auto;" alt="flow">

<!-- ![](figures/carp_2012_figure_full.jpg) -->

From Carp, Joshua. "The secret lives of experiments: methods reporting in the fMRI literature." Neuroimage 63.1 (2012): 289-300.






## Number of Downloads (My CRAN packages)

From the `cranlogs` R package (as of October 10, 2016):

<div class="container"> 
   <div class="left-half">

<!--html_preserve--><div id="htmlwidget-c1b67d88e686ebe73ef3" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-c1b67d88e686ebe73ef3">{"x":{"filter":"none","data":[["<strong>fslr\u003c/strong>","oasis","papayar","<strong>spm12r\u003c/strong>","matlabr","brainR","<strong>freesurfer\u003c/strong>","WhiteStripe"],[8930,1442,653,1773,3110,8764,161,4862],[139,63,59,52,41,37,35,31]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>Package\u003c/th>\n      <th>All Time\u003c/th>\n      <th>Last Week\u003c/th>\n    \u003c/tr>\n  \u003c/thead>\n\u003c/table>","options":{"dom":"t","autoWidth":true,"columnDefs":[{"className":"dt-center","targets":0},{"className":"dt-right","targets":[1,2]}],"order":[],"orderClasses":false}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->
</div>
   <div class="right-half">
  <img src="figures/carp_2012_figure_box_crop.jpg" style="width:80%;  display: block; margin: auto;" alt="carp_box">  
  </div> 
</div>



----
<div class="container"> 
<div id="left_col2"> 
  <h2>Neuroconductor Goal: </h2>
  
  <p>
  Provide package checks/rules/**stability** 
  
  - check against other imaging software (e.g. FSL)
  </p>
</div>    
  <div id="right_col2">
<img src="figures/new_package_meme.jpg" style="width:75%; display: block; margin: auto;" alt="flow">
  <p style='font-size: 12pt;'> From [https://memegenerator.net/instance/51553268](https://memegenerator.net/instance/51553268).
  </p>
  </div>
</div>

----
<div class="container"> 
<div class="left-half"> 
  <h2>Neuroconductor Goal: </h2>
  
  <p>
  R **Data** packages for testing
  
  - images can be big 
  - use package system
  
  </p>
</div>    
  <div class="right-half"> 
<img src="figures/brains_meme.jpg" style="width:100%; display: block; margin: auto;" alt="flow">
  <p style='font-size: 12pt;'> From [https://memegenerator.net/Everywhere-Toy-Story](https://memegenerator.net/Everywhere-Toy-Story).
  </p>

  </div>
</div>



----
<div class="container"> 
<div class="left-half"> 
  <h2>Neuroconductor Goal: </h2>
  
  <p>
  Detailed **tutorials** on how to actually perform an analysis
  
  See [http://johnmuschelli.com/neuroc/](http://johnmuschelli.com/neuroc/)
  
  </p>
</div>    
<div class="right-half"> 
<img src="figures/cat_analysis.gif" style="width:100%; display: block; margin: auto;" alt="flow">
  <p style='font-size: 10pt;'> From [http://i.imgur.com/0Y1xISa.gifv](http://i.imgur.com/0Y1xISa.gifv).
  </p>

  </div>
</div>

----
<div class="container"> 
<div class="left-half"> 
  <h2>Neuroconductor Goal: </h2>
  
  <p>
  
  Allow neuroimaging to use all the things R has to offer
  
  - versioning and testing
  - markdown and reproducibility
  - statistics
  - Shiny
  
  </p>
</div>    
<div class="right-half"> 
<img src="figures/all_the_R.jpg" style="width:100%; display: block; margin: auto;" alt="flow">
  <p style='font-size: 10pt;'> From [https://memegenerator.net/X-All-The-Things/caption](https://memegenerator.net/X-All-The-Things/caption).
  </p>

  </div>
</div>



## Neuroconductor <img src="figures/Better_Neuron_note.png" style="width:10%; display: inline; margin: auto;" alt="flow">

Problems

1.  More control over the workflow = more work (**for us statisticians**!)
2.  Users need external software (versions/installation)
3.  No control over external software
    - if maintainer changes something, not much recourse
4.  Need the content (buy-in from the community)


## How do I get started?

<div class="container"> 
   <div class="left-half" style="font-size: 28pt;">
   
Neuroconductor Content:
[http://johnmuschelli.com/neuroc/](http://johnmuschelli.com/neuroc/)

Coursera Course: 
Introduction to Neurohacking In R

[https://www.coursera.org/learn/neurohacking/](https://www.coursera.org/learn/neurohacking/)

</div>
   <div class="right-half">
   <img src="figures/neurohacking_logo.png" style="width:50%; display: block; margin: auto;" alt="neurohacking">
</div>
</div>

# Thanks





## Under Development R Packages

1.  nitrc - download data from the **NITRC repository**
2.  MNITemplate$^*$ - data of a population-level "template" image
3.  EveTemplate$^*$ - data of a different template image
4.  kirby21 - data package with 2 subjects, 2 visits with multimodal imaging
5.  rcamino - interface to analyze DTI data
6.  msseg - MS lesion segmentation 
7.  extrantsr - pipelines for structural imaging analysis

Not started yet

8.  hcp - interface with Human Connectome Project
9.  afnir - R port of AFNI software (No. 2 on the chart)

$^*$ - working with Jean-Philippe Fortin on these







