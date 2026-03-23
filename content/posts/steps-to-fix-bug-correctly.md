---
title: "Steps to Solve a Bug Correctly"
tags: ["principles", "engineering"]
draft: false
---

There's a right way and a wrong way to fix a bug. Done correctly, a fix addresses the root cause, not just the symptoms, and includes a test to prevent regression.

Steps to fix a bug correctly:
1. From the telemetry, and side effect output, determine the inputs that cause the bug consistently.
   - It is common that not enough information is available to understand the issue, add more telemetry if needed and repeat step 1.
2. Add an automated test (at the correct level) that replicates the issue.
   - More than one test may be necessary to fully define the "edge cases" of the bug.
   - This is only possible if you truly understand the root cause — a test written against a symptom gives false coverage.
3. Write the minimal code needed to make the test pass.

**Thought:**  There are many people that can aleviate a symptom, but the best solution is one that tackles the issue.  Be the person that knows the "why".

**NOTE:** In times of panic, if there is no remediation step for a bug (like a roll-back), it is common
for folks to patch a fix without fully understanding the issue. More often than not, this results in
changes that resolve symptoms rather than the underlying issue. A symptom fix closes the ticket and the
team moves on — but the bug is still live. You've made it *less* visible, not gone. The next failure
often happens at the worst possible moment: higher load, a customer demo, a production incident at 2am.
Beware that resolving symptoms tends to cause the root bug to resurface in more severe ways later on.