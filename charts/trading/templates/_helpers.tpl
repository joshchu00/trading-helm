{{/*
common labels
*/}}
{{- define "trading.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: {{ .Chart.Name }}
{{- end }}

{{/*
minio selector labels
*/}}
{{- define "trading.minio.selectorLabels" -}}
app.kubernetes.io/name: minio
app.kubernetes.io/instance: minio-{{ .Values.minio.image.tag }}
app.kubernetes.io/component: minio
{{- end }}

{{/*
postgresql selector labels
*/}}
{{- define "trading.postgresql.selectorLabels" -}}
app.kubernetes.io/name: postgresql
app.kubernetes.io/instance: postgresql-{{ .Values.postgresql.image.tag }}
app.kubernetes.io/component: postgresql
{{- end }}

{{/*
redis selector labels
*/}}
{{- define "trading.redis.selectorLabels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/instance: redis-{{ .Values.redis.image.tag }}
app.kubernetes.io/component: redis
{{- end }}

{{/*
phoenix selector labels
*/}}
{{- define "trading.phoenix.selectorLabels" -}}
app.kubernetes.io/name: phoenix
app.kubernetes.io/instance: phoenix-{{ .Values.phoenix.image.tag }}
app.kubernetes.io/component: phoenix
{{- end }}
