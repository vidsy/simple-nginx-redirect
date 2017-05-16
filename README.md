<h1 align="center">simple-nginx-redirect</h1>

<p align="center">
  Simple redirect service that will redirect the user the the host provided in an env var.
</p>

## Usage

Run the container and set the configurable env vars to set the hostname, servername and redirect status code:

```
$: docker run -P -e REDIRECT_URI=http://www.test.com -e REDIRECT_STATUS_CODE=301 vidsyhq/simple-nginx-redirect
```

Environment variables to configure the service:

| Name  | Description | Default |
| ----- | ----------- | ------- |
| `SERVER_NAME` | The server_name property in the nginx config. | `localhost` |
| `REDIRECT_STATUS_CODE` | The status code to return for the redirect | `301` |
| `REDIRECT_URI` | The FQDN to redirtect to | `http://example.com` |

## Versioning

Each release is tagged and this tag used as the tag for the container.

## Releases

After merge to **master**; remember to tag your merge commit:

```
$: make push-tag
```
