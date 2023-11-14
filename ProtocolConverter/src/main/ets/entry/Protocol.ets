export class Protocol{
  private static instance:Protocol = new Protocol();

  private constructor() {
  }

  public static getInstance():Protocol {
    return this.instance;
  }
}