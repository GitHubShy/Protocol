// 用于保存创建成功的订阅者对象，后续使用其完成订阅及退订的动作
import CommonEventManager from '@ohos.commonEventManager';
let subscriber = null;
// 订阅者信息
let subscribeInfo = {
  events: ["usual.event.SCREEN_OFF"], // 订阅灭屏公共事件
}

// 创建订阅者回调
CommonEventManager.createSubscriber(subscribeInfo, (err, data) => {
  if (err) {
    console.error(`[CommonEvent] CreateSubscriberCallBack err=${JSON.stringify(err)}`);
  } else {
    console.info(`[CommonEvent] CreateSubscriber success`);
    subscriber = data;
    // 订阅公共事件回调
  }
})