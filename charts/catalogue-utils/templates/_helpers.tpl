{{/*
Expand the name of the chart.
*/}}
{{- define "catalogue-utils.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "catalogue-utils.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "catalogue-utils.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "catalogue-utils.labels" -}}
helm.sh/chart: {{ include "catalogue-utils.chart" . }}
{{ include "catalogue-utils.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "catalogue-utils.selectorLabels" -}}
app.kubernetes.io/name: {{ include "catalogue-utils.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "catalogue-utils.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "catalogue-utils.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "dig" -}}
  {{- $mapToCheck := index . "map" -}}
  {{- $keyToFind := index . "key" -}}
  {{- $default := index . "default" -}}
  {{- $keySet := (splitList "." $keyToFind) -}}
  {{- $firstKey := first $keySet -}}
  {{- if index $mapToCheck $firstKey -}} {{/* The key was found */}}
    {{- if eq 1 (len $keySet) -}}{{/* The final key in the set implies we're done */}}
      {{- index $mapToCheck $firstKey -}}
    {{- else }}{{/* More keys to check, recurse */}}
      {{- include "dig" (dict "map" (index $mapToCheck $firstKey) "key" (join "." (rest $keySet)) "default" $default) }}
    {{- end }}
  {{- else }}{{/* The key was not found */}}
      {{- $default -}}
  {{- end }}
{{- end }}

