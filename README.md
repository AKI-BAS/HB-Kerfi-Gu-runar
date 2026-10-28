# HB kerfi

Handbolta kerfi Guðrúnar. Einföld vefsíða þar sem leikmenn geta skoðað kerfi liðsins skref fyrir skref og búið til ný.

## Hvernig þetta virkar

- Opnaðu kerfi og ýttu á **Spila** til að sjá hreyfingarnar.
- **Breyta** býr alltaf til nýtt kerfi. Upprunalega kerfið helst óbreytt.
- Nýtt kerfi er uppkast í símanum þangað til ýtt er á **Vista kerfi**. Þá fer það í safn liðsins og allir sjá það.
- Kerfi liðsins eru geymd í Supabase. Taflan tekur bara við nýjum kerfum, svo ekkert er yfirskrifað eða eytt. Hún er líka skráin yfir öll ný kerfi og hvenær þau komu inn.

## Uppsetning

1. Keyrðu `schema.sql` í Supabase (SQL Editor).
2. Settu slóð verkefnisins og opinbera lykilinn (publishable key) í `config.js`.
3. Kveiktu á GitHub Pages fyrir `main` greinina.

Engin innskráning er enn sem komið er. Hver sem er með slóðina getur bætt við kerfi.
