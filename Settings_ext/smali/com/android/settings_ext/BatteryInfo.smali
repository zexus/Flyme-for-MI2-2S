.class public Lcom/android/settings_ext/BatteryInfo;
.super Lmiui/app/Activity;
.source "BatteryInfo.java"


# instance fields
.field private cb:Landroid/widget/TextView;

.field private cc:Landroid/widget/TextView;

.field private cd:Landroid/widget/TextView;

.field private ce:Landroid/widget/TextView;

.field private cf:Landroid/widget/TextView;

.field private cg:Landroid/widget/TextView;

.field private ch:Landroid/widget/TextView;

.field private ci:Landroid/widget/TextView;

.field private cj:Landroid/widget/TextView;

.field private ck:Lcom/android/internal/app/IBatteryStats;

.field private cl:Landroid/os/IPowerManager;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings_ext/aa;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aa;-><init>(Lcom/android/settings_ext/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/settings_ext/ab;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/ab;-><init>(Lcom/android/settings_ext/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/BatteryInfo;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings_ext/BatteryInfo;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/BatteryInfo;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ext/BatteryInfo;->ae()V

    return-void
.end method

.method private ae()V
    .locals 6

    .prologue
    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 187
    iget-object v2, p0, Lcom/android/settings_ext/BatteryInfo;->cj:Landroid/widget/TextView;

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cd:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ce:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ch:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ci:Landroid/widget/TextView;

    return-object v0
.end method

.method private final f(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    div-int/lit8 v0, p1, 0xa

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v0, v0, 0xa

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cb:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cc:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/BatteryInfo;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cf:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->setContentView(I)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 157
    const v0, 0x7f10003a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cb:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f10003b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cc:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f10003c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cd:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f10003d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ce:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f10003e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cf:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ci:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f10003f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cg:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ch:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f100042

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/BatteryInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cj:Landroid/widget/TextView;

    .line 168
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->ck:Lcom/android/internal/app/IBatteryStats;

    .line 170
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->cl:Landroid/os/IPowerManager;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings_ext/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/BatteryInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void
.end method
