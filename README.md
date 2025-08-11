A terminal-based Concentration/Memory game with a server coordinating game state and a client for players.

## Quick start
```bash
git clone https://github.com/Miu0721/concentration-game-.git
cd concentration-game-
! Make sure to create two terminals (one for server and the other one for client)
make
./server               # start server (default port 5000, or whatever it uses)
./client 127.0.0.1     # connect to server
