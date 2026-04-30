rule Akira_Ransomware_Nov2024_SOLARCTI {
    meta:
        description     = "Akira ransomware — PUNK SPIDER (GOLDEN SAHARA) — November 2024 sample"
        author          = "JAWz_TheSolarPoweredBard / SOLAR-CTI"
        date            = "2024-11-30"
        version         = "1.1"
        hash_sha256     = "aaa7799edfd86b52438a9e0d71f8069cbcbe1988036b95888fcdc553e729b7b9"
        hash_md5        = "feb81a8d7e0f91d6f74b440cdd3c2f28"
        imphash         = "9b9e1545a27f74c7e825990e6d713212"
        reference       = "https://github.com/Mycelium-W3RKZ/SOLAR-CTI/Akira/"
        publish0x       = "https://www.publish0x.com/solar-cti/akira-ransomware-threat-intelligence-report-nov2024-xnkdxkr"
        mitre_group     = "G1024"
        threat_actor    = "PUNK SPIDER"
        tlp             = "WHITE"
        family          = "akira"

    strings:
        // Encryption artifacts — high confidence, unique to Akira
        $ext_akira      = ".akira" ascii wide
        $ext_arika      = ".arika" ascii wide                        // variant extension
        $ransom_note    = "akira_readme.txt" ascii wide

        // Ransom note unique opener — distinctive first-person voice
        $note_open      = "Hi friends," ascii
        // Ransom note unique phrase — not generic across ransomware families
        $note_phrase    = "keep all the tears and resentment to ourselves" ascii

        // TOR infrastructure — extracted from ransom note strings
        $tor_chat       = "akiralkzxzq2dsrzsrvbr2xgbbu2wgsmxryd4csgfameg52n7efvr2id.onion" ascii
        $tor_leak       = "akiral2iz6a7qgd3ayp3l6yub7xx2uep76idk3u2kollpj5z3z636bad.onion" ascii

        // Restart Manager import — distinctive capability for file-unlock before encryption
        // Most ransomware does not use RstrtMgr.DLL — high signal
        $rstrtmgr       = "RstrtMgr.DLL" ascii nocase

        // Anti-debug — IsDebuggerPresent byte pattern (call + result check)
        // x64: call IsDebuggerPresent → test eax, eax → jz/jnz
        $anti_debug     = { FF 15 ?? ?? ?? ?? 85 C0 }

        // Ransom note contact instructions — partial TOR link
        $tor_ref        = "torproject.org/download" ascii

    condition:
        // PE file — MZ header
        uint16(0) == 0x5A4D and

        // Size constraint — within 20% of analyzed sample (1,074,688 bytes)
        filesize >= 800KB and filesize <= 1300KB and

        // High confidence: both encryption artifacts + Restart Manager
        (
            ($ext_akira or $ext_arika) and
            $ransom_note and
            $rstrtmgr
        )
        or
        // High confidence: ransom note content + TOR infrastructure
        (
            ($note_open or $note_phrase) and
            ($tor_chat or $tor_leak)
        )
        or
        // Variant detection: any two unique Akira artifacts
        (
            2 of ($ext_akira, $ext_arika, $ransom_note, $note_open, $rstrtmgr)
        )
}