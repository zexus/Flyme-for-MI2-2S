.class public Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field private cH:Lcom/android/settings_ext/ap;

.field private eo:Landroid/security/MiuiLockPatternUtils;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private qD:Landroid/view/View;

.field private qE:Landroid/widget/TextView;

.field private qF:Landroid/widget/ImageView;

.field private qG:Z

.field private qH:I

.field private qI:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field private qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field private qw:Landroid/widget/ImageView;

.field private qx:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qG:Z

    .line 62
    iput v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qH:I

    .line 64
    new-instance v0, Lcom/android/settings_ext/ea;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/ea;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qI:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qH:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qG:Z

    return v0
.end method

.method static synthetic a(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qG:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eW()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)[B
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->generateKey()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method private eV()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qH:I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eX()V

    .line 153
    :cond_0
    new-instance v0, Lcom/android/settings_ext/eb;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/eb;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/eb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method

.method private eW()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eV()V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qG:Z

    goto :goto_0
.end method

.method private eX()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 205
    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 210
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qE:Landroid/widget/TextView;

    const v4, 0x7f090d60

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v3, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 214
    div-int/lit8 v4, v0, 0x12

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 215
    div-int/lit8 v0, v0, 0x12

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 221
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 222
    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 224
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 225
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 226
    invoke-virtual {v2, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 228
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 229
    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 231
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private eY()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qE:Landroid/widget/TextView;

    const v1, 0x7f090d61

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 244
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    new-instance v2, Lcom/android/settings_ext/ec;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/ec;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 258
    new-instance v2, Lcom/android/settings_ext/ed;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/ed;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qD:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    return-void
.end method

.method static synthetic f(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eY()V

    return-void
.end method

.method private generateKey()[B
    .locals 2

    .prologue
    .line 276
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 277
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 278
    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qx:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 285
    const v0, 0x7f0400f5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 287
    const v0, 0x7f100277

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qE:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f100273

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qw:Landroid/widget/ImageView;

    .line 289
    const v0, 0x7f100274

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qx:Landroid/widget/ImageView;

    .line 290
    const v0, 0x7f100275

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    .line 291
    const v0, 0x7f100278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qD:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qE:Landroid/widget/TextView;

    const v2, 0x7f090222

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qF:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qD:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qD:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ext/ee;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/ee;-><init>(Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 120
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eW()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->setRetainInstance(Z)V

    .line 81
    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eo:Landroid/security/MiuiLockPatternUtils;

    .line 82
    new-instance v0, Lcom/android/settings_ext/ap;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ext/ap;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->cH:Lcom/android/settings_ext/ap;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 86
    const-string v0, ":android:show_fragment_args"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_4

    .line 88
    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const-string v0, "device_address"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 105
    new-instance v0, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qI:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    invoke-direct {v0, v3, v4, v5}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 108
    const-string v0, "password_confirmed"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eW()V

    .line 113
    :goto_1
    return-void

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->cH:Lcom/android/settings_ext/ap;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/settings_ext/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qv:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDestroy()V

    .line 145
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 132
    iget v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qH:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eX()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->qH:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ext/MiuiSecurityBluetoothMatchDeviceFragment;->eY()V

    goto :goto_0
.end method
