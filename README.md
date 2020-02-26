# Microsoft Teams Webhook Notifications

This actions sends a message to your Microsoft Teams channel using an Incoming Webhook Connector. An Incoming Webhook connector must be setup on your Microsoft Teams channel before this action can be used successfully.

## Inputs

### `webhook`

**Required** The webhook url for your Incoming Webhook connector.

### `message`

**Required** The message you want to send to your Microsoft Teams channel.

## Example usage

```
- name: Send message to ms teams
  uses: dhollerbach/github-action-send-message-to-ms-teams@1.0.9
  with:
    webhook: 'https://outlook.office.com/webhook/<some_giant_id>'
    message: 'W00t it werked!'
```
