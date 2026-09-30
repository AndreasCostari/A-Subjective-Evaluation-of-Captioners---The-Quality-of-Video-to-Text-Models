**# Subjective Video-Caption Evaluation**



**This repository contains the modified avrateNG implementation used for**

**the subjective evaluation of video-to-text captioning models in a**

**bachelor's thesis.**



**The experiment contains:**



**- 15 source videos**

**- 4 generated captions per source video**

**- 60 formal evaluation trials**

**- 3 training videos**

**- 5-point ACR rating scale**

**- constrained trial randomization**

**- a break during the formal evaluation**



**The rating question is:**



**> How well does the caption represent the visual content of the video?**



**## Setup**



**1. Install the dependencies required by avrateNG.**

**2. Copy `config.example.json` to `config.json`.**

**3. Set the local username/password and video paths.**

**4. Place the required videos in the `videos/` directory.**

**5. Start the experiment with:**



**```bash**

**python avrateNG.py**

