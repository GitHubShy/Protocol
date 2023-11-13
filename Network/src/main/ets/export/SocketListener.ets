export interface SocketListener{

  connected():void

  disconnected():void

  receivedMessage():string

}