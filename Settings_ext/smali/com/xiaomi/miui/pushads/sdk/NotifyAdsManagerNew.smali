.class public Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
.super Lcom/xiaomi/mipush/sdk/i;
.source "NotifyAdsManagerNew.java"

# interfaces
.implements Lcom/xiaomi/miui/pushads/sdk/d;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;


# instance fields
.field private Nf:Z

.field private aFY:Landroid/content/SharedPreferences;

.field private aFZ:Ljava/lang/String;

.field private aGb:Lcom/xiaomi/miui/pushads/sdk/h;

.field private aGc:Ljava/lang/String;

.field private aGd:Ljava/lang/String;

.field private aGf:Ljava/util/ArrayList;

.field private aGg:I

.field private aGh:I

.field private aGi:Ljava/lang/String;

.field private aGj:Z

.field private aGr:Landroid/content/BroadcastReceiver;

.field private aGs:Lcom/xiaomi/miui/pushads/sdk/f;

.field private aGt:I

.field private aGu:Ljava/lang/String;

.field private aGv:Ljava/lang/String;

.field private aGw:Ljava/lang/String;

.field private aGx:Lcom/xiaomi/miui/pushads/sdk/b/c;

.field private aGy:Lcom/xiaomi/miui/pushads/sdk/a/a;

.field private aGz:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImei:Ljava/lang/String;

.field private rr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/i;-><init>()V

    .line 90
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGg:I

    .line 91
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGh:I

    .line 95
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGt:I

    .line 119
    iput-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGj:Z

    .line 125
    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGz:I

    .line 136
    iput-object p2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    .line 137
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ar()V

    .line 139
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Aw()V

    .line 140
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Aq()V

    .line 143
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Az()V

    .line 146
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "\u6709 cache \u6587\u4ef6\uff0c\u5f00\u59cb\u4e0b\u8f7dcache"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ao()V

    .line 150
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;)V

    .line 157
    invoke-static {p6}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iput-object p6, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGi:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-static {p7}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    .line 165
    :cond_1
    iput-object p3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGu:Ljava/lang/String;

    .line 167
    iput-object p5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGv:Ljava/lang/String;

    .line 168
    iput p8, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGt:I

    .line 170
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/xiaomi/miui/pushads/sdk/b/c;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGx:Lcom/xiaomi/miui/pushads/sdk/b/c;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logSender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGx:Lcom/xiaomi/miui/pushads/sdk/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Av()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->setCategory(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->init channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGu:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGv:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/i;)V

    .line 179
    return-void
.end method

.method private Ao()V
    .locals 2

    .prologue
    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGh:I

    .line 1010
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/h;->Am()Ljava/util/ArrayList;

    move-result-object v0

    .line 1012
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1014
    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ap()V

    .line 1015
    return-void
.end method

.method private Ap()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 1065
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache \u4e2a\u6570: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1071
    const/4 v0, 0x0

    move v1, v0

    .line 1073
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ge v1, v8, :cond_4

    .line 1074
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miui/pushads/sdk/i;

    .line 1077
    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fc7\u671f\uff0c\u6240\u4ee5\u8df3\u8fc7, lastShow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFM:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1079
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1084
    :cond_2
    iget v3, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFN:I

    if-lt v3, v8, :cond_3

    .line 1085
    const-string v0, "cache \u7684\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u4e0a\u9650\uff0c\u4e0d\u6b63\u5e38"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1086
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1091
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1092
    iget-object v3, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFL:Ljava/lang/String;

    iget v0, v0, Lcom/xiaomi/miui/pushads/sdk/i;->aFN:I

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 1093
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1098
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1099
    const-string v0, "cache \u592a\u591a\uff0c\u5206\u6279\u8fdb\u884c\u4e0b\u8f7d"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1101
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1102
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private Aq()V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/g;->Ak()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGc:Ljava/lang/String;

    .line 184
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ay()V

    .line 186
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "com.xiaomi.miui.pushads.sdk:adscache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/h;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    .line 193
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGf:Ljava/util/ArrayList;

    .line 194
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    .line 196
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    goto :goto_0
.end method

.method private Ar()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/m;

    invoke-direct {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/m;-><init>(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method private As()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->set topic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method private At()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 347
    const-string v0, ""

    .line 348
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ay()V

    .line 350
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGi:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGi:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 378
    :goto_0
    sget-boolean v2, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 354
    :cond_0
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGt:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGz:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 358
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGz:I

    .line 402
    :cond_1
    :goto_1
    return-void

    .line 360
    :cond_2
    const-string v0, "can\'t get imei, system contains error, we can\'t get msg"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_3
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGt:I

    if-ne v0, v1, :cond_4

    .line 368
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_4
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGd:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGd:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_5
    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---> how could this happen? return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 385
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.xiaomi.miui.pushads.sdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    :cond_7
    const/4 v0, 0x0

    .line 389
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "--->unset old account: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 395
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-->set alias: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " thread: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 397
    iput-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Au()V

    goto/16 :goto_1
.end method

.method private Au()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 406
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "starttime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notifycount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bubblecount"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    return-void
.end method

.method private Av()Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    const-string v0, "fd5dfce4-64df-4434-aa66-2a70ff84a9c4"

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v1, "com.xiaomi.miui.pushads.sdk"

    .line 414
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/b;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    return-object v1
.end method

.method private Aw()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/miui/pushads/sdk/n;-><init>(Lcom/xiaomi/miui/pushads/sdk/d;)V

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGr:Landroid/content/BroadcastReceiver;

    .line 466
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 467
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Nf:Z

    .line 471
    return-void
.end method

.method public static declared-synchronized Ax()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 2

    .prologue
    .line 499
    const-class v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private Ay()V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGd:Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mImei:Ljava/lang/String;

    .line 1006
    return-void
.end method

.method private Az()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1020
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-string v1, "comxiaomimiuipushadssdk"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 1021
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1022
    const-wide/16 v0, 0x0

    .line 1024
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    if-nez v5, :cond_1

    .line 1059
    :cond_0
    return-void

    .line 1029
    :cond_1
    array-length v7, v5

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_3

    aget-object v8, v5, v2

    .line 1030
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1031
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v0, v8

    .line 1029
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "docleancache  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1040
    const-wide/32 v4, 0x1400000

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 1041
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/c;

    invoke-direct {v1}, Lcom/xiaomi/miui/pushads/sdk/c;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1044
    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 1045
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1046
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1047
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1048
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1049
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1036
    goto :goto_1

    .line 1053
    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 1054
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1055
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delet4e  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 1053
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 701
    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/j;I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 803
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 807
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/j;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 808
    const-string v2, "intenttype"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v2, :cond_0

    .line 812
    new-instance v2, Lcom/xiaomi/miui/pushads/sdk/j;

    invoke-direct {v2, p1}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Lcom/xiaomi/miui/pushads/sdk/j;)V

    .line 813
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    invoke-interface {v3, v2}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Lcom/xiaomi/miui/pushads/sdk/j;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 814
    if-eqz v2, :cond_0

    .line 815
    const-string v3, "pendingintent"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 819
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 821
    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/j;->id:J

    long-to-int v1, v2

    .line 822
    mul-int/2addr v1, v1

    add-int/2addr v1, p2

    .line 825
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 828
    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 10

    .prologue
    .line 576
    const-class v9, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    if-nez v0, :cond_0

    .line 578
    invoke-static/range {p6 .. p6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 579
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 582
    :cond_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 10

    .prologue
    .line 599
    const-class v9, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    if-nez v0, :cond_0

    .line 601
    invoke-static {p5}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-static/range {p6 .. p6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 604
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 607
    :cond_0
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ap()V

    return-void
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/j;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V
    .locals 5

    .prologue
    .line 834
    const/4 v0, 0x0

    .line 835
    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/j;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Lcom/xiaomi/miui/pushads/sdk/j;)V

    .line 837
    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFT:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 838
    iget-object v2, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 839
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v2, :cond_0

    .line 840
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    invoke-interface {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/f;->b(Lcom/xiaomi/miui/pushads/sdk/j;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 845
    :cond_0
    if-nez v0, :cond_1

    .line 868
    :goto_0
    return-void

    .line 847
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-class v3, Lcom/xiaomi/miui/pushads/sdk/MiPushRelayTraceService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 848
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 850
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/j;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 851
    const-string v3, "intenttype"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 855
    const-string v3, "notifyid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string v3, "pendingintent"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 859
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 861
    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/j;->id:J

    long-to-int v0, v2

    .line 862
    mul-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x3

    .line 864
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 867
    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFT:Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->a(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGj:Z

    return p1
.end method

.method private a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 924
    .line 927
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    if-gtz v2, :cond_1

    .line 928
    const-string v1, "white user"

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 953
    :cond_0
    :goto_0
    return v0

    .line 934
    :cond_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    packed-switch v2, :pswitch_data_0

    move v2, v1

    move v3, v1

    .line 947
    :goto_1
    if-le v3, v2, :cond_0

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reach up limit---already count\uff1a "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u4e0a\u9650: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    move v0, v1

    .line 953
    goto :goto_0

    .line 936
    :pswitch_0
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    mul-int/lit8 v2, v2, 0x4

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bubble uplimit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 938
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v4, "bubblecount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 941
    :pswitch_1
    iget v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify uplimit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 943
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v4, "notifycount"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    .locals 10

    .prologue
    .line 692
    const-class v9, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    monitor-enter v9

    :try_start_0
    invoke-static {p5}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 693
    invoke-static/range {p6 .. p6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 694
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;-><init>(Landroid/content/Context;Lcom/xiaomi/miui/pushads/sdk/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    .line 695
    sget-object v0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGq:Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method static synthetic b(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->At()V

    return-void
.end method

.method private b(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGx:Lcom/xiaomi/miui/pushads/sdk/b/c;

    if-eqz v0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->receivedT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGx:Lcom/xiaomi/miui/pushads/sdk/b/c;

    new-instance v1, Lcom/xiaomi/miui/pushads/sdk/a/d;

    invoke-direct {v1, p1}, Lcom/xiaomi/miui/pushads/sdk/a/d;-><init>(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/b/c;->c(Lcom/xiaomi/miui/pushads/sdk/a/d;)V

    .line 774
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 705
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/l;

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/miui/pushads/sdk/l;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/miui/pushads/sdk/d;)V

    .line 707
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miui/pushads/sdk/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 708
    return-void
.end method

.method private b(Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 957
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGh:I

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165cache \u7684\u6570\u91cf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/miui/pushads/sdk/h;->a(Ljava/lang/String;JI)V

    .line 961
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGb:Lcom/xiaomi/miui/pushads/sdk/h;

    invoke-virtual {v0}, Lcom/xiaomi/miui/pushads/sdk/h;->Al()V

    .line 963
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->As()V

    return-void
.end method

.method private c(Lcom/xiaomi/miui/pushads/sdk/a/b;)V
    .locals 2

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    .line 779
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 780
    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/a;

    .line 781
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    invoke-interface {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/f;->a(Lcom/xiaomi/miui/pushads/sdk/a;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget v0, p1, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 785
    check-cast p1, Lcom/xiaomi/miui/pushads/sdk/j;

    .line 787
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Lcom/xiaomi/miui/pushads/sdk/j;

    invoke-direct {v0, p1}, Lcom/xiaomi/miui/pushads/sdk/j;-><init>(Lcom/xiaomi/miui/pushads/sdk/j;)V

    .line 790
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    invoke-interface {v1, v0}, Lcom/xiaomi/miui/pushads/sdk/f;->c(Lcom/xiaomi/miui/pushads/sdk/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->d(Lcom/xiaomi/miui/pushads/sdk/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 795
    :catch_0
    move-exception v0

    .line 796
    const-string v0, "ads-notify-fd5dfce4"

    const-string v1, "SDK \u53d1\u51fanotification \u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cT(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1108
    const-string v0, "ads-notify-fd5dfce4"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void
.end method

.method private cU(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 286
    .line 288
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    const-string v2, "showType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 290
    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 291
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGy:Lcom/xiaomi/miui/pushads/sdk/a/a;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGy:Lcom/xiaomi/miui/pushads/sdk/a/a;

    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/xiaomi/miui/pushads/sdk/a/a;->cW(Ljava/lang/String;)V

    .line 303
    :goto_0
    return v0

    .line 296
    :cond_0
    const-string v1, "ads-notify-fd5dfce4"

    const-string v2, "\u63a5\u53d7\u5230\u5916\u90e8\u7684\u6d88\u606f\uff0c\u4f46\u662f\u5916\u90e8\u7684listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cV(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 611
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 612
    :cond_0
    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)Lcom/xiaomi/miui/pushads/sdk/f;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    return-object v0
.end method

.method private d(Lcom/xiaomi/miui/pushads/sdk/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 871
    .line 874
    const-string v0, "sdk handle notify"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 876
    iget-object v0, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFO:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 877
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    invoke-interface {v0}, Lcom/xiaomi/miui/pushads/sdk/f;->gR()I

    move-result v0

    .line 878
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 880
    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 882
    :cond_0
    new-instance v3, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;

    iget-object v4, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;-><init>(Landroid/content/Context;)V

    .line 884
    iget-object v4, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFR:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFS:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->C(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v3, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;->setIcon(I)V

    .line 886
    invoke-direct {p0, p1, v1, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/j;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 888
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 889
    iget-object v3, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 894
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/j;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 895
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 897
    invoke-direct {p0, p1, v6}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/j;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 898
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 900
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 903
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/j;->AA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 904
    invoke-virtual {p1}, Lcom/xiaomi/miui/pushads/sdk/j;->AA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 905
    if-eqz v3, :cond_1

    .line 906
    const-string v4, "big picture"

    invoke-static {v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 907
    new-instance v4, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;

    iget-object v5, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;-><init>(Landroid/content/Context;)V

    .line 908
    iget-object v5, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFR:Ljava/lang/String;

    iget-object v6, p1, Lcom/xiaomi/miui/pushads/sdk/j;->aFS:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->C(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v4, v0}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->setIcon(I)V

    .line 910
    invoke-virtual {v4, v3}, Lcom/xiaomi/miui/pushads/sdk/NotificationBigRemoteView;->b(Landroid/graphics/Bitmap;)V

    .line 911
    invoke-direct {p0, p1, v1, v4}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/j;ILcom/xiaomi/miui/pushads/sdk/NotificationBaseRemoteView;)V

    .line 912
    iput-object v4, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 919
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 920
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ao()V

    return-void
.end method


# virtual methods
.method public Ai()V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cq(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public Aj()V
    .locals 2

    .prologue
    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->account change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 996
    iget-boolean v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGj:Z

    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(ILcom/xiaomi/miui/pushads/sdk/a/b;Lcom/xiaomi/miui/pushads/sdk/l;)V
    .locals 4

    .prologue
    .line 729
    if-nez p2, :cond_1

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->cell is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->download failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 736
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    .line 738
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u5199\u5165\u7f13\u5b58 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFM:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    .line 740
    iget-object v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFL:Ljava/lang/String;

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFM:J

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aFN:I

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->b(Ljava/lang/String;JI)V

    .line 760
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 761
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->a(Lcom/xiaomi/miui/pushads/sdk/a/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 762
    invoke-direct {p0, p2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->c(Lcom/xiaomi/miui/pushads/sdk/a/b;)V

    goto :goto_0

    .line 742
    :cond_2
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\u6b21\u6570\u8d85\u8fc7 10 \u4e0d\u5199\u5165\u7f13\u5b58"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_3
    if-nez p1, :cond_5

    .line 746
    iget v0, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGD:I

    if-lez v0, :cond_4

    .line 747
    iget v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGg:I

    .line 748
    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ax()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->dX(I)V

    .line 750
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->download sucess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->Ax()Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;

    move-result-object v1

    iget v2, p2, Lcom/xiaomi/miui/pushads/sdk/a/b;->aGB:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->dW(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_5
    const-string v0, "com.miui.ads"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "\u5e7f\u544a\u65e0\u6548\u6216\u8005\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/e;->cO(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 764
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->reach limit, no return to app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGs:Lcom/xiaomi/miui/pushads/sdk/f;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 312
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 313
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 314
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 318
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->cahnel OK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->chanle failed\uff0c need app reopen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 439
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->onCommandResult == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    move v1, v2

    .line 442
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 442
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 446
    :cond_0
    const-string v0, "set-alias"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 447
    :goto_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 448
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    const/4 v0, 0x1

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--->alias ok: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 447
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    .line 455
    :cond_1
    if-nez v1, :cond_2

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->alias failed, retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 462
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->no alias\uff0cignore the msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {p2}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->rr:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get msg for different alias. unset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {p3}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/g;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aGw:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->get msg for old topic, unset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 425
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    :cond_0
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--->unsuscribe topic resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->cT(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public declared-synchronized dW(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 474
    monitor-enter p0

    .line 475
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 481
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 477
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 478
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dX(I)V
    .locals 3

    .prologue
    .line 485
    monitor-enter p0

    .line 487
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "notifycount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 490
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "notifycount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 492
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    const-string v1, "bubblecount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 493
    add-int/lit8 v0, v0, 0x1

    .line 494
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsManagerNew;->aFY:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bubblecount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
