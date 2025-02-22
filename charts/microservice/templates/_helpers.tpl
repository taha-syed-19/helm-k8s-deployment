{{- define "microservice.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "microservice.labels" -}}
app: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end }}

