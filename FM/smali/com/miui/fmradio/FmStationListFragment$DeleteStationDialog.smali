.class public Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;
.super Landroid/app/DialogFragment;
.source "FmStationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteStationDialog"
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# instance fields
.field private mFrequency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    const-class v0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;

    .prologue
    .line 538
    iget v0, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->mFrequency:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 546
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 547
    if-eqz p1, :cond_0

    .line 548
    const-string v0, "com.miui.fmradio:state_freq"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->mFrequency:I

    .line 550
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 566
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    const v1, 0x104000a

    new-instance v2, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog$1;-><init>(Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 554
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 555
    const-string v0, "com.miui.fmradio:state_freq"

    iget v1, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->mFrequency:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "freq"    # I

    .prologue
    .line 559
    iput p1, p0, Lcom/miui/fmradio/FmStationListFragment$DeleteStationDialog;->mFrequency:I

    .line 560
    return-void
.end method
