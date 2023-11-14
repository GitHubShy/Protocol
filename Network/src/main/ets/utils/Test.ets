import { SocketClient } from '../export/SocketClient';
import { SocketListener } from '../export/SocketListener';

class Listener implements SocketListener {
  receivedMessage(): string {
    throw new Error('Method not implemented.');
  }

  disconnected(): void {
    throw new Error('Method not implemented.');
  }

  connected(): void {
    throw new Error('Method not implemented.');
  }
}

export function test() {
  let socket = new SocketClient(new Listener(),'TCP')
}