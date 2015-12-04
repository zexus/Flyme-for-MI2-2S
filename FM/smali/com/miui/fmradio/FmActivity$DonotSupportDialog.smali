.class public Lcom/miui/fmradio/FmActivity$DonotSupportDialog;
.super Landroid/app/DialogFragment;
.source "FmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DonotSupportDialog"
.end annotation


# static fields
.field public static final FRAG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1059
    const-class v0, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;->FRAG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1058
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1063
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;->setCancelable(Z)V

    .line 1065
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1069
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmActivity$DonotSupportDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1070
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1071
    const v1, 0x7f0a0017

    new-instance v2, Lcom/miui/fmradio/FmActivity$DonotSupportDialog$1;

    invoke-direct {v2, p0}, Lcom/miui/fmradio/FmActivity$DonotSupportDialog$1;-><init>(Lcom/miui/fmradio/FmActivity$DonotSupportDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1077
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
