.class Lcom/android/settings_ext/dndmode/r;
.super Landroid/database/ContentObserver;
.source "QuietActivity.java"


# instance fields
.field final synthetic Xb:Lcom/android/settings_ext/dndmode/q;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/dndmode/q;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings_ext/dndmode/r;->Xb:Lcom/android/settings_ext/dndmode/q;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/r;->Xb:Lcom/android/settings_ext/dndmode/q;

    invoke-static {v0}, Lcom/android/settings_ext/dndmode/q;->a(Lcom/android/settings_ext/dndmode/q;)Lmiui/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/settings_ext/dndmode/r;->Xb:Lcom/android/settings_ext/dndmode/q;

    invoke-static {v1, v0}, Lcom/android/settings_ext/dndmode/q;->a(Lcom/android/settings_ext/dndmode/q;I)V

    .line 48
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 49
    return-void
.end method
