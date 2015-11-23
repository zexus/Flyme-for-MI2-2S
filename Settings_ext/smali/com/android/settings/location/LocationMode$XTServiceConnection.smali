.class Lcom/android/settings/location/LocationMode$XTServiceConnection;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic acC:Lcom/android/settings/location/LocationMode;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/LocationMode;Lcom/android/settings/location/LocationMode$1;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings/location/LocationMode;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {p2}, Lcom/android/a/a/b;->a(Landroid/os/IBinder;)Lcom/android/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/LocationMode;Lcom/android/a/a/a;)Lcom/android/a/a/a;

    .line 128
    const-string v0, "LocationMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v2}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/a/a/a;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/a/a/a;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v2}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v2}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;

    move-result-object v0

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/location/WrappingIZatSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->d(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/a/a/a;->a(Lcom/android/a/a/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v0, "LocationMode"

    const-string v1, "Failed connecting service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v0}, Lcom/android/settings/location/LocationMode;->c(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    invoke-static {v1}, Lcom/android/settings/location/LocationMode;->d(Lcom/android/settings/location/LocationMode;)Lcom/android/a/a/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/a/a/a;->b(Lcom/android/a/a/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$XTServiceConnection;->acC:Lcom/android/settings/location/LocationMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/location/LocationMode;->a(Lcom/android/settings/location/LocationMode;Lcom/android/a/a/a;)Lcom/android/a/a/a;

    .line 157
    :cond_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
