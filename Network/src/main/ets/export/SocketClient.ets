import webSocket from '@ohos.net.webSocket'
import socket from '@ohos.net.socket';
import Logger from '../utils/Logger';
import { SocketListener } from './SocketListener';

export class SocketClient {
  private TAG: string = '[Socket]'
  private socket: socket.TCPSocket | socket.UDPSocket;
  private listener: SocketListener;
  private status: Status = Status.unDisconnected;
  private protocol:Protocol;

  constructor(listener: SocketListener, protocol: 'TCP' | 'UDP') {
    this.listener = listener;
    this.protocol = Protocol[protocol];
    console.info(this.protocol);
  }

  connect(ip: string, port: string) {
    if (this.status == Status.unDisconnected) {
      this.socket = socket.constructTCPSocketInstance();
      // promise.then(() => {
      //   Logger.info(this.TAG, `connect success`)
      // }).catch((err: Error) => {
      //   Logger.info(this.TAG, `connect success error:${JSON.stringify(err)}`)
      // })
    } else {
      Logger.info(this.TAG, 'status is not disconnected:' + this.status)
    }
  }
}

enum Status {

  unDisconnected,

  disconnecting,

  disconnected,

}

enum Protocol {

  TCP = 'TCP',

  UDP = 'UDP',

}