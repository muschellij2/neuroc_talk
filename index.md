# Neuroconductor: A Neuroimaging Analysis Project in R
John Muschelli <br/> http://johnmuschelli.com/neuroc_talk/  
September 19, 2016  




## Stroke Segmentation in CT Scans

<div class="container">
   <div class="left-half">
<img src="figures/Original_Image.png" style="width:100%;  display: block; margin: auto;" alt="Brain Image">
   </div>
   <div class="right-half">
<img src="figures/SS_Image_PrePredict_ROI_Mask.png" style="width:100%;  display: block; margin: auto;" alt="Hemorrhage img">
</div>
</div>

## Shiny Application <img src="figures/Shiny_prediction.png" style="width:105%; display: block; margin: auto;" alt="shiny orig">


## <img src="figures/Imaging_Pipeline_Flowchart_box.png" style="width:50%; display: block; margin: auto;" alt="flow">

## <img src="figures/Imaging_Pipeline_Flowchart_matlab.png" style="width:50%; display: block; margin: auto;" alt="flow">


## (A Lot of) Software Choices for fMRI Analysis 

<img src="figures/carp_2012_figure_full.jpg" style="width:650px; display: block; margin: auto;" alt="flow">

<!-- ![](figures/carp_2012_figure_full.jpg) -->

From Carp, Joshua. "The secret lives of experiments: methods reporting in the fMRI literature." Neuroimage 63.1 (2012): 289-300.


## Number of Downloads (My CRAN packages)

From the `cranlogs` R package:






<!--html_preserve--><div id="htmlwidget-4532e58b925a788facf3" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-4532e58b925a788facf3">{"x":{"filter":"none","data":[["fslr","brainR","freesurfer","matlabr","papayar","WhiteStripe","spm12r","oasis"],[8549,8638,49,2970,517,4755,1641,1307],[121,38,36,33,33,19,18,15]],"container":"<table class=\"display\">\n  <thead>\n    <tr>\n      <th>Package\u003c/th>\n      <th>All Time\u003c/th>\n      <th>Last Week\u003c/th>\n    \u003c/tr>\n  \u003c/thead>\n\u003c/table>","options":{"dom":"t","autoWidth":true,"columnDefs":[{"className":"dt-center","targets":0},{"className":"dt-right","targets":[1,2]}],"order":[],"orderClasses":false}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->

## R Package Interfaces with Imaging Software

<img src="figures/carp_2012_figure_full_box.jpg" style="width:650px; display: block; margin: auto;" alt="flow">


# <img src="figures/Better_Neuron.png" style="width:10%; display: inline; margin: auto;" alt="flow"> Neuroconductor: <br> A Neuroimaging R Repository <br> Hosted on GitHub and <br>Checked by Travis CI

## <img src="figures/Imaging_Pipeline_Flowchart_R.png" style="width:50%; display: block; margin: auto;" alt="flow">

## Neuroconductor Goals (Similar to BioC)

<div style='font-size: 24pt;'>

1.  Lower the bar to entry - just have to know R
    - more packages to **interface** with other programs 
2.  All the things a repository has (checks/rules/**stability**)
    - additional checks with imaging software installed (e.g. examples)
3.  **Data** packages to test packages with real data (images can be big)
4.  Detailed **vignettes/tutorials** on how to actually perform an analysis
5.  Image analyses use all the "things R has to offer" (packaging system/**reproducibility**/etc.)

</div>


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


## Neuroconductor <img src="figures/Better_Neuron.png" style="width:10%; display: inline; margin: auto;" alt="flow">

Hopeful Solutions

1.  Help improve reproducibility in imaging
2.  Standardize the syntax / R objects for imaging a bit (I'm realistic)
3.  Easily-accessible content

Problems

1.  More control over the workflow = more work (**for us**!)
2.  Users need external software (versions/installation)
3.  No control over external software
4.  Need the content (buy-in from the community)




# Thanks











## Current R Capabilities in Imaging

<div class="columns-2">


1.  **Image I/O**
2.  **Plotting**
3.  Image registration (linear/non-linear)
9.  **Image smoothing**
4.  **Tissue-class segmentation (white/gray/CSF)**
5.  Inhomogeneity correction
6.  **Intensity normalization**


7.  Temporal filtering
8.  Large linear models
9.  Analysis of fMRI task data
10.  Diffusion tensor models



</div>
