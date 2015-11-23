.class public Lcom/xiaomi/mipush/sdk/j;
.super Ljava/lang/Object;
.source "PushContainerHelper.java"


# static fields
.field private static final aFs:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/mipush/sdk/j;->aFs:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x17t
        0x54t
        0x72t
        0x48t
        0x0t
        0x4t
        0x61t
        0x49t
        0x61t
        0x2t
        0x34t
        0x54t
        0x66t
        0x12t
        0x20t
    .end array-data
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    .line 39
    sget-object v0, Lcom/xiaomi/xmpush/thrift/ActionType;->aOO:Lcom/xiaomi/xmpush/thrift/ActionType;

    invoke-virtual {p2, v0}, Lcom/xiaomi/xmpush/thrift/ActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zF()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lorg/apache/thrift/TBase;Lcom/xiaomi/xmpush/thrift/ActionType;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {p1}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;)[B

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    const-string v0, "invoke convertThriftObjectToBytes method, return null."

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move-object v0, v1

    .line 88
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v2, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;-><init>()V

    .line 62
    if-eqz p3, :cond_2

    .line 63
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/a;->zI()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    const-string v0, "regSecret is empty, return null"

    invoke-static {v0}, Lcom/xiaomi/a/a/c/c;->warn(Ljava/lang/String;)V

    move-object v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v3}, Lcom/xiaomi/a/a/f/a;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 71
    :try_start_0
    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/j;->c([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :cond_2
    :goto_1
    new-instance v1, Lcom/xiaomi/xmpush/thrift/Target;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/Target;-><init>()V

    .line 79
    const-wide/16 v4, 0x5

    iput-wide v4, v1, Lcom/xiaomi/xmpush/thrift/Target;->channelId:J

    .line 80
    const-string v3, "fakeid"

    iput-object v3, v1, Lcom/xiaomi/xmpush/thrift/Target;->userId:Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->c(Lcom/xiaomi/xmpush/thrift/Target;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 82
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->a(Ljava/nio/ByteBuffer;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 83
    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->b(Lcom/xiaomi/xmpush/thrift/ActionType;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->ch(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 85
    invoke-virtual {v2, p4}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->dW(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 86
    invoke-virtual {v2, p3}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->cf(Z)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    .line 87
    invoke-virtual {v2, p5}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->dV(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;

    move-object v0, v2

    .line 88
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v1, "encryption error. "

    invoke-static {v1}, Lcom/xiaomi/a/a/c/c;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a([BI)Ljavax/crypto/Cipher;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 159
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lcom/xiaomi/mipush/sdk/j;->aFs:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 160
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 162
    invoke-virtual {v2, p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 163
    return-object v2
.end method

.method protected static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;)Lorg/apache/thrift/TBase;
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DU()Z

    move-result v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/a;->cb(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->zI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/f/a;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DX()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/j;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DS()Lcom/xiaomi/xmpush/thrift/ActionType;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/j;->a(Lcom/xiaomi/xmpush/thrift/ActionType;)Lorg/apache/thrift/TBase;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    invoke-static {v1, v0}, Lcom/xiaomi/xmpush/thrift/a;->a(Lorg/apache/thrift/TBase;[B)V

    .line 111
    :cond_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lorg/apache/thrift/TException;

    const-string v2, "the aes decrypt failed."

    invoke-direct {v1, v2, v0}, Lorg/apache/thrift/TException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 104
    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/xmpush/thrift/XmPushActionContainer;->DX()[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/xiaomi/xmpush/thrift/ActionType;)Lorg/apache/thrift/TBase;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/xiaomi/mipush/sdk/k;->aFt:[I

    invoke-virtual {p0}, Lcom/xiaomi/xmpush/thrift/ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 154
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 133
    :pswitch_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionRegistrationResult;-><init>()V

    goto :goto_0

    .line 135
    :pswitch_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnRegistrationResult;-><init>()V

    goto :goto_0

    .line 137
    :pswitch_2
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSubscriptionResult;-><init>()V

    goto :goto_0

    .line 139
    :pswitch_3
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionUnSubscriptionResult;-><init>()V

    goto :goto_0

    .line 141
    :pswitch_4
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendMessage;-><init>()V

    goto :goto_0

    .line 143
    :pswitch_5
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionAckMessage;-><init>()V

    goto :goto_0

    .line 145
    :pswitch_6
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 147
    :pswitch_7
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionSendFeedbackResult;-><init>()V

    goto :goto_0

    .line 149
    :pswitch_8
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionNotification;-><init>()V

    goto :goto_0

    .line 151
    :pswitch_9
    new-instance v0, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/XmPushActionCommandResult;-><init>()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static b([B[B)[B
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B[B)[B
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/j;->a([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
