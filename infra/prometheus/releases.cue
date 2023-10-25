package prometheus

import (
	"github.com/kharf/declcd/api/v1"
)

_release: v1.#HelmRelease & {
	name:      "prometheus"
	namespace: #namespace.metadata.name
	chart: {
		name:    "kube-prometheus-stack"
		repoURL: "https://prometheus-community.github.io/helm-charts"
		version: "50.3.1"
	}
	values: {
		coreDns: enabled: true
		kubeDns: enabled: false
	}
}
