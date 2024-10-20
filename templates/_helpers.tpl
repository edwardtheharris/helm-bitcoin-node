{{/*
Expand the name of the chart.
*/}}
{{- define "bitcoin.name" -}}
{{- default .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "bitcoin.fullname" -}}
{{- $name := default .Chart.Name .Release.Name }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "bitcoin.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "bitcoin.labels" -}}
helm.sh/chart: {{ include "bitcoin.chart" . }}
{{ include "bitcoin.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "bitcoin.selectorLabels" -}}
app.kubernetes.io/name: bitcoin
app.kubernetes.io/instance: bitcoin
kubernetes.io/hostname: {{ .Values.labels.node }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "bitcoin.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "bitcoin.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
