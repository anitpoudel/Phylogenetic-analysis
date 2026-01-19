# Phylogenetic-analysis
Phylogenetics studies sequence similarities to infer how closely they are related in terms
of evolutionary distance. The more similar and conserved the sequences are, the closer their
common ancestors are.

## Purpose
It helps to know the evolutionary time period of a sequence or a species.
It also helps to study how closely related organisms are. 
It helps to learn events like speciation, divergence, and gene transfer. 

## Phylogenetic tree
It starts with building a tree from aligned sequences, also known as a phylogenetic tree.
A phylogenetic tree can be a *gene tree* that tracks the evolutionary history of a specific gene
and a *species tree* that tracks the divergence of an entire species. Highly conserved regions 
like 16S RNA are used to develop a species tree.

One of the most common and oldest strategies to estimate evolutionary time is the *molecular clock*
which states that sequences are evolved at approximately a constant rate over time. 
 
## Substitution models
There are several DNA and Amino acid substitution models that study patterns and probabilities of
sequence change. This estimated genetic distance can be used to calculate divergence time, either
using molecular clock theory or other strategies like relaxed models.

*DNA models* are used to study nucleotide substitution.
Example *Jukes-Cantor model* and *Kimura 2-parameter model*
It is largely based on mutation probabilities.

*Amino acid models* are used to study amino acid changes. 
Example *PAM*, *JTT*, *WAG*, and *LG*
It is largely based on functional conservation.

There are two strategies of tree generation
1. Single tree generation
	Example *UPGMA*, *Neighbor-joining*
	It has 3 major steps:
	1. Sequence alignment
	2. Generation of distance matrix
	3. Generation of phylogenetic tree

2. Multiple tree generation
	Example *Maximum likelihood*, *Bayesian*
	It first generates multiple trees and selects the best tree. 
	*RAxML* or Randomized Axelerated Maximum Likelihood is one of the most popular
	multiple tree generation methods.

# Pipelines for generating trees using RAxML
1. Make an alignment file ready and replace the input.fna (DNA) or input.faa (AA) file with 
your aligned file using multiple sequence alignment
2. Load RAxML on High Performance Computing (HPC)
3. Select the evolutionary model and replace it with your choice of model 
PROCTCATAUTO automatically selects the best model
4. Change the number of bootstraps if needed in the script
3. Run the script phylogenetic.sbatch

# Outputs
RAxML_info.output.nwk
RAxML_bootstrap.output.nwk
RAxML_bipartitions.output.nwk
RAxML_bipartitionsBranchLabels.output.nwk
RAxML_bestTree.output.nwk