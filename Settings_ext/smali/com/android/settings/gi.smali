.class Lcom/android/settings/gi;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActivity.java"


# instance fields
.field final synthetic xh:Lcom/android/settings/gh;


# direct methods
.method constructor <init>(Lcom/android/settings/gh;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings/gi;->xh:Lcom/android/settings/gh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p2}, Lcom/android/settings/hl;->m(Landroid/content/Intent;)Z

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/android/settings/gi;->xh:Lcom/android/settings/gh;

    invoke-static {v1}, Lcom/android/settings/gh;->a(Lcom/android/settings/gh;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/settings/gi;->xh:Lcom/android/settings/gh;

    invoke-static {v1, v0}, Lcom/android/settings/gh;->a(Lcom/android/settings/gh;Z)Z

    .line 329
    iget-object v0, p0, Lcom/android/settings/gi;->xh:Lcom/android/settings/gh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/gh;->b(Lcom/android/settings/gh;Z)V

    .line 332
    :cond_0
    return-void
.end method
