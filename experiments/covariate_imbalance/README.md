# RQ3: To what extent are test outcomes influenced by the presence of bias?

## Background
In RQ2, we evaluate whether observational data can be used to estimate the outcome of a test case and,
additionally, how much data we require to do this accurately. However, it is not only the amount of data
that can affect the accuracy of the predicted outcome. It is also the amount of bias present in the observational
data. This is not an issue for conventional testing techniques since they effectively run a 
randomised experiment and thus mitigate sources of bias by design.

When dealing with observational data, however, we need to think carefully about how bias may have been introduced to the
data and how we can appropriately control it. Fortunately, graphical casual inference techniques are available which
enable us to identify sources of bias using causal graphs. In this paper, we leverage graphical causal inference
techniques to specify anticipated causal relationships in a modelling scenario and identify sources of bias.

In this research question, we want to investigate the extent to which causal inference helps us to mitigate bias 
from observational data used to predict test outcomes. To achieve this, similar to in RQ2, we will generate 
observational data and attempt to predict the outcome of several test cases, each of which is actually executed to
obtain the expected outcome. In this experiment, we will generate our observational data sets with 
varying levels of *covariate imbalance*, a measure of the amount of bias present in the data relative to a particular
treatment-outcome pair. In this context, a high covariate imbalance corresponds to a highly biased data set and vice
versa. 

To demonstrate the bias-mitigating ability of causal inference techniques, we will compare the outcome predicted
using causal inference (i.e. by making suitable adjustments based on causal graph) to that of standard statistical 
techniques (i.e. linear regression without adjustment based on causal graph). When observational data has a high level
of covariate imbalance, we expect the bias-mitigating affect of causal inference techniques to become more apparent.
Conversely, when covariate imbalance is low, we expect the bias-mitigating affect of causal inference techniques to be 
less noticeable since there is less bias to mitigate and thus causal inference techniques are basically reduced to 
traditional statistical techniques.

## Experimental Design
In this experiment, we are re-using the scenarios and accompanying test cases from RQ2. However, instead of using the
same observational data to predict the outcomes of the test cases, we are generating thirty set of observational data
at random that contain different levels of covariate imbalance. To achieve this, for each scenario, we have written a
script which injects confounding bias to the treatment and outcome. For example, in the `compare_vaccines` scenario, we
have introduced confounding bias to the effect of vaccination on the cumulative number of infections. Specifically, we
have made the type of vaccine (pfizer, moderna, az, none) depend on the location being modelled. This induces bias
because location now has a *causal effect* on the vaccination assignment and location also has a causal effect on the 
cumulative number of infections already. Therefore, we have the causal structure for confounding.

However, the extent of the confounding bias depends on the balance of the confounding variables across the treatment
and control group. Since our goal here is to generate observational data sets with different levels of covariate
imbalance, we have used the dirichlet distribution to sample treatment values in a biased way. This distribution is
characterised by a single concentration parameter which calibrates the extent of bias in the distribution. For example,
in the `compare_vaccines` scenario, we have defined location-specific dirichlet distributions to simulate the biased
assignment of vaccines based on country. When the value is much greater than 1, the distribution becomes approximately 
uniform and, thus, for any given country, the probability of receiving a given treatment is near identical. When the 
value is much lower than one, the distribution becomes highly skewed towards a single value (vaccine type) and, thus,
for any given country, most individuals will receive the same vaccine. Consequently, using the concentration parameter,
we can calibrate the amount of bias present in the observational data.

Using this approach, we will generate thirty sets of observational data with differing levels of covariate imbalance and
then repeat the first experiment in RQ2 for each level of covariate imbalance. For each level of covariate imbalance,
we will compare the outcome of the test case predicted using both causal inference and standard linear regression. This
will demonstrate the bias-mitigating effect of causal inference over standard statistical techniques.
