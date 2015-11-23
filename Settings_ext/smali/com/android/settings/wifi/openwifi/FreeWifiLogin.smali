.class public Lcom/android/settings/wifi/openwifi/FreeWifiLogin;
.super Lmiui/app/Activity;
.source "FreeWifiLogin.java"

# interfaces
.implements Lcom/android/settings/wifi/openwifi/m;


# instance fields
.field private ayi:Landroid/widget/ImageView;

.field private ayj:Landroid/widget/TextView;

.field private ayk:Landroid/widget/TextView;

.field private ayl:Landroid/widget/Button;

.field private aym:Landroid/widget/Button;

.field private ayn:Landroid/widget/LinearLayout;

.field private ayo:Landroid/widget/LinearLayout;

.field private ayp:Landroid/graphics/drawable/AnimationDrawable;

.field private ayq:J

.field private ayr:Landroid/content/BroadcastReceiver;

.field private ays:Landroid/content/BroadcastReceiver;

.field private ayt:Z

.field private ayu:Ljava/lang/Runnable;

.field private ayv:Lcom/android/settings/wifi/MiuiWifiService;

.field private ayw:Landroid/content/ServiceConnection;

.field private hD:Landroid/net/wifi/WifiManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 244
    new-instance v0, Lcom/android/settings/wifi/openwifi/g;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/g;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayr:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/android/settings/wifi/openwifi/h;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/h;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ays:Landroid/content/BroadcastReceiver;

    .line 297
    new-instance v0, Lcom/android/settings/wifi/openwifi/i;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/i;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayu:Ljava/lang/Runnable;

    .line 328
    new-instance v0, Lcom/android/settings/wifi/openwifi/j;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/j;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayw:Landroid/content/ServiceConnection;

    .line 367
    new-instance v0, Lcom/android/settings/wifi/openwifi/k;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/k;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Lcom/android/settings/wifi/MiuiWifiService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayv:Lcom/android/settings/wifi/MiuiWifiService;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Lcom/android/settings/wifi/MiuiWifiService;)Lcom/android/settings/wifi/MiuiWifiService;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayv:Lcom/android/settings/wifi/MiuiWifiService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->df(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayk:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->hD:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vZ()V

    .line 116
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayu:Ljava/lang/Runnable;

    return-object v0
.end method

.method private df(I)V
    .locals 7

    .prologue
    const v6, 0x7f080053

    const/16 v5, 0x7d0

    const/16 v4, 0x3e8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->onBackPressed()V

    .line 242
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayl:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vW()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayo:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->uo()V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayl:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayj:Landroid/widget/TextView;

    const v1, 0x7f090cf4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayk:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayo:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayi:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayl:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayj:Landroid/widget/TextView;

    const v1, 0x7f090cf1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayo:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->uo()V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static dp(I)I
    .locals 3

    .prologue
    .line 164
    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 166
    :cond_0
    const/16 v0, -0x40

    if-lt p0, v0, :cond_1

    .line 167
    const/4 v0, 0x4

    goto :goto_0

    .line 169
    :cond_1
    const/high16 v0, 0x42100000    # 36.0f

    .line 170
    const/high16 v1, 0x40800000    # 4.0f

    .line 171
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vW()V

    return-void
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 265
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->finish()V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 270
    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->us()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vX()V

    return-void
.end method

.method private uo()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/android/settings/wifi/openwifi/f;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/openwifi/f;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/openwifi/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method private us()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->isWifiConnected()Z

    move-result v1

    .line 279
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayt:Z

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->finish()V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayt:Z

    goto :goto_0
.end method

.method private vV()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 136
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f040063

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 138
    const v0, 0x7f1000ee

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method private vW()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 146
    iget-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayq:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/android/settings/wifi/openwifi/l;->wd()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 148
    invoke-static {}, Lcom/android/settings/wifi/openwifi/l;->wd()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayq:J

    .line 153
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayq:J

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 154
    const v1, 0x7f090cf8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayq:J

    goto :goto_0
.end method

.method private vX()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 180
    invoke-static {v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->dp(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayi:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public dq(I)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    return-void
.end method

.method public isWifiConnected()Z
    .locals 2

    .prologue
    .line 289
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 291
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vY()V

    .line 65
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->hD:Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->setContentView(I)V

    .line 70
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayi:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayi:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayp:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayj:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayk:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayl:Landroid/widget/Button;

    .line 75
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aym:Landroid/widget/Button;

    .line 76
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayn:Landroid/widget/LinearLayout;

    .line 77
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayo:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->aym:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/openwifi/d;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/openwifi/d;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayl:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/openwifi/e;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/openwifi/e;-><init>(Lcom/android/settings/wifi/openwifi/FreeWifiLogin;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->vV()V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ays:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ays:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->cleanup()V

    .line 109
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 110
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Lmiui/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->setIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 126
    return-void
.end method

.method vY()V
    .locals 3

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/MiuiWifiService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    iget-object v1, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayw:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 354
    return-void
.end method

.method vZ()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayv:Lcom/android/settings/wifi/MiuiWifiService;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayv:Lcom/android/settings/wifi/MiuiWifiService;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/MiuiWifiService;->b(Lcom/android/settings/wifi/openwifi/m;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->ayw:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/openwifi/FreeWifiLogin;->unbindService(Landroid/content/ServiceConnection;)V

    .line 362
    :cond_0
    return-void
.end method
