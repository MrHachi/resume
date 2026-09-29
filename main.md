# {{ .name | upper }}

**{{ .headline }}**

Relocating from {{ .location.current }}, {{ if .location.desired }}looking to move to {{ .location.desired }}{{ else }}US Citizen, no Visa/relocation support required{{ end }}

[{{ .contact.email }}](mailto:{{ .contact.email }}) · [{{ .contact.phone }}](tel:{{ .contact.phone | replace "-" "" | replace " " "" }})

[LinkedIn](https://{{ .contact.linkedin }}) · [GitHub](https://{{ .contact.github }})

<section class="segment">

## SUMMARY

{{ .summary }}

</section>

<section class="segment skills">

## TECHNICAL SKILLS

{{ range $i, $skill := .skills }}{{ if $i }} · {{ end }}**{{ $skill.name }}:** {{ join ", " $skill.items }}{{ end }}

</section>

## EXPERIENCE

{{ range .experience }}

<section class="segment experience">

### {{ .company | upper }}, {{ .location }}

**{{ .title }}** | {{ .start }} – {{ .end }}

{{ range .bullets }}

- {{ . }}
  {{ end }}

</section>

{{ end }}

## SELECTED PROJECTS

{{ range .projects }}

<section class="segment portfolio">

### {{ .name }}

**{{ join " · " .technologies }}**

{{ range .bullets }}

- {{ . }}
  {{ end }}

{{ if .github }}
**GitHub:** https://{{ $.contact.github }}/{{ .github }}
{{ end }}

</section>

{{ end }}

## EDUCATION

{{ range .education }}

<section class="segment">

### {{ .institution | upper }}, {{ .location }}

**{{ .degree }}**

{{ .details }} | {{ .date }}

</section>

{{ end }}

{{ if .certifications }}

<section class="segment">

## CERTIFICATIONS

{{ range .certifications }}
**{{ . }}**

{{ end }}
{{ end }}

</section>

{{ if .languages }}

<section class="segment">

## LANGUAGES

{{ range .languages }}
**{{ .name }}:** {{ .proficiency }}

{{ end }}

</section>

{{ end }}
