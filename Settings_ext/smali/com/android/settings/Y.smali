.class Lcom/android/settings_ext/Y;
.super Landroid/content/BroadcastReceiver;
.source "BasePreferenceFragment.java"


# instance fields
.field final synthetic bZ:Lcom/android/settings_ext/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/BasePreferenceFragment;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings_ext/Y;->bZ:Lcom/android/settings_ext/BasePreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/Y;->bZ:Lcom/android/settings_ext/BasePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/BasePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/eD;

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/android/settings_ext/eD;->notifyDataSetChanged()V

    .line 166
    :cond_1
    return-void
.end method
