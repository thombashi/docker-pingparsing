# docker-pingparsing
Docker image for [pingparsing]( https://github.com/thombashi/pingparsing )


# Example Usage
```
$ docker run thombashi/pingparsing 1.1.1.1 8.8.8.8 --deadline 30
{
    "8.8.8.8": {
        "destination": "8.8.8.8",
        "packet_transmit": 30,
        "packet_receive": 30,
        "packet_loss_count": 0,
        "packet_loss_rate": 0.0,
        "rtt_min": 51.397,
        "rtt_avg": 70.436,
        "rtt_max": 101.802,
        "rtt_mdev": 11.358,
        "packet_duplicate_count": 0,
        "packet_duplicate_rate": 0.0
    },
    "1.1.1.1": {
        "destination": "1.1.1.1",
        "packet_transmit": 30,
        "packet_receive": 30,
        "packet_loss_count": 0,
        "packet_loss_rate": 0.0,
        "rtt_min": 56.696,
        "rtt_avg": 71.024,
        "rtt_max": 101.577,
        "rtt_mdev": 10.617,
        "packet_duplicate_count": 0,
        "packet_duplicate_rate": 0.0
    }
}
```

# Reference
- [pingparsing documentation]( https://pingparsing.rtfd.io/ )
- [Dockerfile]( https://github.com/thombashi/docker-pingparsing/blob/master/Dockerfile )
