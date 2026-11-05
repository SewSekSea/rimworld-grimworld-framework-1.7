# GrimWorld 40,000 - Framework - SweetBriana 1.7 maintenance fork

RimWorld 1.7 runtime/XML-data snapshot, maintained by SweetBriana. Original
creation belongs to the GrimWorld Team and the contributors in CREDITS.md.

Upstream: https://github.com/GrimWorld-40-000/GrimWorld-Framework | [Original Workshop item](https://steamcommunity.com/sharedfiles/filedetails/?id=3119805903).

## Install and dependencies

Use this repository as the mod folder, keeping About/, 1.7/, LoadFolders.xml and
shared content together. Requires RimWorld 1.7 and the external mods declared in
About/About.xml. Do not enable another copy with the same package ID.
Game, Combat Extended, Vehicle Framework and Vanilla Expanded Framework are
not supplied here. Framework's existing bundled Harmony retains its own MIT
notice. Older game-version folders are deliberately omitted.

## Scope and qualification

This is an unofficial work-in-progress maintenance build. The supplied intake
reported 7949 checks across 16 private qualification processes and 8 fresh/reload
pairs on an earlier pinned 1.7.4979 experimental game/CE/VF combination. Those
results were not rerun for this Git publication and do not certify arbitrary
Workshop CE/VF builds, long campaigns, every vehicle or existing-save migration.

The intake contains XML/assets and compiled runtime components, but no C# source
files. This repository is therefore not advertised as a complete reproducible
C# source distribution. Upstream source is linked above; no game decompilation,
private test harnesses, saves, logs or reference assemblies were added.

## License, credits and changes

Covered material/adaptations: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/); full text in LICENSE.
See CREDITS.md and NOTICE.md for original creators, license evidence and changes.
See PUBLICATION-MANIFEST.json for selected payload hashes and omissions.
This fork is noncommercial and carries no upstream endorsement.
