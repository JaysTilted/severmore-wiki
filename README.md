# severmore-wiki — deploy context

Static build of the SEVERMORE codex (Astro + Tailwind + Pagefind), served by nginx.
Source lives in the godmaw repo at `wiki/`. This repo holds only the prebuilt `site/`
(Astro `dist/`, no large art — concept art is embedded from severmore-assets.ironops.xyz).
Coolify project `severmore-wiki` builds the Dockerfile. Regenerate `site/` with `npm run build`.
