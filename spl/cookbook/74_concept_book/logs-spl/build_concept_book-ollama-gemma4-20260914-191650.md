# SPL Run: build_concept_book

- **Adapter:** ollama
- **Model:** gemma4
- **Tokens:** 429 in / 922 out
- **Latency:** 17629ms
- **Timestamp:** 2026-09-14 19:16:50

## Output

```output


---

## P Value

The p-value (probability value) is a foundational concept in inferential statistics that quantifies the strength of evidence against a null hypothesis ($H_0$). Formally, the p-value is defined as the probability of observing a test statistic at least as extreme as the one calculated from the sample data, *assuming* the null hypothesis is true. It is crucial to understand that the p-value is not the probability that $H_0$ is true; rather, it is a conditional probability: $P(\text{Data} \mid H_0)$. A small p-value suggests that the observed data would be highly unlikely if $H_0$ were correct, leading us to reject $H_0$. Conversely, a large p-value indicates that the data are reasonably likely under $H_0$, suggesting we fail to reject it.

**Worked Example: Testing for Differences in Means**
Suppose a coffee company claims its average brew time is $\mu_0 = 250$ seconds (this is our $H_0$). A consumer group tests 10 samples and finds a mean brew time of $\bar{x} = 265$ seconds, with a calculated test statistic ($Z$-score) of $Z_{obs} = 2.2$. To find the p-value for this two-tailed test (because we care if the time is *different* from 250), we calculate:
$$p\text{-value} = P(|Z| \ge |2.2|) = 2 \times P(Z \ge 2.2)$$
Using a standard normal distribution table or calculator, $P(Z \ge 2.2) \approx 0.0139$. Therefore, the two-tailed p-value is approximately $2 \times 0.0139 = 0.0278$.

**Problem-Solving Application: Decision Making**
A researcher runs a clinical trial comparing an old drug (Mean score $= 50$) to a new drug (Observed Mean score $= 54$). They test the hypothesis that the new drug has no effect, setting $H_0: \mu_{new} = 50$. After running the analysis, they calculate a p-value of $0.15$. The researcher is given a significance level ($\alpha$) of $0.05$.

The core task is to make a decision based on comparing the p-value to $\alpha$. Since $p\text{-value} = 0.15$ and $\alpha = 0.05$, we observe that $0.15 > 0.05$. Because the calculated p-value is greater than the predetermined significance level, the researcher must conclude that there is insufficient evidence to reject the null hypothesis ($H_0$). In plain terms: getting a score of 54 was not unusual enough (i.e., it happened too easily) if the true mean were still 50. Therefore, we fail to reject $H_0$ and cannot claim the new drug is significantly better than the old one at the $\alpha=0.05$ level.
```
