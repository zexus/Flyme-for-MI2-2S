.class Lcom/android/settings/gm;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xh:Lcom/android/settings/gh;


# direct methods
.method constructor <init>(Lcom/android/settings/gh;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/android/settings/gm;->xh:Lcom/android/settings/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/settings/gm;->xh:Lcom/android/settings/gh;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/gm;->xh:Lcom/android/settings/gh;

    invoke-virtual {v2}, Lcom/android/settings/gh;->gP()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gh;->setResult(ILandroid/content/Intent;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/gm;->xh:Lcom/android/settings/gh;

    invoke-virtual {v0}, Lcom/android/settings/gh;->finish()V

    .line 662
    return-void
.end method
