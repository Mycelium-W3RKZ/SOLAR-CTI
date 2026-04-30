# 🍄 SOLAR-CTI

<div align="center">

```
███████╗ ██████╗ ██╗      █████╗ ██████╗        ██████╗████████╗██╗
██╔════╝██╔═══██╗██║     ██╔══██╗██╔══██╗      ██╔════╝╚══██╔══╝██║
███████╗██║   ██║██║     ███████║██████╔╝      ██║        ██║   ██║
╚════██║██║   ██║██║     ██╔══██║██╔══██╗      ██║        ██║   ██║
███████║╚██████╔╝███████╗██║  ██║██║  ██║      ╚██████╗   ██║   ██║
╚══════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝       ╚═════╝   ╚═╝   ╚═╝
```

**Cyber Threat Intelligence by JAWz_TheSolarPoweredBard**
*The Mycelial Hunter is in the NET.*

---

[![TLP](https://img.shields.io/badge/TLP-WHITE-white?style=flat-square)](https://www.cisa.gov/tlp)
[![Reports](https://img.shields.io/badge/Reports-Active-brightgreen?style=flat-square&logo=github)](https://github.com/JAWzTheSolarPoweredBard/SOLAR-CTI)
[![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK%20Mapped-red?style=flat-square)](https://attack.mitre.org)
[![YARA](https://img.shields.io/badge/YARA-Rules%20Included-blueviolet?style=flat-square)](https://virustotal.github.io/yara/)
[![Sigma](https://img.shields.io/badge/Sigma-Detection%20Rules-blue?style=flat-square)](https://github.com/SigmaHQ/sigma)
[![Methodology](https://img.shields.io/badge/Methodology-Cloud%20Native-orange?style=flat-square)]()

</div>

---

## 🕵️ WHO IS THE MYCELIAL HUNTER

```
"In the dark forest of the NET, the hunter doesn't wait for the prey to announce itself.
 You read the ground. You read the spores. You follow the mycelium until you find
 the fruiting body — and then you document every thread before you ever write a line."
```

I'm **Joshua Alexander Wright** — independent security researcher, malware analyst,
and CTI author operating under the handle **JAWz_TheSolarPoweredBard**.

This repository is my public threat intelligence lab. Every report here is
the output of a real analysis session: Ghidra open, three sandboxes running in parallel,
Wireshark against the PCAP, and a research notes doc filling line by line.

No sandbox-copy-paste. No vendor-report reformats.
Just the mycelium traced to the root.

---

## 🌐 THE SOLAR-CTI MISSION

```
WHO IS ATTACKING?      ──► Adversary profiles. PUNK SPIDER. Named actors. Unknown clusters.
WHAT DO THEY WANT?     ──► Operational context. Motives. Targeting logic. Campaign scope.
HOW DO THEY OPERATE?   ──► TTPs. ATT&CK-mapped. Evidence-anchored. Per technique.
WHAT DO WE LOOK FOR?   ──► IOCs. YARA rules. Sigma detections. Actionable and deployable.
```

Intel classifications produced per report:

| Classification | What It Means | Where It Lives |
|---|---|---|
| **Tactical** | Adversary TTPs — ATT&CK-mapped per technique | Every report |
| **Technical** | IOCs, YARA rules, Sigma rules — deploy-ready | Every report |
| **Operational** | Adversary motive and campaign context | Runner's Log |
| **Strategic** | Threat landscape framing | Executive Summary |

---

## 🗂️ REPORT INDEX

| # | Family | Classification | Date | T-codes | YARA | Sigma | IOCs |
|---|---|---|---|---|---|---|---|
| [R0](./Akira/) | **Akira Ransomware** | Double Extortion / PUNK SPIDER (G1024) | Nov 2024 | 18 | ✅ | ✅ | ✅ |
| R1 | *Coming soon — Infostealer* | — | — | — | — | — | — |
| R2 | *Coming soon — RAT* | — | — | — | — | — | — |
| R3 | *Coming soon — Loader* | — | — | — | — | — | — |

> Reports are published as analysis sessions complete.
> Each report contains a full structured IOC table, ATT&CK T-code mapping with evidence,
> YARA detection rule, Sigma detection rule, and the Mycelial Hunter's Runner's Log.

---

## ⚗️ METHODOLOGY AT A GLANCE

```
╔══════════════════════════════════════════════════════════════════════════╗
║                   THE REMOTE-LITE ANALYSIS STACK                        ║
╠══════════╦═══════════════════════════════════════════════════════════════╣
║ SOURCE   ║  MalwareBazaar · VirusShare · ThreatFox · URLhaus            ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ SANDBOX  ║  ANY.RUN (interactive) · Hybrid Analysis · Tria.ge           ║
║          ║  Three independent environments. Cross-corroborated.         ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ INTEL    ║  VirusTotal · ThreatFox · AbuseIPDB · Shodan · URLScan       ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ STATIC   ║  Ghidra · FLOSS · PEStudio · PEview · PEBear · malapi.io    ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ NETWORK  ║  Wireshark (PCAP analysis — downloaded from sandboxes)       ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ DETECT   ║  YARA (binary) · Sigma (behavioral) · vSOCiety               ║
╠══════════╬═══════════════════════════════════════════════════════════════╣
║ PUBLISH  ║  GitHub · Substack · Publish0x · Carrd                       ║
╚══════════╩═══════════════════════════════════════════════════════════════╝
```

**Every report follows the eight-phase field methodology:**

```
PHASE 0  Acquisition    ──  Hash-first. Source the sample safely.
PHASE 1  Triage         ──  Multi-vendor baseline. Pre-analysis hypothesis.
PHASE 2  Platform Harvest──  Three sandboxes. Maximum behavioral telemetry.
PHASE 3  Static Analysis──  Ghidra + FLOSS + PE tools. Read the code.
PHASE 4  Network Analysis──  Wireshark against three PCAPs. Read the traffic.
PHASE 5  Correlation    ──  Connect every thread. Static ↔ Dynamic. ATT&CK.
PHASE 6  Report         ──  Write the intelligence. Not the log.
PHASE 7  Delivery       ──  Publish. Distribute. Backlink. Detect.
```

---

## 📦 WHAT'S IN EACH REPORT FOLDER

```
/[Family]/
├── README.md          ← The full CTI report
├── [family].yar       ← YARA detection rule — tested against analyzed sample
├── [family].yml       ← Sigma detection rule
└── iocs.csv           ← Structured IOC export for tooling import
```

**Every report delivers:**

- ✅ **Executive Summary** — specific, hash-referenced, evidence-backed
- ✅ **Technical Profile** — full sample metadata block
- ✅ **Static Analysis** — Ghidra function annotations, FLOSS string recovery, PE analysis
- ✅ **Dynamic Analysis** — cross-sandbox behavioral correlation with confidence ratings
- ✅ **Network Analysis** — Wireshark PCAP analysis, C2 protocol identification
- ✅ **Structured IOC Table** — all types (file, network, behavioral), confidence levels, sources
- ✅ **ATT&CK Mapping** — T-codes with sub-techniques, specific evidence per row
- ✅ **YARA Rule** — built from confirmed indicators, tested against the sample
- ✅ **Sigma Rule** — behavioral and registry-based detection
- ✅ **Recommendations** — tied to specific T-codes, not generic advice
- ✅ **Runner's Log** — the Mycelial Hunter's narrative intelligence entry

---

## 🎮 THE RUNNER'S LOG

Every report closes with a Runner's Log — a threat intelligence narrative
told through the lens of **Mike Pondsmith's Cyberpunk Red** universe.

The NET is the forest. The adversary is something that grows in the dark.
The Mycelial Hunter traces every thread of digital mycelium back to the
fruiting body and documents what it finds before the forest moves on.

This is not flavor text. It is **operational context** — adversary empathy,
campaign framing, and the human intelligence that makes technical data
actionable by the humans who defend against it.

> *"They're not just hackers; they're digital entrepreneurs with a particularly
> aggressive business model."*
> — Mycelial Hunter's Runner's Log, Akira Report, Nov 2024

---

## 🛡️ FOR DEFENDERS

Everything in this repository is **TLP:WHITE** — freely shareable, freely deployable.

**To use the YARA rules:**
```bash
yara [family].yar /path/to/scan/
```

**To use the Sigma rules:**
Import `.yml` files into your SIEM, EDR, or detection pipeline.
Sigma rules can be converted to any platform format via [sigmac](https://github.com/SigmaHQ/sigma).

**To import IOCs:**
`iocs.csv` is structured for direct import into threat intelligence platforms,
MISP, or custom hunting queries.

---

## 🔬 OPERATOR PROFILE

```
Handle:     JAWz_TheSolarPoweredBard
Entity:     M.C. LLC
Credential: HTB Certified Penetration Testing Specialist (CPTS)
            Cyber Threat Hunting — Coursera
Training:   ROPemporium · Ethernaut · Microcorruption · HackTheBox
CTF:        NahamCon 2022 — Top 10% solo · HTB Cyber Apocalypse 2021 — Top 3% solo
Research:   Basecamp Desktop CVSS 8.4 (HackerOne — disclosed) · SOLAR-CTI
Stack:      JavaScript/Node · Ruby · Kotlin Native · x86/x64 ASM
Languages:  English (native) · Korean (professional) · Spanish (conversational)
```

**Background:** I work at the intersection of offensive security and threat intelligence.
CPTS-certified with hands-on binary exploitation experience (ROPemporium, Microcorruption,
Nightmare), active Electron and native desktop vulnerability research (Basecamp CVSS 8.4),
and a published CTI practice spanning ransomware, infostealers, RATs, and advanced
persistent threat actor profiling.

The combination of attacker-side methodology and defender-side intelligence production
is deliberate. Understanding how threat actors think — their evasion logic, their
operational constraints, their negotiation psychology — makes the intelligence
more useful to the people defending against them.

---

## 📡 FIND THE MYCELIAL HUNTER

<div align="center">

| Platform | Link |
|---|---|
| 🍄 **SOLAR-CTI Blog** | [publish0x.com/solar-cti](https://www.publish0x.com/solar-cti) |
| 🔐 **HackerOne** | [hackerone.com/jawzthesolarpoweredbard](https://hackerone.com) |
| 💼 **LinkedIn** | [linkedin.com/in/joshua-wright-118900290](https://linkedin.com/in/joshua-wright-118900290) |
| 📬 **Research Contact** | solarpoweredbard@wearehackerone.com |

</div>

---

<div align="center">

```
🍄  The mycelium connects everything.
     Follow the threads.
          Stay patched. 🍄
```

*SOLAR-CTI · JAWz_TheSolarPoweredBard · M.C. LLC*
*TLP:WHITE — All reports freely shareable*

</div>
