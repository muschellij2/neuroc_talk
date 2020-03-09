---
title: "<img src=\"Arkansas_2020_QR.png\" style=\"width:20%; display: inline; margin: auto;\"></br>Neuroconductor: An R Platform for Medical Imaging Analysis"
author: 'John Muschelli<br/>https://johnmuschelli.com/neuroc_talk/Arkansas_2020.html<br/> Johns Hopkins Bloomberg School of Public Health'
output:
  ioslides_presentation:
    css: neuroconductor.css
    self_contained: no
    widescreen: yes
    keep_md: true
bibliography: Oral_Proposal.bib
logo: bloomberg.logo.small.horizontal.blue.png
---
<style type="text/css">
article {
  font-size: 30pt;
}
</style>





# R is a language and environment <br>for **statistical** computing <br>and graphics. <br> https://cran.r-project.org/

# R is **much more** than that now, but...

## What did R have for medical imaging?
<img src="figures/grandma_meme.jpg" style="width:65%; display: block; margin: auto;" alt="flow">
  <p style='font-size: 12pt;'> [https://imgflip.com/memegenerator/Grandma-Finds-The-Internet](https://imgflip.com/memegenerator/Grandma-Finds-The-Internet)
  </p>  



## What did R have for medical imaging?

<img src="figures/jss_circles.png" style="width:100%; display: inline; margin: auto;" alt="flow">

## What did R have for medical imaging?

  <img src="figures/imaging_task_view.png" style="width:100%; display: inline; margin: auto;" alt="flow">





----
<div class="container"> 
<div id="left_col2"> 
  <h2>Workflow for an Analysis</h2>
<div style='font-size: 32pt;'>

- bash <img src="figures/Bash-new-600x600.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 
- FSL <img src="figures/FSL.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 
- ANTs <img src="figures/ants.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 
- MRIcroGL <img src="figures/mricrogl.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 
- OsiriX <img src="figures/OsiriX.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 
- SPM 12 <img src="figures/spm12.png" style="width:20%; display: inline; margin: auto;" alt="flow"> 

</div>
  </div>    
  <div id="right_col2">
<img src="figures/workflow_edited_nonR.png" style="width:73%; display: block; margin: auto;" alt="flow">
  </div>
</div>


----
<div class="container"> 
<div id="left_col2"> 
  <h2>Workflow for an Analysis</h2>
<div style='font-size: 32pt;'>
  
Multiple pieces of software used

  - all different syntax
</div>
  </div>    
  <div id="right_col2">
<img src="figures/workflow_edited_nonR.png" style="width:73%; display: block; margin: auto;" alt="flow">
  </div>
</div>


----
<div class="container"> 
<div id="left_col2"> 
  <h2>Our Goal: </h2>
<div style='font-size: 24pt;'>
  
Lower the bar to entry 

- all "one" code (`R`)
    - pipeline tool
    - also "native" `R` code

Complete pipeline
  
  - preprocessing and analysis
</div>
  </div>    
  <div id="right_col2">
<img src="figures/workflow_edited_R.png" style="width:73%; display: block; margin: auto;" alt="flow">
  </div>
</div>


## Envy: Bioconductor<br> <img src="figures/bioconductor.png" style="width:65%; display: inline; margin: auto;" alt="flow"> 

- centralized bioinformatics packages (> 1300)
- large community/developer team
- published tutorials and workflows 
- additional requirements to CRAN (e.g. packages need vignettes)





# <img src="figures/neuroconductor_brain_type_bbg.png" style="width:80%; display: inline; margin: auto;" alt="flow"><br> An R Platform for <br> Medical Imaging Analysis


## What is Neuroconductor?

1.  A centralized repository of packages (N = 101)
2.  A community of developers (N = 27) and users
3.  A website [https://neuroconductor.org/](https://neuroconductor.org/).
    - with tutorials and help
4.  A team helping developers and users (John, Adi Gherman, Ciprian Crainiceanu, Brian Caffo)

## Benefits of Neuroconductor

<div style='font-size: 32pt;'>
  
Allow imaging to use all `R` has to offer:
  
- Statistics and Machine Learning (`tensorflow`)
- Versioning and testing (`GitHub`)
- Reproducible reports and analyses
- Shiny (web applications)
- Genomics/Imaging analysis in one platform
    - Bioconductor
  
</div>


## Goal: Centralize the packages (currently 101)

<img src="figures/neuroc_list_packages.png" style="width:100%; display: inline; margin: auto;" alt="flow">

## New release (December 2019)

<img src="figures/dependency_graph.png" width="75%" style="display: block; margin: auto;" />

## Package Capabilites

- image registration: ANTsR, RNiftyReg, fslr
- inhomogeneity correction: fslr, ANTsR
- intensity normalization: WhiteStripe, RAVEL, ComBat (genomic)
- 3D smoothing: fslr, ANTsR, AnalyzeFMRI
- download/package data: kirby21.t1, kirby21.fmri, neurohcp, nitrcbot, Rxnat, malf.templates



----
<div class="container"> 
<div id="left_col2"> 
  <h2>Development Pipeline: </h2>
  
<div style='font-size: 28pt;'>
  
Check the package for stability

- check against other imaging software (e.g. FSL)

</div> 
  </p>
</div>    
  <div id="right_col2">
  
  <img src="figures/neuroc_workflow.png" style="width:75%; display: block; margin: auto;" alt="flow"> 
  </div>
</div>


----
<div class="container"> 
<div id="left_col2"> 
<h2>Neuroconductor Goal: </h2>

<div style='font-size: 28pt;'>

Detailed **tutorials** on how to actually perform an analysis  

</div> 
</div>    

<div id="right_col2">
<img src="figures/cat_analysis.gif" style="width:80%; display: block; margin: auto;">
<p style="font-size: 10pt;"> From [http://i.imgur.com/0Y1xISa.gifv](http://i.imgur.com/0Y1xISa.gifv).
</p>
</div>
</div>

</br></br></br></br>
</br></br></br></br>
<div class="container" style="width:100%">
http://johnmuschelli.com/neuroc
</div>

## Some (Unpopular?) Opinions

1. No code = no method...yet  "Available upon request" - not usually upheld
2. We are not the leaders in imaging
3. Not everyone cares about our methods
4. Many engineers are better in imaging at a) distributing code and b) selling their method
5. Most Academics (& depts) don't really support software well.


## Helping Developers

<div id="left_col" style="font-size: 28pt;">
- GitHub allows the Neuroconductor team to help fix issues
- Pull Requests to developers
- Standardized checking of Packages (Travis configuration)
- Remove unnecessary hurdles for developers
</div>
  <div id="right_col">
  
  <img src="figures/help_me_help_you.gif" style="width:110%; margin: auto;" alt="flow"> 
  <br>
  <br>
  <br>
  <div style="font-size: 10pt;">
Image from: https://giphy.com/gifs/medblr-medschool-dr-dres-anatomy-uRb2p09vY8lEs
</div>

  </div>
</div>


## Training we are providing

<div class="container"> 
   <div class="left-half" style="font-size: 28pt;">
   Coursera Course: Introduction to Neurohacking In R 
  </div>
  <div class="right-half" style="font-size: 28pt;">
  <img src="figures/neurohacking_logo.png" style="width:40%;" alt="neurohacking">
  </div>
  </br></br></br></br>
https://www.coursera.org/learn/neurohacking/

<div style="font-size: 28pt;">
  http://johnmuschelli.com/imaging_in_r/
</div>
</div>


# Neuroimaging Analysis in Stroke

## The MISTIE Stroke Trial 

* Minimally Invasive Surgery plus r-tPA for Intracerebral Hemorrhage Evacuation (<strong>MISTIE</strong>) 
    - Multi-center, multi-national Phase II RCT
* Patients with intracerebral hemorrhages (≥ 20 millilters)

<img src="figures/MISTIE3-LOGO.png" style="width:200px; height:100px; display: block; margin: auto;" alt="MISTIE LOGO">

* http://braininjuryoutcomes.com/mistie-about


## What is Intracranial/Intracerebral hemorrhage?

<div class="columns-2" style='font-size: 28pt;'>
- When a blood vessel ruptures into:
    + **Tissue ⇒ intracerebral hemorrhage (ICH)**
    + Ventricles ⇒ intraventricular hemorrhage (IVH)
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


## A note the MRI folks (about CT)

- CT has actual units (Hounsfield Units)
- CT is **the**  modality for clincial ICU imaging
- Takes seconds vs. minutes (MRI)
- Muschelli, J., 2019. Recommendations for Processing Head CT Data. Frontiers in neuroinformatics, 13, p.61.
- https://johnmuschelli.com/process_head_ct/example/

## {#margins}

<div class="container" style="margin-top: -60px;"> 
   <div class="left-half2" style="font-size: 24pt;">
Muschelli, J., Sweeney, E. M., Ullman, N. L., Vespa, P., Hanley, D. F., & Crainiceanu, C. M. (2017). **PItcHPERFeCT**: Primary intracranial hemorrhage probability estimation using random forests on CT. *NeuroImage: Clinical*, 14, 379-390.
  </div>
  <div class="right-half2" style="font-size: 28pt;">
  <img src="figures/Imaging_Pipeline_Flowchart_with_Rigid.png" style="width:70%; display: inline; margin: auto;">
  </div>
</div>



## <a href="https://neuroconductor.org/package/ichseg">ichseg: ICH Segmentation on CT</a> <img src='figures/ichseg_logo.png' align="right" height="139" />
```r
ichseg::ich_segment(img = "/path/to/ct/scan")
```

<img src="figures/ichseg_example.png" width="85%" style="display: block; margin: auto;" />

## Things in the Works

<div class="container"> 
   <div class="left-half" style="font-size: 28pt;">
  https://github.com/ANTsXNet - Deep Learning
  </div>
  <div class="right-half" style="font-size: 28pt;">
  <img src="figures/antsxnet.png" style="width:80%; display: inline; margin: auto;">
  </div>
</div>




## Questions?

Email:
<img src="email_QR.png" style="width:20%; display: inline; margin: auto;">

Submit Packages at: https://neuroconductor.org/submit-package

Funding: NIH 2R01NS060910 and U24HG010263


## neurohcp: Human Connectome Project 

- Allows you to download data from [Human Connectome Project](https://www.humanconnectome.org/)
- The 1200 Subjects release: behavioral and 3T MR imaging data from 1206 healthy young adult participants.  Standardized protocol.
- Tutorial: http://johnmuschelli.com/neuroc/neurohcp


## rcamino: Port of Camino Software

- Wraps [Camino Diffusion MRI Toolkit](http://camino.cs.ucl.ac.uk/)
- Takes in b-values, b-vectors, and tensors
- Fits models for DTI data
- http://johnmuschelli.com/neuroc/DTI_analysis_rcamino/index.html


## malf.templates: Segmented T1-weighted Images 
<div style='font-size: 20pt;'>
- Data from the MICCAI 2012 Challenge on Multi-atlas Labelling Data
- From OASIS project and the labeled data as provided by
Neuromorphometrics, Inc. (http://Neuromorphometrics.com/) 
</div>

![](Arkansas_2020_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

## MALF: Skull Stripping Example

<div class="container">
  <div class="left-half"> 
From [@mass]:

<img src="figures/malf_figure.jpg" style="width: 75%; display: block; margin: auto;">
</div>
  <div class="right-half"> 

- Register templates to an subject T1 
- Apply transformation to the label/mask, average over voxels
    - there are "smarter" (e.g. weighted) ways
</div>
</div>


