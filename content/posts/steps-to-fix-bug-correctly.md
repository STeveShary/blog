---
title: "Steps to Solve a Bug Correctly"
tags: ["principles", "engineering"]
draft: false
---

There's a right way and a wrong way to fix a bug. Done correctly, a fix addresses the root cause, not just the symptoms, and includes a test to prevent regression.

Steps to fix a bug correctly:
1. From the telemetry, and side effect output, determine the inputs that cause the bug consistently.
   1. It is common that not enough information is available to understand the issue, add more telemetry if needed and repeat step 1.
2. Add an automated test (at the correct level) that replicates the issue.
3. Write the minimal code needed to make the test pass.

Done!

**NOTE:** In times of panic, if there is no remediation step for a bug (like a roll-back), it is common
for folks to patch a fix without fully understanding the issue. More often than not, this results in
changes that resolve symptoms rather than the underlying issue. Beware that resolving symptoms tend to lead
to the root bug to resurface in more severe ways later on.