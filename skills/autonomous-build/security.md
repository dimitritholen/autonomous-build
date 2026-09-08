# Security

Apply to every slice that touches input, auth, secrets, or the network.

- Validate all external input at the boundary. Reject malformed data with a defined error, never with a crash or silent coercion.
- No hardcoded credentials, tokens, or keys. Secrets come from the environment or a secret store.
- Least privilege by default: minimal permissions, parameterized queries, no shell interpolation of user data.
- Audit new dependencies before adding them: check provenance, maintenance status, and known vulnerabilities. Prefer fewer dependencies.

A security finding blocks the slice. Fix it before visual or performance polish.
