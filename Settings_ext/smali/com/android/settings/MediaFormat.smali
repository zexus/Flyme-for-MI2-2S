.class public Lcom/android/settings/MediaFormat;
.super Lmiui/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private fj:Landroid/view/View$OnClickListener;

.field private fp:Landroid/view/View$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private oh:Landroid/os/storage/StorageVolume;

.field private oi:Landroid/view/View;

.field private oj:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 101
    new-instance v0, Lcom/android/settings/cX;

    invoke-direct {v0, p0}, Lcom/android/settings/cX;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->fj:Landroid/view/View$OnClickListener;

    .line 170
    new-instance v0, Lcom/android/settings/cY;

    invoke-direct {v0, p0}, Lcom/android/settings/cY;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->fp:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x1107004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->eq()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/settings/MediaFormat;I)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->l(I)Z

    move-result v0

    return v0
.end method

.method private aX()V
    .locals 3

    .prologue
    .line 191
    .line 193
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->eq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const v1, 0x7f090c7f

    .line 195
    const v0, 0x7f090c7c

    .line 201
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090baa

    new-instance v2, Lcom/android/settings/db;

    invoke-direct {v2, p0}, Lcom/android/settings/db;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/da;

    invoke-direct {v2, p0}, Lcom/android/settings/da;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cZ;

    invoke-direct {v1, p0}, Lcom/android/settings/cZ;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void

    .line 197
    :cond_0
    const v1, 0x7f090484

    .line 198
    const v0, 0x7f090488

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->aX()V

    return-void
.end method

.method public static b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f09040e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->ep()V

    return-void
.end method

.method private ek()V
    .locals 3

    .prologue
    .line 263
    .line 265
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->eq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const v1, 0x7f090c7f

    .line 267
    const v0, 0x7f090c7c

    .line 273
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c7b

    new-instance v2, Lcom/android/settings/de;

    invoke-direct {v2, p0}, Lcom/android/settings/de;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/dd;

    invoke-direct {v2, p0}, Lcom/android/settings/dd;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dc;

    invoke-direct {v1, p0}, Lcom/android/settings/dc;-><init>(Lcom/android/settings/MediaFormat;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 296
    return-void

    .line 269
    :cond_0
    const v1, 0x7f090484

    .line 270
    const v0, 0x7f090486

    goto :goto_0
.end method

.method private ep()V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->eq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "reboot_after_format"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    .line 237
    return-void
.end method

.method private eq()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l(I)Z
    .locals 3

    .prologue
    .line 129
    const v0, 0x7f09048b

    .line 131
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings/MediaFormat;->a(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    const v0, 0x7f09042f

    .line 138
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/ap;

    invoke-direct {v1, p0}, Lcom/android/settings/ap;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f09048a

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/ap;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    invoke-static {v1, p0}, Lcom/android/settings/MediaFormat;->b(Landroid/os/storage/StorageVolume;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const v0, 0x7f090430

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->ep()V

    goto :goto_0

    .line 158
    :cond_1
    if-nez p2, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->ek()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 308
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oi:Landroid/view/View;

    .line 309
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oj:Landroid/view/View;

    .line 310
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 313
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->ek()V

    .line 344
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 320
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oi:Landroid/view/View;

    .line 321
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oj:Landroid/view/View;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->oh:Landroid/os/storage/StorageVolume;

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->ek()V

    .line 331
    return-void
.end method
