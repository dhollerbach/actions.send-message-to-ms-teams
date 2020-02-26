# Send a message to MS Teams action

This action sends a message to MS Teams using a webhook and message you provide.

## Inputs

### `webhook`

**Required** The webhook id of your channel in MS Teams.

### `message`

**Required** The message you want to send to MS Teams.

## Example usage

```
uses: dhollerbach/github-action-send-message-to-ms-teams@1.0.2
with:
  webhook: 'https://outlook.office.com/webhook/<some_giant_id>'
  message: 'W00t it werked!'
```
