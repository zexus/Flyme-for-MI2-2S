.class Lcom/android/settings/bS;
.super Ljava/lang/Object;
.source "DiracHeadsetAdapter.java"


# instance fields
.field final jL:Landroid/widget/ImageView;

.field final jM:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const v0, 0x7f10014d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/bS;->jL:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f10014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bS;->jM:Landroid/widget/TextView;

    .line 27
    return-void
.end method
