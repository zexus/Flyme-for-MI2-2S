.class Lcom/miui/server/SecuritySmsHandler;
.super Ljava/lang/Object;
.source "SecuritySmsHandler.java"


# instance fields
.field private mBlockType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInterceptSmsCallerPkgName:Ljava/lang/String;

.field private mInterceptSmsCallerUid:I

.field private mInterceptSmsCount:I

.field private mInterceptSmsLock:Ljava/lang/Object;

.field private mInterceptSmsSenderNum:Ljava/lang/String;

.field private mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

.field private mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 38
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 41
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$1;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v0, Lcom/miui/server/SecuritySmsHandler$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SecuritySmsHandler$2;-><init>(Lcom/miui/server/SecuritySmsHandler;)V

    iput-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/SecuritySmsHandler;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/SecuritySmsHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    return v0
.end method

.method static synthetic access$500(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/SecuritySmsHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    return-void
.end method

.method private checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lmiui/provider/ExtraTelephony;->getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    .line 163
    iget v0, p0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkWithInterceptedSender(Ljava/lang/String;)Z
    .locals 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "result":Z
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    const-string v1, "SecurityManagerService"

    const-string v3, "checkWithInterceptedSender: callerUid:%d, senderNum:%s, count:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-lez v1, :cond_0

    .line 149
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    iget v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    if-nez v1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 156
    :cond_1
    monitor-exit v2

    .line 157
    return v0

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 181
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/server/SecuritySmsHandler;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method private dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v0, "android.permission.RECEIVE_SMS"

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptedResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 178
    return-void
.end method

.method private dispatchMmsToAntiSpam(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 202
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchMmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v0, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method private dispatchNormalSms(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 208
    const-string v1, "SecurityManagerService"

    const-string v2, "dispatchNormalSms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 214
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    const-string v1, "SecurityManagerService"

    const-string v2, "Delivering SMS to: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    const/high16 v1, 0x8000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mNormalSmsResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 222
    return-void
.end method

.method private dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchSmsToAntiSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v0, "com.android.mms"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v0, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method private dispatchToInterceptApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const-string v0, "SecurityManagerService"

    const-string v1, "dispatchToInterceptApp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {p0, v0, p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchInterceptedSms(Ljava/lang/String;Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public static getSlotIdFromIntent(Landroid/content/Intent;)I
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "slotId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 281
    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 282
    if-gez v0, :cond_0

    .line 283
    const-string v1, "SecurityManagerService"

    const-string v2, "getSlotIdFromIntent slotId < 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    return v0
.end method

.method private releaseSmsIntercept()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 167
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 168
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 170
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 171
    return-void
.end method


# virtual methods
.method checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v13, "SecurityManagerService"

    const-string v14, "enter checkSmsBlocked"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, "blocked":Z
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x13

    if-ge v13, v14, :cond_0

    move v4, v3

    .line 101
    .end local v3    # "blocked":Z
    .local v4, "blocked":I
    :goto_0
    return v4

    .line 59
    .end local v4    # "blocked":I
    .restart local v3    # "blocked":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v12

    .line 62
    .local v12, "slotId":I
    const-string v13, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 63
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 64
    .local v7, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v13, v7

    if-ge v6, v13, :cond_1

    .line 66
    aget-object v13, v7, v6

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 69
    :cond_1
    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "address":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/server/SecuritySmsHandler;->checkWithInterceptedSender(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 73
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted by sender address"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchToInterceptApp(Landroid/content/Intent;)V

    .line 75
    const/4 v3, 0x1

    .line 78
    :cond_2
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v12}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 79
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted by AntiSpam"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v13, "blockType"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V

    .line 82
    const/4 v3, 0x1

    .line 100
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "body":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v13, "SecurityManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "leave checkSmsBlocked, blocked:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 101
    .restart local v4    # "blocked":I
    goto/16 :goto_0

    .line 85
    .end local v4    # "blocked":I
    :cond_4
    const-string v13, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 87
    const-string v13, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 88
    .local v10, "pushData":[B
    new-instance v8, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v8, v10}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 89
    .local v8, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    .line 90
    .local v9, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "address":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v12}, Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 93
    const-string v13, "SecurityManagerService"

    const-string v14, "Intercepted wap push by AntiSpam"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v13, "blockType"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/miui/server/SecuritySmsHandler;->mBlockType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/miui/server/SecuritySmsHandler;->dispatchMmsToAntiSpam(Landroid/content/Intent;)V

    .line 96
    const/4 v3, 0x1

    goto :goto_2
.end method

.method startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 105
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 120
    :goto_0
    return v1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v4, "SecurityManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 111
    .local v0, "callerUid":I
    iget-object v2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    iget v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v3, :cond_1

    .line 113
    iput v0, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    .line 114
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerPkgName:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsSenderNum:Ljava/lang/String;

    .line 116
    iput p3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCount:I

    .line 117
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method stopInterceptSmsBySender()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_0

    .line 139
    :goto_0
    return v1

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.miui.permission.MANAGE_SMS_INTERCEPT"

    const-string v5, "SecurityManagerService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 130
    .local v0, "callerUid":I
    iget-object v3, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 131
    :try_start_0
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-nez v4, :cond_1

    .line 132
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 134
    :cond_1
    iget v4, p0, Lcom/miui/server/SecuritySmsHandler;->mInterceptSmsCallerUid:I

    if-ne v4, v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/miui/server/SecuritySmsHandler;->releaseSmsIntercept()V

    .line 136
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 138
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
