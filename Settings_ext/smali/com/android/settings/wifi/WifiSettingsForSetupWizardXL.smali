.class public Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final awg:Ljava/util/EnumMap;


# instance fields
.field private In:Landroid/widget/TextView;

.field private avl:Landroid/widget/Button;

.field private awb:Lcom/android/settings_ext/wifi/WifiSettings;

.field private awh:Landroid/view/View;

.field private awi:Landroid/view/View;

.field private awj:Ljava/lang/CharSequence;

.field private awk:Ljava/lang/CharSequence;

.field private awl:Landroid/view/View;

.field private awm:Landroid/view/View;

.field private awn:Landroid/widget/Button;

.field private awo:Landroid/widget/Button;

.field private awp:Landroid/widget/Button;

.field private awq:Landroid/widget/Button;

.field private awr:Landroid/view/View;

.field private aws:Landroid/view/View;

.field private awt:Landroid/widget/TextView;

.field private awu:Lcom/android/settings_ext/wifi/W;

.field private awv:Landroid/net/NetworkInfo$DetailedState;

.field private hD:Landroid/net/wifi/WifiManager;

.field private hx:Landroid/view/inputmethod/InputMethodManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScreenState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    .line 62
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awg:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awj:Ljava/lang/CharSequence;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 135
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awv:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method private bp(Z)V
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vy()V

    .line 668
    if-eqz p1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings;->uA()V

    .line 673
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 166
    :cond_0
    const-string v1, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 169
    :cond_1
    const-string v1, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 173
    :cond_2
    const v0, 0x7f100313

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->In:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f100314

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 175
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 176
    const v0, 0x7f100315

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awl:Landroid/view/View;

    .line 177
    const v0, 0x7f10031f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awm:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    const v0, 0x7f100321

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v0, 0x7f100325

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f100324

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f100323

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v0, 0x7f100322

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f100312

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awh:Landroid/view/View;

    .line 195
    const v0, 0x7f100318

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awi:Landroid/view/View;

    .line 197
    const v0, 0x7f100319

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awr:Landroid/view/View;

    .line 198
    const v0, 0x7f10031c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->aws:Landroid/view/View;

    .line 199
    const v0, 0x7f10031d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awt:Landroid/widget/TextView;

    .line 200
    return-void
.end method

.method private vA()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 532
    return-void
.end method

.method private vC()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 573
    iget v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v0, v9, :cond_0

    iget v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 574
    :cond_0
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed after connect action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iput v6, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 579
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vs()V

    .line 581
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 582
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->bk(Z)V

    .line 586
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vy()V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 591
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 593
    const-string v2, "SetupWizard"

    const-string v3, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v6

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v3, Lcom/android/settings_ext/wifi/at;

    invoke-direct {v3, p0}, Lcom/android/settings_ext/wifi/at;-><init>(Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;)V

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awr:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 606
    invoke-direct {p0, v7}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->bp(Z)V

    .line 621
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 622
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->aws:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 623
    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 624
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 625
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    .line 627
    return-void

    .line 608
    :cond_2
    iput v6, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 609
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings;->vp()V

    .line 611
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vs()V

    .line 613
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 615
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 616
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vD()V

    .line 617
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awr:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awm:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private vD()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 721
    iget v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 724
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 728
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 729
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private vE()V
    .locals 2

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vx()V

    .line 738
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 739
    return-void
.end method

.method private vF()V
    .locals 2

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vx()V

    .line 746
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 747
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 748
    return-void
.end method

.method private vs()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vv()V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 210
    return-void
.end method

.method private vt()V
    .locals 3

    .prologue
    .line 243
    const-string v0, "SetupWizard"

    const-string v1, "Hiding software keyboard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hx:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 248
    :cond_0
    return-void
.end method

.method private vu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 309
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->In:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awk:Ljava/lang/CharSequence;

    .line 312
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vw()V

    .line 313
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vF()V

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 316
    return-void
.end method

.method private vv()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->In:Landroid/widget/TextView;

    const v1, 0x7f0907b5

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method private vw()V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awj:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/W;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/W;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/W;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/T;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awj:Ljava/lang/CharSequence;

    .line 375
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->In:Landroid/widget/TextView;

    const v1, 0x7f0907b7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awj:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    return-void

    .line 371
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private vx()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 399
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awl:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    return-void
.end method

.method private vy()V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 406
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awr:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vE()V

    .line 408
    return-void
.end method

.method private vz()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/wifi/WifiSettings;->vo()V

    .line 412
    return-void
.end method


# virtual methods
.method bk(Z)V
    .locals 2

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    const v1, 0x7f0907bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method d(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const v5, 0x7f100302

    const v4, 0x7f100301

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 483
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 485
    const v2, 0x7f100304

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    const v2, 0x7f100305

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 488
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 490
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vt()V

    .line 495
    const v1, 0x7f100303

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 501
    :goto_0
    const v1, 0x7f1001e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 502
    const v1, 0x7f100304

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    const v1, 0x7f100305

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vA()V

    .line 526
    :goto_1
    return v0

    .line 499
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->dh(I)V

    .line 516
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    if-eqz v0, :cond_3

    .line 517
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    const v2, 0x7f1001fa

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/wifi/W;->de(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 526
    goto :goto_1

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    const v2, 0x7f1001e4

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/wifi/W;->de(I)V

    goto :goto_2
.end method

.method dh(I)V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awh:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awi:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 716
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vt()V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 216
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vz()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 219
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->bp(Z)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 222
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v0, 0x7f0907bd

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 228
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 232
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 230
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 234
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vB()V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 237
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vC()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 141
    const v0, 0x7f040138

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 143
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hD:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f10031a

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    .line 150
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->hx:Landroid/view/inputmethod/InputMethodManager;

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 156
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vy()V

    .line 157
    return-void
.end method

.method vB()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 543
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 545
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awb:Lcom/android/settings_ext/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awu:Lcom/android/settings_ext/wifi/W;

    invoke-virtual {v1}, Lcom/android/settings_ext/wifi/W;->vb()Lcom/android/settings_ext/wifi/T;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/wifi/WifiSettings;->a(Lcom/android/settings_ext/wifi/T;)V

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->vu()V

    .line 556
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awq:Landroid/widget/Button;

    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 559
    const v0, 0x7f10031b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 560
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->aws:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awt:Landroid/widget/TextView;

    const v1, 0x7f0907cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awp:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->avl:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WifiSettingsForSetupWizardXL;->awo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 569
    return-void
.end method
