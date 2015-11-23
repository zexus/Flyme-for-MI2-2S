.class public Lcom/android/settings/wifi/MiuiWifiDetailFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiWifiDetailFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/j;


# instance fields
.field private asT:Lcom/android/settings/wifi/i;

.field private asX:I

.field private asY:Lcom/android/settings/wifi/d;

.field private asZ:Landroid/net/wifi/WifiConfiguration;

.field ata:I

.field atb:Lcom/android/settings/wifi/openwifi/l;

.field private atc:Lcom/android/settings/wifi/aa;

.field private atd:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ata:I

    .line 184
    new-instance v0, Lcom/android/settings/wifi/q;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/q;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atd:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asZ:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->uj()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    return v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/aa;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)Lcom/android/settings/wifi/d;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ul()V

    return-void
.end method

.method private uh()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 112
    const v0, 0x7f100219

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    if-eq v1, v5, :cond_1

    .line 114
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    .line 115
    const v1, 0x7f100217

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 116
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    new-instance v4, Lcom/android/settings/wifi/k;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/k;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v1, v1, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_3

    const-string v1, "CMCC"

    iget-object v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v4, v4, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 127
    :goto_0
    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    new-instance v1, Lcom/android/settings/wifi/l;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/l;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_1
    const v0, 0x7f100218

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    iget v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    if-eq v1, v5, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    invoke-virtual {v1}, Lcom/android/settings/wifi/d;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    new-instance v1, Lcom/android/settings/wifi/o;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/o;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 125
    goto :goto_0

    :cond_4
    move v1, v2

    .line 127
    goto :goto_1
.end method

.method private ui()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    invoke-virtual {v0}, Lcom/android/settings/wifi/d;->ua()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 170
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    new-instance v1, Lcom/android/settings/wifi/p;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private uj()V
    .locals 5

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->uk()V

    .line 196
    new-instance v0, Lcom/android/settings/wifi/aa;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atd:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/aa;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/aa;->f(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->show()V

    .line 199
    return-void
.end method

.method private uk()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    invoke-virtual {v0}, Lcom/android/settings/wifi/aa;->dismiss()V

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atc:Lcom/android/settings/wifi/aa;

    .line 206
    return-void
.end method

.method private ul()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 211
    const v1, 0x7f1001dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    const v1, 0x7f090ce9

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v3}, Lcom/android/settings/wifi/openwifi/l;->getProviderName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ata:I

    if-ltz v2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090cf6

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ata:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    return-void
.end method

.method private um()V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v0, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/android/settings/wifi/c;->bA(Landroid/content/Context;)Lcom/android/settings/wifi/c;

    move-result-object v2

    .line 228
    const v3, 0x7f1001de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 229
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    const v3, 0x7f1001df

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 231
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v3, v3, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/c;->bI(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 232
    new-instance v3, Lcom/android/settings/wifi/r;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/settings/wifi/r;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Lcom/android/settings/wifi/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private un()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v0, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/android/settings/b/f;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settings/b/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 250
    invoke-virtual {v1}, Lcom/android/settings/b/f;->read()V

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v0, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Lcom/android/settings/b/f;->c(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v3

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 254
    const v4, 0x7f1001e1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const v4, 0x7f1001e2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    .line 257
    if-eqz v3, :cond_2

    .line 258
    iget-wide v4, v3, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 259
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 266
    :goto_1
    new-instance v3, Lcom/android/settings/wifi/s;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/wifi/s;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;Lcom/android/settings/b/f;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 261
    :cond_1
    iget-boolean v3, v3, Landroid/net/NetworkPolicy;->metered:Z

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {v0, v5}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private uo()V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/android/settings/wifi/t;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/t;-><init>(Lcom/android/settings/wifi/MiuiWifiDetailFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 357
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 68
    const v0, 0x7f040134

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 70
    return-object v0
.end method

.method public bf(Z)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->i(Z)V

    .line 305
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    const v1, 0x7f090b4a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 315
    .line 316
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v0, v0, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    .line 318
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asZ:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asZ:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asZ:Landroid/net/wifi/WifiConfiguration;

    .line 324
    :cond_0
    if-eqz v0, :cond_1

    .line 325
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    const-string v2, "network_id"

    iget v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string v2, "is_delete"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 328
    const-string v2, "config"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 332
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v2, v2, Lcom/android/settings/wifi/d;->asd:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 338
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->b(Landroid/os/Bundle;)V

    .line 339
    return-void

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asT:Lcom/android/settings/wifi/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asT:Lcom/android/settings/wifi/i;

    invoke-virtual {v0}, Lcom/android/settings/wifi/i;->tN()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    iput v7, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    .line 79
    new-instance v1, Lcom/android/settings/wifi/d;

    invoke-direct {v1, v6, v0}, Lcom/android/settings/wifi/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget v0, v0, Lcom/android/settings/wifi/d;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    .line 83
    new-instance v0, Lcom/android/settings/wifi/i;

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/i;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZLcom/android/settings/wifi/j;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asT:Lcom/android/settings/wifi/i;

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v0, v0, Lcom/android/settings/wifi/d;->bssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asY:Lcom/android/settings/wifi/d;

    iget-object v1, v1, Lcom/android/settings/wifi/d;->ssid:Ljava/lang/String;

    invoke-static {v6, v0, v1}, Lcom/android/settings/wifi/openwifi/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/wifi/openwifi/l;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->uh()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ul()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->ui()V

    .line 90
    iget v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->asX:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    invoke-virtual {v0}, Lcom/android/settings/wifi/openwifi/l;->wi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->uo()V

    .line 94
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->uk()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->atb:Lcom/android/settings/wifi/openwifi/l;

    .line 107
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroy()V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->um()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiWifiDetailFragment;->un()V

    .line 101
    return-void
.end method
