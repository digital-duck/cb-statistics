# SPL Run: build_concept_book

- **Adapter:** claude_cli
- **Model:** claude-sonnet-5
- **Tokens:** 1536 in / 1228 out
- **Latency:** 16976ms
- **Timestamp:** 2026-09-14 19:04:18

## Output

```output


---

## Data

Data are the actual values recorded for a variable when you observe a population or sample. If a variable is the question — "how tall is this plant?" — the data are the answers: $62$ inches, $58$ inches, $71$ inches, and so on. Data can be numerical (heights in centimeters, exam scores, temperatures) or categorical (eye color, blood type, brand preference). What makes a collection of values "data" rather than just numbers is that they were gathered through some deliberate process of observation, measurement, or survey, and they are tied to specific individuals or units in the population or sample.

**Worked example.** A city health department wants to understand commuting habits. They survey 10 residents and record two things for each: mode of transport (categorical) and commute time in minutes (numerical).

| Resident | Mode      | Time (min) |
|----------|-----------|------------|
| 1        | Car       | 25         |
| 2        | Bus       | 40         |
| 3        | Bike      | 15         |
| 4        | Car       | 30         |
| 5        | Walk      | 10         |
| 6        | Car       | 28         |
| 7        | Bus       | 45         |
| 8        | Bike      | 18         |
| 9        | Car       | 22         |
| 10       | Walk      | 12         |

The "Mode" column is categorical data — each value is a label, not a quantity. The "Time" column is numerical data — each value can be added, averaged, or compared arithmetically. Notice that raw data, by itself, does not tell a story: you have to organize it before it becomes useful information — for example, by counting how often each mode appears.

**Problem-solving application.** Suppose you're asked to estimate the average commute time and the most common mode of transport from this dataset. For the numerical data, you sum the ten time values ($245$ minutes total) and divide by $10$, giving a mean of $24.5$ minutes. For the categorical data, you tally how often each label appears: Car shows up 4 times, Bus 2 times, Bike 2 times, Walk 2 times — so Car is the most common mode. This illustrates a core skill in working with data: recognizing whether a variable is numerical or categorical *before* deciding how to summarize it, since a mean makes sense for commute times but not for transport modes. Misidentifying data type is one of the most common early mistakes in statistical analysis, and it cascades into choosing the wrong summary or the wrong graph.
```
