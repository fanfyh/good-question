# Identification and Causal Design

Use this card when the research question involves causal claims, policy evaluation, or observational data, and when the user needs to move from "X affects Y" to a credible identification strategy. Pair with `platt-strong-inference.md` to connect competing hypotheses with discriminating evidence under real data constraints.

Sources:
- Angrist, J. D., & Pischke, J.-S. (2009). *Mostly Harmless Econometrics*. Princeton University Press.
- Angrist, J. D., & Pischke, J.-S. (2014). *Mastering 'Metrics*. Princeton University Press.
- Cunningham, S. (2021). *Causal Inference: The Mixtape*. Yale University Press.
- Imbens, G. W., & Rubin, D. B. (2015). *Causal Inference for Statistics, Social, and Biomedical Sciences*. Cambridge University Press.

## Core Idea

A causal claim is only as strong as the identification strategy that supports it. Before designing an empirical approach, name the specific endogeneity threat, then choose the identification strategy that credibly addresses it. The best questions are those where a plausible natural experiment, policy variation, or institutional feature generates quasi-experimental variation.

## Endogeneity Sources

Diagnose which threat applies:

| Threat | What It Means | Diagnostic Question |
|--------|--------------|---------------------|
| Omitted variable bias | A confounder drives both X and Y | What third factor could cause both treatment and outcome? |
| Reverse causality | Y affects X, not just X → Y | Could the outcome have a feedback channel to the treatment? |
| Selection bias | Treatment assignment is non-random | Who selects into treatment and why? |
| Measurement error | X or Y is measured with systematic noise | How reliable is the measure, and is error correlated with treatment? |
| Simultaneity | X and Y are jointly determined | Are treatment and outcome chosen in the same decision? |
| Attrition | Selective dropout correlates with treatment | Who leaves the sample and is their exit related to treatment? |

## Identification Strategy Menu

Match the strategy to the data structure and institutional context:

| Strategy | What It Exploits | Key Assumption to Defend | Typical Data Need |
|----------|-----------------|--------------------------|-------------------|
| Difference-in-Differences | Parallel trends before treatment | Treatment and control would have evolved similarly absent treatment | Panel data, pre- and post-treatment |
| Instrumental Variables | Exogenous shifter of treatment | Exclusion restriction: instrument affects Y only through X | Valid instrument, strong first stage |
| Regression Discontinuity | Cutoff or threshold in assignment | No manipulation of the running variable near the cutoff | High-frequency data around threshold |
| Synthetic Control | Weighted combination of untreated units | Pretreated units construct a valid counterfactual | Panel data with many pre-treatment periods |
| Fixed Effects | Within-unit variation over time | Time-varying confounders are controlled | Panel or repeated cross-section |
| Matching / Reweighting | Observable characteristics balance | Selection on observables (unconfoundedness) | Rich pretreatment covariates |
| Event Study | Timing of treatment relative to event | No anticipatory effects, common trends | Panel with staggered treatment timing |
| Bunching / Notch | Behavioral response to kink or discontinuity | Agents respond to the incentive structure | Administrative microdata around policy thresholds |

## Procedure

1. **State the causal claim**: "X causes Y through mechanism M."
2. **Name the counterfactual**: What would Y be for treated units had they not been treated?
3. **Diagnose the primary endogeneity threat** from the table above.
4. **Propose the identification strategy** that best exploits the data structure or institutional feature.
5. **State the key identifying assumption** and how it could be violated.
6. **Design a falsification or placebo test** that would detect violation of the assumption.
7. **Specify the ideal experiment**: If resources and ethics were unbounded, what experiment would answer the question? Use this to clarify what the quasi-experimental design is approximating.

## Prompts

- What natural experiment, policy change, or institutional rule generates variation in X that is arguably exogenous?
- Why do some units get treated and others not? Is that assignment rule exploitable?
- What would the ideal randomized experiment look like? What is the closest feasible approximation?
- Which identifying assumption is hardest to defend? How would you test it?
- What placebo test would fail if your identification strategy is invalid?
- If the estimated effect is zero, does that mean no causal effect or a failed identification strategy?
- What is the LATE if treatment effects are heterogeneous? Who are the compliers?

## Threats to Identification

| Threat | Detection Strategy |
|--------|-------------------|
| Weak instrument (IV) | F-statistic < 10; use Anderson-Rubin weak-instrument-robust inference |
| Violated parallel trends (DiD) | Pretrend test; Granger causality; alternative control groups |
| Manipulation of running variable (RD) | McCrary density test; covariate balance at cutoff |
| Interference / SUTVA violation | Check for spillovers across units; consider spatial or network designs |
| Anticipatory effects (event study) | Test for pre-trends including the period immediately before treatment |
| Compiler non-representativeness (IV) | Characterize compliers; discuss external validity of LATE |

## Red Flags

- The user has picked an identification strategy before diagnosing the endogeneity threat.
- "I will use IV" without naming a specific instrument, discussing the exclusion restriction, or reporting first-stage strength.
- "I will use DiD" without showing pre-trends or discussing why parallel trends is plausible.
- The identification assumption is untestable and the user offers no indirect evidence or placebo.
- The question asks for ATE but the design only identifies LATE, and this gap is not discussed.
- Standard errors are not clustered at the level of treatment assignment.
- Multiple hypothesis testing without correction when the design generates many estimands.
- The user confuses a significant coefficient with a credible identification strategy.
