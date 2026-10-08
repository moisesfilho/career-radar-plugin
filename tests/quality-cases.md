# Quality Cases

These cases are used to review the skill behavior manually or with an agent evaluation harness.

| Case | Input | Expected behavior |
| --- | --- | --- |
| Fresh remote role | Resume plus a new Brazil-eligible remote listing | Score with evidence and verify the original application page |
| Closed role | Search result whose employer page no longer accepts applications | Exclude or mark closed; never recommend it as active |
| Preferred skill gap | Strong Staff Engineer role missing one preferred tool | Report the gap without treating it as a hard blocker |
| Location mismatch | Remote role restricted to US time zone or authorization | Apply the work eligibility blocker and lower priority |
| Duplicate listing | Same role on two job boards | Report once using the primary URL |
| History unavailable | New task without accessible prior results | State the limitation instead of claiming complete deduplication |
| No strong matches | Search returns only weak or stale roles | Say that no strong match was found and explain the filter |
