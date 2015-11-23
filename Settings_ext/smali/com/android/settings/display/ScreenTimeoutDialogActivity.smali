.class public Lcom/android/settings/display/ScreenTimeoutDialogActivity;
.super Landroid/app/Activity;
.source "ScreenTimeoutDialogActivity.java"


# instance fields
.field private Wd:[Ljava/lang/CharSequence;

.field private We:[Ljava/lang/CharSequence;

.field private Wf:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private fo()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 39
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 41
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    move-wide v2, v0

    .line 42
    :goto_0
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 63
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v2, v4

    .line 41
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wd:[Ljava/lang/CharSequence;

    .line 46
    iget-object v4, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const/4 v0, 0x0

    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_4

    .line 50
    aget-object v7, v4, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 51
    cmp-long v7, v8, v2

    if-gtz v7, :cond_3

    .line 52
    aget-object v7, v1, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_0

    .line 57
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wd:[Ljava/lang/CharSequence;

    .line 58
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    .line 59
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wf:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 60
    iput-wide v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wf:J

    goto :goto_1
.end method

.method private oM()V
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wf:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    const v2, 0x7f090398

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wd:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/display/H;

    invoke-direct {v3, p0}, Lcom/android/settings/display/H;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    const/high16 v0, 0x1040000

    new-instance v2, Lcom/android/settings/display/I;

    invoke-direct {v2, p0}, Lcom/android/settings/display/I;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    new-instance v0, Lcom/android/settings/display/J;

    invoke-direct {v0, p0}, Lcom/android/settings/display/J;-><init>(Lcom/android/settings/display/ScreenTimeoutDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 104
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_1
    return v0

    .line 105
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wd:[Ljava/lang/CharSequence;

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->We:[Ljava/lang/CharSequence;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->Wf:J

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->fo()V

    .line 35
    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutDialogActivity;->oM()V

    .line 36
    return-void
.end method
