# 🔍 Traffic Analysis: ICMPv6 Echo Request/Reply

## Context
After setting up the environment with the correct privileges, the goal was to capture a simple `ping` request to `google.com`. 

## The Process & The "Gotcha"
Initially, filtering by `icmp` in Wireshark yielded no results for the ping requests, and only showed some "Destination Unreachable" packets from background traffic. 

**The Discovery:** Modern networks and modern endpoints (like Google's servers) often default to the IPv6 stack. The terminal was sending IPv6 packets, which are not caught by the standard IPv4 `icmp` filter. 

## The Solution
By changing the Wireshark filter to **`icmpv6`**, the actual ping traffic was successfully revealed.

- **Filter Used:** `icmpv6`
- **Captured Packets:** - `Echo (ping) request`: The packet leaving the machine towards Google's IPv6 address.
  - `Echo (ping) reply`: The acknowledgment packet returning from Google, confirming network **Availability** (CIA Triad).

This highlights the importance of understanding the difference between IPv4 and IPv6 protocol stacks during network troubleshooting and packet analysis.