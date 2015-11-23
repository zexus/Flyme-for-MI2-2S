.class public Lcom/android/settings/display/t;
.super Landroid/app/DialogFragment;
.source "PageLayoutFragment.java"


# static fields
.field private static final Vy:Ljava/lang/String;


# instance fields
.field private Vz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 612
    const-class v0, Lcom/android/settings/display/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/t;->Vy:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/t;)I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/android/settings/display/t;->Vz:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/android/settings/display/t;->Vy:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bw(I)V
    .locals 0

    .prologue
    .line 632
    iput p1, p0, Lcom/android/settings/display/t;->Vz:I

    .line 633
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 620
    if-eqz p1, :cond_0

    .line 621
    const-string v0, "com.android.settings.display.PageLayoutFragment:STATE_UI_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/t;->Vz:I

    .line 623
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/settings/display/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/PageLayoutFragment;->aH(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 638
    :goto_0
    new-instance v2, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/display/t;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    const v1, 0x7f090db4

    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    .line 640
    if-eqz v0, :cond_1

    const v1, 0x7f090db6

    :goto_1
    invoke-virtual {v2, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    .line 642
    const v1, 0x104000a

    new-instance v3, Lcom/android/settings/display/u;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/display/u;-><init>(Lcom/android/settings/display/t;Z)V

    invoke-virtual {v2, v1, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 656
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 640
    :cond_1
    const v1, 0x7f090db5

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 627
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 628
    const-string v0, "com.android.settings.display.PageLayoutFragment:STATE_UI_MODE"

    iget v1, p0, Lcom/android/settings/display/t;->Vz:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    return-void
.end method
