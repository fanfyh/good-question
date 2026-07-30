# Domain Adapters

Use this card after a domain brief when the user works in one of these familiar research areas. Do not use it as a substitute for current sources; it only adds field-specific evidence norms and common failure modes.

## How To Use

1. Pick only the relevant adapter.
2. Translate the user's rough idea into that domain's evidence norms.
3. Add at least one domain-specific reviewer objection to the Good Question Card.
4. If the claim depends on current literature, mark it as source-backed, inference, or unknown.

## Ecology

**Common weak forms:** descriptive pattern hunting, single-site novelty, "biodiversity is important" without a mechanism or decision.

**Stronger question forms:**
- Which mechanism best explains the pattern across environmental gradients, disturbance, or management regimes?
- Under what boundary conditions does a general ecological relationship fail?
- What management or forecasting decision would change if the answer were known?

**Evidence norms:** replication across space/time, scale matching, natural-history plausibility, confound control, uncertainty in detection or sampling.

**Reviewer objections:** site-specific story, unmeasured environmental gradient, weak causal identification, result is interesting but not generalizable.

## Remote Sensing

**Common weak forms:** applying a new model to a new region, benchmark improvement without ground-truth value, visual products without decision relevance.

**Stronger question forms:**
- What uncertainty does the sensor/model resolve that simpler baselines cannot?
- Where does transfer fail across regions, seasons, sensors, or management contexts?
- How much uncertainty is acceptable for the intended decision?

**Evidence norms:** ground truth quality, spatial/temporal scale mismatch, baseline comparison, domain shift, uncertainty calibration, leakage checks.

**Reviewer objections:** weak validation data, no simple baseline, model learns site artifacts, accuracy gain does not change any decision.

## Machine Learning And AI4Science

**Common weak forms:** "use foundation model/LLM/transformer for X", leaderboard chasing, method-first novelty.

**Stronger question forms:**
- What scientific uncertainty or failure mode does the model diagnose?
- Which simpler model or mechanistic baseline must the method beat to matter?
- What would make improved prediction scientifically informative rather than only operationally useful?

**Evidence norms:** leakage control, out-of-distribution tests, ablations, baseline strength, uncertainty calibration, interpretability tied to a scientific claim.

**Reviewer objections:** benchmark is disconnected from the scientific question, data leakage, insufficient baseline, no insight beyond prediction.

## Social Science

**Common weak forms:** broad "impact of X on Y", survey-only description, vague policy relevance.

**Stronger question forms:**
- Which mechanism links X to Y, and what rival explanation could produce the same pattern?
- What comparison or design makes the claim credible?
- Which decision-maker or population would update their belief?

**Evidence norms:** construct validity, causal identification, sampling frame, measurement invariance, ethics, external validity.

**Reviewer objections:** unclear construct, selection bias, weak identification, overgeneralization beyond the sample.

## Economics And Causal-Inference Policy Research

Use this adapter for applied microeconomics, public economics, development, labor, urban, health, and any question whose goal is a credible treatment effect or a welfare counterfactual. For strategy selection and falsification tests, pair with `references/identification-causal-design.md`.

**Common weak forms:** "estimate the effect of X on Y" with no mechanism or importance; "study the impact of policy P" without naming the identifying variation; "use reform R as a natural experiment" without specifying the institutional feature that generates exogenous variation; "no one has studied X in country C" as descriptive novelty; "X is an important policy issue" with no resolvable uncertainty; method-first framing ("apply DiD/IV/RD to setting S") before diagnosing the endogeneity threat.

**Stronger question forms:**
- Through what mechanism does X affect Y, and which competing mechanism best survives the evidence?
- What identifying variation in P allows causal interpretation, and which threat is hardest to rule out?
- What specific institutional feature of reform R generates exogenous variation, and what placebo would fail if the design is invalid?
- Who gains, who loses, and what is the net welfare change under reasonable assumptions about incidence?
- What feature of this context would cause established results from other settings to break or reverse?
- Does the setting satisfy the identifying assumption of the chosen method, and what robustness test would detect a violation?

**Evidence norms:** name and defend the specific identifying assumption (exclusion restriction, parallel trends, unconfoundedness, no manipulation, SUTVA); treat identification and importance as joint gates — a clean design on a trivial parameter is a weakness, so name what decision or belief updates; choose structural versus reduced-form to fit the stake (recover deep parameters only when a welfare counterfactual or mechanism demands it); distinguish statistical from economic significance; flag partial- versus general-equilibrium and LATE-versus-ATE limits on external validity; challenge identification assumptions as substantive claims, not merely technical ones.

**Reviewer objections:** identification without importance (clever instrument, trivial question), contested or undocumented exclusion restriction, LATE presented as ATE, external-validity overreach from a single context, mechanism claimed without theory or evidence, statistically significant but economically negligible magnitude, partial-equilibrium estimate dressed as a general-equilibrium welfare claim.

## Biomedicine

**Common weak forms:** biomarker fishing, therapeutic promise without mechanism, small cohort association as a conclusion.

**Stronger question forms:**
- Which biological mechanism or clinical decision could this evidence change?
- What comparator, endpoint, or perturbation would distinguish mechanism from correlation?
- What negative result would stop translation?

**Evidence norms:** endpoint validity, cohort size and bias, preclinical-to-clinical translation, controls, reproducibility, safety or ethical constraints.

**Reviewer objections:** underpowered cohort, confounding, endpoint is indirect, effect is not actionable, mechanism is post hoc.
