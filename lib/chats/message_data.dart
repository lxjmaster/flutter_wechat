class MessageData{
  String avatar;
  String title;
  String subtitle;
  DateTime time;
  MessageType type;
  MessageData(this.avatar, this.title, this.subtitle, this.time, this.type);
}

enum MessageType {SYSTEM, PUBLIC, CHAT, GROUP}


List<MessageData> messageData = [
  MessageData(
    "https://bkimg.cdn.bcebos.com/pic/902397dda144ad3479aef2ccdda20cf431ad8563?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UyNzI=,xp_5,yp_5",
    "Donald Trump",
    "Oh, brother, help me, I can't hold it.Hillary, they're going to Sue me.",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://bkimg.cdn.bcebos.com/pic/0bd162d9f2d3572c257447038f13632763d0c35f?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxNTA=,xp_5,yp_5",
    "马云",
    "哥，谢了，那200多亿昨天到账了",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://bkimg.cdn.bcebos.com/pic/8cb1cb1349540923453457db9a58d109b3de4931?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxNTA=,xp_5,yp_5",
    "马化腾",
    "大佬，再借100亿给我资金周转一下?",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://bkimg.cdn.bcebos.com/pic/30adcbef76094b36987b1a5caecc7cd98c109d91?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2U5Mg==,xp_5,yp_5",
    "雷军",
    "新手机设计出来了，就等投资了",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://bkimg.cdn.bcebos.com/pic/d043ad4bd11373f0fe063fb2a90f4bfbfbed04e5?x-bce-process=image/watermark,g_7,image_d2F0ZXIvYmFpa2UxMTY=,xp_5,yp_5",
    "刘强东",
    "再借我点",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2017-5/2017052714205462228.jpg",
    "Reloaded",
    "That's a joke",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-2/2020021709120259924.jpg",
    "只要丿我在",
    "这是一个很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长很长的消息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020030510273711551.jpg",
    "正儿八经社会小青年i",
    "呦呦，切克闹，煎饼果子来一套",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031110095662379.jpg",
    "时光♂带走好多狗、",
    "复日复明日，明日何其多",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031809064055735.jpg",
    "孤独伴我^",
    "1234567，7654321，3322777，9988666",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031809064267594.jpg",
    "Rol",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-1/2020010209335235941.jpg",
    "唐运",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2017-3/14906904814953260.jpg",
    "Alle",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2018-5/15269696925270490.jpg",
    "Miso",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-2/2020020608393218959.jpg",
    "萌面大瞎",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-2/2020021409123637487.jpg",
    "醉笙情、",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031718233671832.jpg",
    "正在删除",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031718233783576.jpg",
    "温柔少女控",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031718233721882.jpg",
    "心会出轨",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  ),
  MessageData(
    "https://pic.qqtn.com/up/2020-3/2020031209545477462.jpg",
    "兮沫ぺ",
    "好友1的聊天信息",
    DateTime.now(),
    MessageType.CHAT
  )
];