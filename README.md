# MS Teams docker action

This action sends a message to MS Teams using a webhook and message you provide.

## Inputs

### `webhook`

**Required** The webhook id of your channel in MS Teams.

### `message`

**Required** The message you want to send to MS Teams.

## Example usage

```
uses: control4/github-action-send-message-to-ms-teams@master
with:
  webhook: 'https://outlook.office.com/webhook/<some_giant_id>'
  message: 'W00t it werked!'
```
