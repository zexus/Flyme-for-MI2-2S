.class Lcom/android/settings/eT;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAppListSettings.java"


# instance fields
.field final synthetic th:Lcom/android/settings/NotificationAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/eT;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/eT;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v0}, Lcom/android/settings/NotificationAppListSettings;->a(Lcom/android/settings/NotificationAppListSettings;)V

    .line 138
    return-void
.end method
