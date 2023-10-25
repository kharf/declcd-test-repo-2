package podinfotemp

import "github.com/kharf/declcd/api/v1"

podinfo: v1.#Component & {
	manifests: [
		_namespace,
		_deployment,
	]
}
