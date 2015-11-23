.class Lcom/android/settings/display/u;
.super Ljava/lang/Object;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic VA:Z

.field final synthetic VB:Lcom/android/settings/display/t;


# direct methods
.method constructor <init>(Lcom/android/settings/display/t;Z)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    iput-boolean p2, p0, Lcom/android/settings/display/u;->VA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/android/settings/display/u;->VA:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    invoke-virtual {v0}, Lcom/android/settings/display/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    invoke-static {v1}, Lcom/android/settings/display/t;->a(Lcom/android/settings/display/t;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/PageLayoutFragment;->b(Landroid/app/Activity;I)V

    .line 654
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    invoke-virtual {v0}, Lcom/android/settings/display/t;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    invoke-static {v1}, Lcom/android/settings/display/t;->a(Lcom/android/settings/display/t;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/display/n;->e(Landroid/content/Context;I)Z

    .line 650
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->clearCustomizedIcons(Ljava/lang/String;)V

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/android/settings/display/u;->VB:Lcom/android/settings/display/t;

    invoke-virtual {v1, v0}, Lcom/android/settings/display/t;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
