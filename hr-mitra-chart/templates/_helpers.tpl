{{/*
Return the fully qualified app name
*/}}
{{- define "hrmitra.fullname" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}
