.class Lcom/android/settings_ext/hp;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zX:Lcom/android/settings_ext/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/WirelessSettings;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ext/hp;->zX:Lcom/android/settings_ext/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/hp;->zX:Lcom/android/settings_ext/WirelessSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MANAGE_MOBILE_PLAN_DIALOG.onClickListener id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->a(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ext/hp;->zX:Lcom/android/settings_ext/WirelessSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/WirelessSettings;->b(Lcom/android/settings_ext/WirelessSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    return-void
.end method
