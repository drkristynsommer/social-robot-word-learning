# Replication Protocol

## Novel Word Learning From a Social Robot (NAO) in Autistic and Non-Autistic Children

This document is a consolidated protocol for replicating the study procedure. It
draws together the equipment list, room setup, session procedure, verbatim robot
scripts and timing, engagement coding scheme, word-learning task, and the
measures used to characterise participants. It supersedes several of the
standalone material files, which are retained as appendices and source documents
(see Section 9). All personal names, contact details, and institutional
identifiers have been removed for public release.

---

## 1. Overview and design

The study examined whether autistic and non-autistic children learn novel object
labels from a socially contingent humanoid robot (NAO) presenting an electronic
storybook. Each child completed a single session comprising a live interaction
with the robot followed by a robot-mediated storybook (the learning task) and a
forced-choice test of novel-word recognition. Child engagement was recorded
throughout and coded offline from video.

A session proceeds through the following phases, in order:

1. Warm-up and orientation (social story; teaching the greeting gesture).
2. Modelling video (a short video model viewed before the live interaction).
3. Live robot interaction: Introduction, Play, and Question-and-Answer.
4. Learning task: the robot-mediated "Show and Tell" storybook on a tablet.
5. Novel-word test: a 12-trial forced-choice picture task.
6. Debrief and acknowledgement.

The robot was operated by a researcher using a wizard-of-Oz style control; the
robot's speech and actions followed a fixed script (Section 6). Engagement was
coded in 10-second blocks across the interaction phases (Section 7).

---

## 2. Equipment and materials

### Hardware

- One NAO humanoid robot (NAO 6) and its dedicated control laptop.
- One iPad (or equivalent tablet) presenting the storybook web application.
- One experimenter laptop.
- One GoPro camera on a bendable/adjustable tripod, set to video mode.
- SD card and external hard drive for footage; charging dock and chargers.
- Portable Wi-Fi or a mobile hotspot to create a local wireless network.
- A set of coloured wooden blocks.
- A lockable case for transport and secure storage.

### Software

- Choreographe (NAO programming and control environment) on the control laptop.
- The "Show and Tell" storybook web application, served locally and opened in the
  tablet's web browser over the local network (see Section 3 for the connection
  procedure).

### Stimuli (see `stimuli/`)

- The "Show and Tell" storybook (15 pages).
- Two counterbalanced picture-choice arrays (A and B; 15 images each) for the
  novel-word test.
- The novel words and their referents are taught within the storybook and probed
  at test (Section 8). Novel referents are drawn from the NOUN stimulus set
  (Horst & Hout, 2016); link the NOUN database rather than re-hosting.

### Paperwork

- Recruitment sheet, information sheet, and blank consent form.
- Scoring sheets (Section 8) and debrief sheets/certificates.

---

## 3. Room setup

Conduct the session in a quiet room with the child seated on the floor. The
recommended layout (illustrated in Figure 2 of the deposit) is:

- The **child** seated facing the robot.
- The **NAO robot** positioned directly opposite the child, with the coloured
  blocks to one side and the tablet placed on the floor in front of the child for
  the learning task.
- A **GoPro camera on a tripod** positioned to capture the child's face and upper
  body throughout all phases. Test the framing before the child enters.
- The **researcher** seated against the wall, operating the robot and the video
  presentation from the control laptop, positioned to see the child but outside
  the child's primary line of sight to the robot.
- An **educator or caregiver** may be present, seated to one side as an observer.

### Network and web-application setup

1. Enable the mobile hotspot / portable Wi-Fi to create a local wireless network.
2. Connect both the tablet and the NAO control laptop to that same network.
3. Note the robot's local IP address from the control software.
4. On the tablet, open the web browser and navigate to the storybook web
   application served at the robot's local address.
5. Confirm the first page of the storybook displays before the session begins.

> Note. The storybook is presented page-by-page in synchrony with the robot's
> narration. Verify audio and page advancement during setup.

---

## 4. Participants and measures

### Recruitment and consent

Children were recruited through early-childhood education and intervention
settings. Caregivers received an information sheet and provided written informed
consent before participation. A blank consent template is provided in the
appendices.

### Inclusion and exclusion

Eligibility was based on age range and the capacity to complete the session.
Data-level inclusion and exclusion rules (engagement coverage and test
completion) are specified in Sections 7 and 8 and are applied after data
collection.

### Characterisation measures (autistic sample)

The following standardised instruments were administered by appropriately
trained personnel to characterise the autistic sample. They were used for sample
description rather than as eligibility criteria. Full descriptions are provided
in `Supplementary_Measures_Description`.

- **Autism Diagnostic Observation Schedule, Second Edition (ADOS-2).** Calibrated
  comparison score reported as a descriptor of autism-related behaviours.
- **Mullen Scales of Early Learning (MSEL).** Developmental quotients (DQs) were
  derived from age-equivalent scores (Verbal DQ from Receptive and Expressive
  Language; Non-verbal DQ from Visual Reception and Fine Motor).
- **Vineland Adaptive Behavior Scales, Third Edition (Vineland-3).** Adaptive
  Behavior Composite reported as an index of adaptive functioning.

### Caregiver questionnaires

Caregivers completed brief questionnaires (see `Scale Outline`):

- A generalised anxiety scale derived from the Preschool Anxiety Scale (Spence et
  al., 2001).
- An expected-apprehension scale rating the likelihood of the child responding to
  the robot with apprehension, unease, discomfort, fear, or disinterest (1 = not
  at all likely to 5 = very likely).
- A short inventory of the child's prior experience with social robots at home
  (number of devices, time spent, names, and media exposure).

---

## 5. Procedure, end to end

### 5.1 Before the session

- Charge the iPad, both laptops, NAO, and the GoPro the night before; pack and
  check all equipment against the checklist (Appendix; see `ASD Word Learning
  Checklist`).
- Confirm the participant identifier (PID) to be used.
- Organise the testing area; test camera placement; open the tablet and confirm
  the web application is running (Section 3).
- Pre-fill the child's first name on the certificate.

### 5.2 Session start and warm-up

- Power on NAO (press the chest button) and wake it in the control software; on
  carpet, steady the robot as needed.
- Set up and start the GoPro on video mode.
- Introduce the child to the robot using the social story (see `Social Story`) and
  teach the child the greeting gesture (the "low five" / fist bump).
- Seat the child in front of the robot.

### 5.3 Modelling video

Before the live interaction, the child views a short modelling video presenting
the sequence of actions to be performed (greeting, joint play with the blocks,
and positive affect). The content of the modelling video corresponds to the
"modelling video" coding outline in Section 6.4.

### 5.4 Live robot interaction

The robot proceeds through three phases: Introduction, Play, and
Question-and-Answer. The full verbatim scripts and timing rules are given in
Section 6.

### 5.5 Learning task (storybook)

The experimenter presents the tablet and introduces the storybook with the
standard preamble (Section 6.3). The robot then narrates the "Show and Tell"
storybook page-by-page, during which the novel words and their referents are
presented.

### 5.6 Novel-word test

Immediately after the storybook, administer the 12-trial forced-choice
recognition test using one of the two counterbalanced trial orders (Section 8).
Record responses on the scoring sheet.

### 5.7 Debrief

Provide the debrief sheet and the completed certificate, and thank the child and
caregiver.

---

## 6. Robot scripts and timing (verbatim)

The robot's eyes turn green to cue that it is awaiting a child response. Retain
the wording below verbatim. Timing and contingency rules are specified inline.

### 6.1 Introduction

- *Waves, looks at the child's face.* "Hello, my name is NAO."
- "What is your name?" *(waits for response; eyes green)*
- "Hello, how are you?" *(opens arms; waits for response; eyes green)*
- "I am happy to meet you. Can you give me a low five?" *(extends hand; waits for
  the child to touch the back of the hand)*

### 6.2 Play

- "Let's play together." *(looks at the blocks to the right; NAO sits down)*
- NAO points to the blocks: "Can you help me stack these?" *(eyes green; wait for
  the child to finish stacking)*
  - If the child does not participate within ~4 seconds: "Oh, that is okay."
  - If the child participates: "Yay, good job." *(opens arms)*
- "Now can you help me put the blocks in order from your favourite colour to your
  least favourite?" *(waits for response)*
  - If the child does: "Yay, good job."
  - If the child does not: "Oh, that is okay."
- NAO points to the blocks and gestures behind itself: "Can you help me put these
  blocks over here?" *(looks at child; eyes green; waits ~20 seconds)*
  - If the child does: "Yay." *(opens arms)*
  - If the child does not: "Oh, that is okay."
- "Thank you for playing with me. I had so much fun."
- "Let's low-five." *(extends hand; eyes green)*

### 6.3 Question-and-Answer

- "Those blocks were very colourful. What is your favourite colour?" *(eyes green;
  move on if no response after ~6 seconds)*
- "Wow, can you tell me more about your favourite colour?" *(eyes green; move on
  after ~6 seconds)*
- "That is very cool." *(opens arms)*
- "What is your favourite game to play?" *(eyes green; move on after ~6 seconds)*
- "That sounds fun, can you tell me more about your favourite game?" *(eyes green)*
- "That sounds awesome."
- "I like elephants because they are very big." *(spreads arms wide)*
- "What is your favourite animal and why?" *(eyes green; move on after ~6 seconds)*
- "Wow, that is so cool."
- "I had so much fun talking with you."
- "Can you give me a low five?" *(extends hand; eyes green)*

### 6.4 Learning-task preamble

- *(Experimenter presents the tablet.)*
- "Now we're going to listen to a story. The story is going to be read to us on
  this screen. It's just like a story book. Let's pay attention to the pictures on
  the screen and listen well the whole time."
- "Are you ready?" *(waits ~3 seconds)* "Great! Let's start."
- "This story is called Show and Tell."

### 6.5 Modelling-video action outline

The modelling video depicts the following sequence (used both as the model shown
to children and as the reference for fidelity coding):

The child approaches NAO and sits down in front of it; NAO looks at the child's
face. The child waves and says hello; NAO waves and says, "Hello, my name is
NAO," then asks the child's name and tilts its head. NAO says it is happy to meet
the child and offers a fist bump. NAO says, "Let's play together," points to the
blocks, walks two steps over, and sits down. NAO asks, "Can you help me build a
city?"; the child stacks the blocks while NAO watches, pushes two blocks
together, raises its arms, says "I am happy," and looks at the child.

> Note. Two script variants exist for the live interaction (a greeting using "How
> are you?" with open arms, and a variant using "Are you feeling good?" with a
> thumbs-up; "build a city" versus "stack these"). Use one variant consistently
> across participants and record which variant was used.

---

## 7. Engagement coding

Engagement is coded offline from the video in fixed 10-second blocks across the
interaction phases (introduction and play, question-and-answer, and the
after-task segment). The full scheme, anchors, and worked examples are in
`engagement_coding_manual` and the source `Engagement Coding Template`.

### Behavioural channels (each 1–5)

- **Proxemic engagement** — the child's location in space relative to the robot.
- **Tactile engagement** — physical contact with the robot or task apparatus.
- **Communicative engagement** — verbal and non-verbal communication to or about
  the robot or task.
- **Visual engagement** — direction of gaze toward the robot or a specified
  location.

For each channel, 5 indicates high, sustained engagement and 1 indicates absent,
non-compliant, negative, or evasive engagement.

### Emotional engagement (valence, −2 to +2)

Affective valence is scored per block by the highest-magnitude affect present,
from +2 (very positive: laughter, open-mouthed smiling) through 0 (neutral) to
−2 (very negative: crying, distress). If both strongly positive and strongly
negative affect occur in the same block, score 0.

### Missing data and cleaning

- A value of **99** denotes a behaviour precluded from being performed or observed
  (for example, a child instructed not to touch the robot, or a child not visible
  on the video). The 99 value is treated as missing when aggregate scores are
  computed.
- A segment is excluded where more than **50% of its intervals are contiguously
  missing** (the 50%-contiguous-missingness rule).
- A second coder independently rates a subset of sessions; the target is
  approximately 80% agreement.

---

## 8. Word-learning task and scoring

### Design

The child is taught four novel words (e.g., *wug*, *lif*, *pok*, *neem*) paired
with novel referents within the "Show and Tell" storybook, then tested in a
two-alternative forced-choice picture task. Two familiar training trials (a known
word paired with a foil; e.g., *apple* and *chair*) precede the novel-word test
trials to confirm task comprehension.

### Test structure

- Two training trials followed by twelve novel-word test trials.
- On each trial, the target word is named and two pictures are presented; the
  child selects the referent. The correct side is counterbalanced across trials.
- Two fully counterbalanced trial orders (**A** and **B**) are provided so that
  order and side are balanced across participants. Record which order was
  administered.
- Responses are recorded on the scoring sheet (`Scoring Sheet`), which lists, for
  each trial, the response ID, target word, the two response options, and the
  correct option.

### Scoring and inclusion thresholds

- Each test trial is scored 1 (correct) or 0 (incorrect); a child's score is the
  number of correct responses among valid trials.
- **Practice rule:** a child must have at least one successful practice (training)
  trial; a child with no successful practice trial is flagged for exclusion.
- **Test rule:** a child must complete a minimum of **6 valid test trials** (50%
  of the planned 12); fewer than 6 valid trials flags the child for exclusion.
- Engagement-based exclusions follow the rules in Section 7.

---

## 9. Appendices and linked materials

This protocol consolidates the procedure. The following source files are retained
in `materials/` as appendices and reference documents:

- **Stimuli** — `stimuli/` (storybook and A/B picture-choice arrays).
- **Engagement coding** — `engagement_coding_manual` and `Engagement Coding
  Template` (full scheme, anchors, worked examples).
- **Robot scripts** — `NAO Social Robot Interaction Script`, `NAO play activity
  script`, and `NAO coding scheme` (source scripts and fidelity outline).
- **Scoring** — `Scoring Sheet` (both counterbalanced orders).
- **Caregiver questionnaires** — `Scale Outline`.
- **Measures** — `Supplementary_Measures_Description`.
- **Consent** — `Informed Consent` (blank template).

The following standalone files are **superseded** by this protocol and may be
retired from the public deposit if a single consolidated guide is preferred:
`ASD Word Learning Checklist` (equipment and run-day steps, now Sections 2 and
5.1), and the recruitment/debrief/Centre Director letters (operational
correspondence rather than reproducible method). Retain blank templates only.

---

## 10. Ethics and AI-use note

The study was approved by the relevant human research ethics committee; approval
reference numbers are reported in the manuscript. Any manuscript or output that
used generative AI assistance must include the appropriate AI-disclosure
statement (see `ai_use_statement`).

---

### References

Horst, J. S., & Hout, M. C. (2016). The Novel Object and Unusual Name (NOUN)
Database: A collection of novel images for use in experimental research.
*Behavior Research Methods, 48*, 1393–1409.

Spence, S. H., Rapee, R., McDonald, C., & Ingram, M. (2001). The structure of
anxiety symptoms among preschoolers. *Behaviour Research and Therapy, 39*,
1293–1316.
