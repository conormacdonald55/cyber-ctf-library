# Using wireshark for CTFs

## hidden traffic

- you are provided a wireshark file and you need to find something hidden in the traffic
- find the TCP conversation (stream) and then export the html that is streamed
- inspect the HTML to find the flag

## hidden in the payload

- you are provided a wireshark file and there is a clue there is something compromised in a payload
- follow the TCP streams, using UTF-8 as the decoder, and try and find your flag
- keep progressing through the streams until you find the flag.