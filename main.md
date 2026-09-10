# {{ .name | upper }}

**{{ .headline }}**

{{ .location.current }}{{ if .location.desired }} · Looking to relocate to {{ .location.desired }}{{ end }}

[{{ .contact.email }}](mailto:{{ .contact.email }}) · [{{ .contact.phone }}](tel:{{ .contact.phone | replace "-" "" | replace " " "" }})

[LinkedIn](https://{{ .contact.linkedin }}) · [GitHub](https://{{ .contact.github }})

## SUMMARY

{{ .summary }}

## TECHNICAL SKILLS

{{ range .skills }}
**{{ .name }}:** {{ join ", " .items }}

{{ end }}

## EXPERIENCE

{{ range .experience }}

### {{ .company | upper }}, {{ .location }}

**{{ .title }}** | {{ .start }} – {{ .end }}

{{ if .clients }}
{{ range .clients }}
{{ if .name }}
**Client: {{ .name }}**{{ if or .start .end }} | {{ .start }} – {{ .end }}{{ end }}

{{ range .bullets }}

- {{ . }}
  {{ end }}

{{ end }}
{{ end }}
{{ else }}
{{ range .bullets }}

- {{ . }}
  {{ end }}
  {{ end }}

{{ end }}

## SELECTED PROJECTS

{{ range .projects }}

### {{ .name }}

**{{ join " · " .technologies }}**

{{ range .bullets }}

- {{ . }}
  {{ end }}

{{ if .github }}
**GitHub:** https://{{ $.contact.github }}/{{ .github }}
{{ end }}

{{ end }}

## EDUCATION

{{ range .education }}

### {{ .institution | upper }}, {{ .location }}

**{{ .degree }}**

{{ .details }} | {{ .date }}

{{ end }}

{{ if .certifications }}

## CERTIFICATIONS

{{ range .certifications }}
**{{ . }}**

{{ end }}
{{ end }}

{{ if .languages }}

## LANGUAGES

{{ range .languages }}
**{{ .name }}:** {{ .proficiency }}

{{ end }}
{{ end }}
