.class public Lcom/xiaomi/mipush/sdk/e;
.super Landroid/app/IntentService;
.source "MessageHandleService.java"


# static fields
.field private static aFn:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/e;->aFn:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "MessageHandleThread"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a(Lcom/xiaomi/mipush/sdk/f;)V
    .locals 1

    .prologue
    .line 20
    if-eqz p0, :cond_0

    .line 21
    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->aFn:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 31
    if-eqz p1, :cond_0

    .line 33
    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->aFn:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/f;

    .line 34
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 38
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/f;->zO()Lcom/xiaomi/mipush/sdk/o;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/f;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    const-string v2, "message_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m;->cn(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/m;->A(Landroid/content/Intent;)Lcom/xiaomi/mipush/sdk/PushMessageHandler$PushMessageInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    if-eqz v2, :cond_5

    .line 59
    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushMessage;

    .line 60
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->zU()Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    .line 63
    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 64
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    :pswitch_3
    :try_start_1
    const-string v2, "key_command"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 49
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 50
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->isNotified()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->d(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    goto :goto_0

    .line 72
    :cond_5
    instance-of v2, v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    if-eqz v2, :cond_0

    .line 73
    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    .line 74
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    .line 75
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "register"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/o;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
