.class public Lcom/android/settings_ext/wifi/WpsFragment;
.super Lcom/android/settings_ext/BaseFragment;
.source "WpsFragment.java"


# instance fields
.field private Um:Landroid/widget/TextView;

.field private asr:Landroid/content/IntentFilter;

.field private axE:Lmiui/widget/ProgressBar;

.field private axF:Landroid/widget/Button;

.field private axG:Landroid/widget/Button;

.field private axH:Landroid/widget/ImageView;

.field private axI:Z

.field axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

.field private axo:Ljava/util/Timer;

.field private axp:Landroid/net/wifi/WifiManager$WpsCallback;

.field private axq:I

.field private hD:Landroid/net/wifi/WifiManager;

.field private mHandler:Landroid/os/Handler;

.field private mM:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private rE:Lmiui/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    .line 65
    sget-object v0, Lcom/android/settings_ext/wifi/WpsFragment$State;->axO:Lcom/android/settings_ext/wifi/WpsFragment$State;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WpsFragment;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WpsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mM:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WpsFragment$State;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings_ext/wifi/WpsFragment$State;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ext/wifi/bf;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ext/wifi/bf;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->vT()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WpsFragment;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/wifi/WpsFragment;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/wifi/WpsFragment;Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/wifi/WpsFragment;)Lmiui/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axE:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->stop()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/wifi/WpsFragment;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->start()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/wifi/WpsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mM:Ljava/lang/String;

    return-object v0
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 294
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 295
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axQ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    if-ne v0, v1, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->vS()V

    .line 300
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->Um:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axH:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/wifi/WpsFragment;)Lmiui/widget/ProgressBar;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->rE:Lmiui/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axG:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axF:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings_ext/wifi/WpsFragment;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private start()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 183
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axo:Ljava/util/Timer;

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axo:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings_ext/wifi/bc;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/bc;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 197
    new-instance v0, Lcom/android/settings_ext/wifi/be;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/be;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WpsFragment;->asr:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-boolean v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axI:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->vS()V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v0, Landroid/net/wifi/WpsInfo;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 209
    iget v1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axq:I

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 210
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->hD:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axp:Landroid/net/wifi/WifiManager$WpsCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axJ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axQ:Lcom/android/settings_ext/wifi/WpsFragment$State;

    if-eq v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axo:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axo:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 221
    iput-object v2, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axo:Ljava/util/Timer;

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    iput-object v2, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    :cond_2
    return-void
.end method

.method private vS()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-static {v0}, Lcom/android/settings_ext/wifi/d;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    const v1, 0x7f0902cc

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    iput-boolean v4, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axI:Z

    .line 312
    sget-object v1, Lcom/android/settings_ext/wifi/WpsFragment$State;->axR:Lcom/android/settings_ext/wifi/WpsFragment$State;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/wifi/WpsFragment;->a(Lcom/android/settings_ext/wifi/WpsFragment$State;Ljava/lang/String;)V

    .line 314
    :cond_1
    return-void
.end method

.method private vT()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->Um:Landroid/widget/TextView;

    const v1, 0x7f0902ca

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WpsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ext/wifi/WpsFragment;->mM:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axH:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->Um:Landroid/widget/TextView;

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axH:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 137
    const v0, 0x7f040145

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    iput v2, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axq:I

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->hD:Landroid/net/wifi/WifiManager;

    .line 126
    new-instance v0, Lcom/android/settings_ext/wifi/ba;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/wifi/ba;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axp:Landroid/net/wifi/WifiManager$WpsCallback;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->asr:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->asr:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "wps_setup_finish"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axI:Z

    .line 133
    :cond_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wps_setup"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axq:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->stop()V

    .line 232
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onDestroy()V

    .line 233
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 329
    const-string v0, "wps_setup_finish"

    iget-boolean v1, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axI:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f100342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->Um:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f100343

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axH:Landroid/widget/ImageView;

    .line 147
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->vT()V

    .line 148
    const v0, 0x7f100344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axE:Lmiui/widget/ProgressBar;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axE:Lmiui/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setMax(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axE:Lmiui/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setProgress(I)V

    .line 152
    const v0, 0x7f100345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->rE:Lmiui/widget/ProgressBar;

    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->rE:Lmiui/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    .line 155
    const v0, 0x7f100346

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axF:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axF:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/wifi/aZ;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/aZ;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f100347

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axG:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WpsFragment;->axG:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/wifi/bb;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/wifi/bb;-><init>(Lcom/android/settings_ext/wifi/WpsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WpsFragment;->start()V

    .line 177
    return-void
.end method
