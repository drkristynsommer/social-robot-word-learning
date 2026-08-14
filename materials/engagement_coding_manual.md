# Engagement Coding Manual

*Novel Word Learning from Social Robots by Autistic and Non-Autistic Children*

This document summarizes the scheme used to code child engagement from video.
The authoritative version is the full coding guide (`Engagement Coding
Template.docx`) and its accompanying coding spreadsheet, both deposited in this
folder. The scheme was adapted from the engagement paradigm used in the authors'
prior work. This summary is provided for quick reference and is not a substitute
for the full guide and its worked examples.

## Unit of analysis

Codes are entered for each 10-second block of the robot interaction. Blocks are
numbered chronologically from 1 (for example, block 12 covers seconds 111-120).
Coding spans three task segments: introduction and playtime, question and
answer, and the after-task / goodbye segment, with the start and end of each
segment anchored to specific points in the robot's script.

## Missing-data value (99)

A value of 99 denotes a behavior that was precluded from being performed or
observed, rather than a low score. Examples include a child who was asked not to
touch the robot (coded 99 on the tactile channel from that point onward) and a
child who is not visible on the video but has not left the room (coded 99 for the
affected blocks). The 99 value is treated as missing when aggregate engagement
scores are computed. (For the emotional channel, 99 is used only when the child
is not visible in frame.)

## Behavioral engagement channels

Behavioral engagement is coded on four channels, each on a 1 to 5 scale where 5
is the highest engagement and 1 indicates absent, non-compliant, negative, or
evasive engagement.

### Proxemic engagement (where the child is in space relative to the robot)

| Level | Meaning | Description |
|---|---|---|
| 5 | High | Touching the robot or right next to it (within ~10 cm). |
| 4 | Mid | Within arm's length / under 1 m / seated on the pre-designated spot / on caregiver's lap. |
| 3 | Low | Under 2 m from robot. |
| 2 | Indifferent | More than ~2 arm's lengths / metres from robot. |
| 1 | Absent / evasive | More than ~3 arm's lengths / metres, leaves the interaction, back turned, behind the robot, or at the back of the room. |

For each block, code the closest location the child reaches; in rooms shorter
than 3 m, scale the distances to the room rather than using absolute metres.

### Tactile engagement (physical contact with the robot or task apparatus)

| Level | Meaning | Description |
|---|---|---|
| 5 | High | Touches the robot or blocks when relevant for most of the block (~7-10 s). |
| 4 | Mid | Touches the robot or task when relevant for about half the block (~4-6 s). |
| 3 | Low | Any touch with the robot or task (≤3 s). |
| 1 | Absent / evasive | Does not touch, refuses to touch, leaves the room, or turns away. |

Left blank for the duration where a child was instructed not to touch the robot
(see the 99 rule).

### Communicative engagement (verbal or non-verbal communication to or about the robot/task)

| Level | Meaning | Description |
|---|---|---|
| 5 | High | Responds promptly/eagerly; frequent vocalisations, imitation, stimming, gestures (~7-10 s). |
| 4 | Mid | Responds; some vocalisations, imitation, stimming, gestures (~4-6 s). |
| 3 | Low | Hesitant or occasional response with noticeable delay; infrequent vocalisations/gestures (≤3 s). |
| 1 | Absent / evasive | Does not respond or refuses despite prompting; no vocalisations or gestures; turns away or leaves. |

Communication is expected to vary with the child's age and diagnosis.

### Visual engagement (direction of eye gaze, not eye contact)

| Level | Meaning | Description |
|---|---|---|
| 5 | High | On-task visual attention for all or most of the block (~7-10 s). |
| 4 | Mid | On-task visual attention for about half the block (~4-6 s). |
| 3 | Low | On-task visual attention for some of the block (~2-3 s). |
| 1 | Absent / evasive | Back turned on the interaction or leaves the room. |

Visual engagement concerns whether the child looks toward the robot or to a
location specified by the robot or experimenter, not whether the child makes eye
contact.

## Emotional engagement (affective valence)

Emotional engagement is coded on a bipolar valence scale. Score each block by the
highest-magnitude affect present; if both strongly positive and strongly
negative affect occur within the same block, score 0. Use multiple cues (facial
expression, tone of voice, speech content, posture, gestures, movement) because
the face is not always visible. Use 99 only when the child is out of frame.
Stimming may be positively or negatively valenced; use other cues to decide.

| Level | Meaning | Description |
|---|---|---|
| +2 | Very positive | Laughter, squealing, open-mouthed smiling, positive stimming, clapping. |
| +1 | Positive | Closed-mouth smiling (mouth turned upward). |
| 0 | Neutral | Disinterest; looks away or up/down instead of responding. |
| −1 | Negative | Frowning, frequent looks away, hides face, down-turned mouth, anxious stimming. |
| −2 | Very negative | Crying, screaming, hiding, aggression/anger. |

## Reliability

A second coder independently rated a subset of sessions; the target was roughly
80% agreement between coders. The double-coded proportion and the reliability
statistic are reported in the manuscript and supplementary materials.

## Aggregation and cleaning

Block-level codes are aggregated to produce engagement scores, with 99 treated
as missing. A segment-level cleaning rule excludes a segment where more than 50%
of its intervals are contiguously missing (the 50%-contiguous-missingness rule
applied in the analysis pipeline). See the analysis notebook for the exact
implementation.

## Notes for re-use

- This summary documents the coding scheme only; no participant data are
  included.
- The scheme was adapted from the authors' prior engagement paradigm; cite that
  source when re-using.
