.class public Lcom/miui/fmradio/FmStationListFragment$ScanDialog;
.super Landroid/app/DialogFragment;
.source "FmStationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanDialog"
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 667
    const-class v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->setCancelable(Z)V

    .line 677
    if-eqz p1, :cond_0

    .line 678
    const-string v0, "com.miui.fmradio:state_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->mMessage:Ljava/lang/String;

    .line 680
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 698
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 699
    .local v0, "d":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 700
    const/4 v1, -0x1

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/fmradio/FmStationListFragment$ScanDialog$1;

    invoke-direct {v3, p0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog$1;-><init>(Lcom/miui/fmradio/FmStationListFragment$ScanDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 711
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 684
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 685
    const-string v0, "com.miui.fmradio:state_message"

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->mMessage:Ljava/lang/String;

    .line 690
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 691
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$ScanDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 694
    :cond_0
    return-void
.end method
