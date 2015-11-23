.class public Lcom/android/settings_ext/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field cI:Landroid/app/admin/DevicePolicyManager;

.field df:Landroid/widget/Button;

.field iY:Landroid/app/admin/DeviceAdminInfo;

.field iZ:Ljava/lang/CharSequence;

.field ja:Ljava/lang/String;

.field jb:Landroid/widget/ImageView;

.field jc:Landroid/widget/TextView;

.field jd:Landroid/widget/TextView;

.field je:Landroid/widget/TextView;

.field jf:Landroid/widget/TextView;

.field jg:Landroid/widget/ImageView;

.field jh:Z

.field ji:Landroid/widget/TextView;

.field jj:Landroid/view/ViewGroup;

.field jk:Landroid/widget/Button;

.field final jl:Ljava/util/ArrayList;

.field final jm:Ljava/util/ArrayList;

.field jn:Z

.field jo:Z

.field jp:Z

.field jq:Z

.field jr:I

.field js:I

.field mAppOps:Landroid/app/AppOpsManager;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jl:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jm:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 412
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 483
    check-cast p1, Landroid/widget/TextView;

    .line 485
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    .line 486
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 487
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->cS()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 489
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jg:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jh:Z

    if-eqz v0, :cond_3

    const v0, 0x1102009a

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 495
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 487
    :cond_2
    const/16 v0, 0xf

    goto :goto_2

    .line 489
    :cond_3
    const v0, 0x1102009b

    goto :goto_3
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jp:Z

    if-nez v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jp:Z

    .line 335
    if-nez p1, :cond_1

    .line 337
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 345
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 351
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_2

    .line 338
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method cQ()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jo:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 307
    const v0, 0x16059

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 309
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    if-eqz v0, :cond_1

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->ja:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    .line 328
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 313
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to activate admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method cR()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jb:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jd:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jf:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iZ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iZ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jo:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 441
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 442
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 443
    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, ""

    invoke-static {p0, v0, v4, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 445
    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jm:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jj:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 441
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jd:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jm:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 450
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jl:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->ji:Landroid/widget/TextView;

    const v1, 0x7f0907ad

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ext/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const v0, 0x7f0907a1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jk:Landroid/widget/Button;

    const v1, 0x7f0907a2

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iput-boolean v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jn:Z

    .line 479
    :goto_3
    return-void

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 459
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 460
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 461
    iget v4, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v4}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v4, v0, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 463
    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jl:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jj:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 467
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jl:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jm:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->ji:Landroid/widget/TextView;

    const v1, 0x7f0907ac

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ext/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    if-eqz v0, :cond_5

    .line 472
    const v0, 0x7f0907ae

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    :goto_5
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jk:Landroid/widget/Button;

    const v1, 0x7f0907aa

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iput-boolean v6, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jn:Z

    goto :goto_3

    .line 474
    :cond_5
    const v0, 0x7f0907a9

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method cS()I
    .locals 2

    .prologue
    .line 498
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 107
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    .line 108
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "DeviceAdminAdd"

    const-string v1, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    .line 302
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 120
    if-nez v0, :cond_1

    .line 121
    const-string v0, "DeviceAdminAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No component specified in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v2, :cond_4

    const-string v5, "android.app.action.SET_PROFILE_OWNER"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/settings_ext/DeviceAdminAdd;->setResult(I)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 129
    iput-boolean v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->ja:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 134
    :cond_2
    const-string v0, "DeviceAdminAdd"

    const-string v1, "Unknown or incorrect caller"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 139
    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 140
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_4

    .line 141
    const-string v0, "DeviceAdminAdd"

    const-string v1, "Cannot set a non-system app as a profile owner"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v0, "DeviceAdminAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find the package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 154
    :cond_4
    const/16 v2, 0x80

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 164
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 165
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v5, 0x8000

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 168
    if-nez v7, :cond_5

    move v2, v3

    :goto_1
    move v5, v3

    .line 170
    :goto_2
    if-ge v5, v2, :cond_c

    .line 171
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 172
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 177
    :try_start_2
    iput-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 178
    new-instance v2, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v2, p0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v1, v4

    .line 188
    :goto_3
    if-nez v1, :cond_7

    .line 189
    const-string v1, "DeviceAdminAdd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to add invalid device admin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v1

    .line 156
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 168
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    goto :goto_1

    .line 180
    :catch_2
    move-exception v2

    .line 181
    const-string v5, "DeviceAdminAdd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 184
    goto :goto_3

    .line 182
    :catch_3
    move-exception v2

    .line 183
    const-string v5, "DeviceAdminAdd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 185
    goto :goto_3

    .line 170
    :cond_6
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    .line 195
    :cond_7
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 196
    iput-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 198
    :try_start_3
    new-instance v2, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v2, p0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 212
    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 213
    iput-boolean v3, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jo:Z

    .line 214
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 215
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v2

    .line 216
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 217
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 218
    iget-object v5, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    iget v1, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v5, v0, v1}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 219
    iput-boolean v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jo:Z

    .line 223
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jo:Z

    if-nez v0, :cond_a

    .line 225
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 199
    :catch_4
    move-exception v1

    .line 200
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 203
    :catch_5
    move-exception v1

    .line 204
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 216
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 234
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jq:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->cI:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0

    if-nez v0, :cond_b

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->cQ()V

    goto/16 :goto_0

    .line 239
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iZ:Ljava/lang/CharSequence;

    .line 241
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->setContentView(I)V

    .line 243
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jb:Landroid/widget/ImageView;

    .line 244
    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jc:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jd:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f1000ab

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jf:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f1000ae

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f1000ad

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jg:Landroid/widget/ImageView;

    .line 250
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings_ext/bC;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/bC;-><init>(Lcom/android/settings_ext/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->je:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->a(Landroid/view/View;)V

    .line 259
    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->ji:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jj:Landroid/view/ViewGroup;

    .line 261
    const v0, 0x7f1000b3

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->df:Landroid/widget/Button;

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->df:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/bD;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/bD;-><init>(Lcom/android/settings_ext/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v0, 0x7f1000b4

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jk:Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jk:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/bE;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/bE;-><init>(Lcom/android/settings_ext/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto/16 :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 387
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    const v0, 0x7f09054e

    new-instance v2, Lcom/android/settings_ext/bG;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/bG;-><init>(Lcom/android/settings_ext/DeviceAdminAdd;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    const v0, 0x7f09054f

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 373
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 374
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jr:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 375
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x3c

    iget v4, p0, Lcom/android/settings_ext/DeviceAdminAdd;->js:I

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 377
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x3c

    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceAdminAdd;->cR()V

    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 361
    iget-object v1, p0, Lcom/android/settings_ext/DeviceAdminAdd;->iY:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->jr:I

    .line 363
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v0, v1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->js:I

    .line 364
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 365
    iget-object v2, p0, Lcom/android/settings_ext/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 366
    return-void
.end method
