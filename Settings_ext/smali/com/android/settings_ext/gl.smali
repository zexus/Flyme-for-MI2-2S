.class Lcom/android/settings_ext/gl;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic xh:Lcom/android/settings_ext/gh;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/gh;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/settings_ext/gl;->xh:Lcom/android/settings_ext/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/settings_ext/gl;->xh:Lcom/android/settings_ext/gh;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings_ext/gl;->xh:Lcom/android/settings_ext/gh;

    invoke-virtual {v2}, Lcom/android/settings_ext/gh;->gP()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/gh;->setResult(ILandroid/content/Intent;)V

    .line 654
    iget-object v0, p0, Lcom/android/settings_ext/gl;->xh:Lcom/android/settings_ext/gh;

    invoke-virtual {v0}, Lcom/android/settings_ext/gh;->finish()V

    .line 655
    return-void
.end method
